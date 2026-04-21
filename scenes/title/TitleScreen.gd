extends Control

const CONFIG_PATH := "res://data/ui/title_screen_config.json"
const UI_PANEL_TEXTURE_PATH := "res://assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panel_brown.png"
const UI_INSET_TEXTURE_PATH := "res://assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panelInset_brown.png"
const UI_BUTTON_TEXTURE_PATH := "res://assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_brown.png"
const UI_BUTTON_PRESSED_TEXTURE_PATH := "res://assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_brown_pressed.png"
const UI_BUTTON_DISABLED_TEXTURE_PATH := "res://assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_grey.png"

const DEFAULT_CONFIG := {
	"title": "Tales from Ulcantron",
	"subtitle": "Purity Wars",
	"footer": "Begin in Frontier Hamlet. Continue if a save exists, or start a new journey.",
	"music_cue": AudioManager.CUE_VICTORY_EXIT,
	"asset_slots": {
		"background": "",
		"logo": "",
		"emblem": "",
		"overlay": "",
	},
	"ui_slots": {
		"panel": "",
		"inset": "",
		"button": "",
		"button_pressed": "",
	},
}

var _config: Dictionary = {}
var _panel_texture: Texture2D
var _inset_texture: Texture2D
var _button_texture: Texture2D
var _button_pressed_texture: Texture2D
var _button_disabled_texture: Texture2D
var _background_texture: Texture2D
var _logo_texture: Texture2D
var _emblem_texture: Texture2D
var _overlay_texture: Texture2D
var _transition_locked := false

var _background_rect: TextureRect
var _sky_band: ColorRect
var _fog_band: ColorRect
var _ground_band: ColorRect
var _overlay_rect: TextureRect
var _frame: PanelContainer
var _hero_row: HBoxContainer
var _logo_rect: TextureRect
var _title_label: Label
var _subtitle_label: Label
var _emblem_panel: PanelContainer
var _emblem_rect: TextureRect
var _emblem_placeholder: Label
var _continue_button: Button
var _new_game_button: Button
var _quit_button: Button
var _footer_label: Label
var _status_label: Label
var _modal_scrim: ColorRect
var _modal_center: CenterContainer
var _overwrite_panel: PanelContainer
var _overwrite_confirm_button: Button
var _overwrite_cancel_button: Button

func _ready() -> void:
	set_anchors_preset(Control.PRESET_FULL_RECT)
	mouse_filter = Control.MOUSE_FILTER_STOP

	_config = _load_title_config()
	_load_ui_textures()
	_build_ui()
	_apply_asset_slots()
	_refresh_actions()
	_layout_for_viewport()

	if not get_viewport().size_changed.is_connected(_on_viewport_size_changed):
		get_viewport().size_changed.connect(_on_viewport_size_changed)

	var screen_fader = SceneManager.get_screen_fader()
	if screen_fader != null:
		screen_fader.clear_immediately()

	AudioManager.play_music(str(_config.get("music_cue", AudioManager.CUE_VICTORY_EXIT)))

func _unhandled_input(event: InputEvent) -> void:
	if _overwrite_panel.visible and event.is_action_pressed("ui_cancel"):
		get_viewport().set_input_as_handled()
		_hide_overwrite_panel()

func _on_viewport_size_changed() -> void:
	_layout_for_viewport()

func _build_ui() -> void:
	_background_rect = TextureRect.new()
	_background_rect.set_anchors_preset(Control.PRESET_FULL_RECT)
	_background_rect.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	_background_rect.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_COVERED
	_background_rect.mouse_filter = Control.MOUSE_FILTER_IGNORE
	add_child(_background_rect)

	_sky_band = ColorRect.new()
	_sky_band.mouse_filter = Control.MOUSE_FILTER_IGNORE
	_sky_band.color = Color(0.10, 0.11, 0.16, 1.0)
	add_child(_sky_band)

	_fog_band = ColorRect.new()
	_fog_band.mouse_filter = Control.MOUSE_FILTER_IGNORE
	_fog_band.color = Color(0.20, 0.19, 0.23, 0.54)
	add_child(_fog_band)

	_ground_band = ColorRect.new()
	_ground_band.mouse_filter = Control.MOUSE_FILTER_IGNORE
	_ground_band.color = Color(0.17, 0.13, 0.10, 0.96)
	add_child(_ground_band)

	_overlay_rect = TextureRect.new()
	_overlay_rect.set_anchors_preset(Control.PRESET_FULL_RECT)
	_overlay_rect.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	_overlay_rect.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_COVERED
	_overlay_rect.mouse_filter = Control.MOUSE_FILTER_IGNORE
	_overlay_rect.visible = false
	add_child(_overlay_rect)

	var center := CenterContainer.new()
	center.set_anchors_preset(Control.PRESET_FULL_RECT)
	center.mouse_filter = Control.MOUSE_FILTER_IGNORE
	add_child(center)

	_frame = PanelContainer.new()
	_frame.mouse_filter = Control.MOUSE_FILTER_IGNORE
	_frame.add_theme_stylebox_override("panel", _make_panel_style(_panel_texture))
	center.add_child(_frame)

	var frame_margin := MarginContainer.new()
	frame_margin.add_theme_constant_override("margin_left", 14)
	frame_margin.add_theme_constant_override("margin_top", 12)
	frame_margin.add_theme_constant_override("margin_right", 14)
	frame_margin.add_theme_constant_override("margin_bottom", 12)
	_frame.add_child(frame_margin)

	var content := VBoxContainer.new()
	content.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	content.size_flags_vertical = Control.SIZE_EXPAND_FILL
	content.add_theme_constant_override("separation", 12)
	frame_margin.add_child(content)

	_hero_row = HBoxContainer.new()
	_hero_row.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	_hero_row.add_theme_constant_override("separation", 12)
	content.add_child(_hero_row)

	var title_column := VBoxContainer.new()
	title_column.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	title_column.add_theme_constant_override("separation", 6)
	_hero_row.add_child(title_column)

	_logo_rect = TextureRect.new()
	_logo_rect.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	_logo_rect.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	_logo_rect.custom_minimum_size = Vector2(0.0, 94.0)
	title_column.add_child(_logo_rect)

	_title_label = Label.new()
	_title_label.text = str(_config.get("title", DEFAULT_CONFIG["title"]))
	_title_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	_title_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	title_column.add_child(_title_label)

	_subtitle_label = Label.new()
	_subtitle_label.text = str(_config.get("subtitle", DEFAULT_CONFIG["subtitle"]))
	_subtitle_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	_subtitle_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	_subtitle_label.modulate = Color(0.88, 0.82, 0.70, 1.0)
	title_column.add_child(_subtitle_label)

	_emblem_panel = PanelContainer.new()
	_emblem_panel.custom_minimum_size = Vector2(120.0, 120.0)
	_emblem_panel.add_theme_stylebox_override("panel", _make_inset_style(_inset_texture))
	_hero_row.add_child(_emblem_panel)

	var emblem_margin := MarginContainer.new()
	emblem_margin.set_anchors_preset(Control.PRESET_FULL_RECT)
	emblem_margin.add_theme_constant_override("margin_left", 8)
	emblem_margin.add_theme_constant_override("margin_top", 8)
	emblem_margin.add_theme_constant_override("margin_right", 8)
	emblem_margin.add_theme_constant_override("margin_bottom", 8)
	_emblem_panel.add_child(emblem_margin)

	var emblem_stack := VBoxContainer.new()
	emblem_stack.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	emblem_stack.size_flags_vertical = Control.SIZE_EXPAND_FILL
	emblem_stack.alignment = BoxContainer.ALIGNMENT_CENTER
	emblem_stack.add_theme_constant_override("separation", 4)
	emblem_margin.add_child(emblem_stack)

	_emblem_rect = TextureRect.new()
	_emblem_rect.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	_emblem_rect.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
	_emblem_rect.custom_minimum_size = Vector2(78.0, 78.0)
	emblem_stack.add_child(_emblem_rect)

	_emblem_placeholder = Label.new()
	_emblem_placeholder.text = "Future emblem\nor feature art"
	_emblem_placeholder.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	_emblem_placeholder.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	_emblem_placeholder.modulate = Color(0.86, 0.78, 0.67, 0.92)
	emblem_stack.add_child(_emblem_placeholder)

	var actions_panel := PanelContainer.new()
	actions_panel.add_theme_stylebox_override("panel", _make_inset_style(_inset_texture))
	content.add_child(actions_panel)

	var actions_margin := MarginContainer.new()
	actions_margin.add_theme_constant_override("margin_left", 10)
	actions_margin.add_theme_constant_override("margin_top", 10)
	actions_margin.add_theme_constant_override("margin_right", 10)
	actions_margin.add_theme_constant_override("margin_bottom", 10)
	actions_panel.add_child(actions_margin)

	var actions := VBoxContainer.new()
	actions.size_flags_horizontal = Control.SIZE_EXPAND_FILL
	actions.add_theme_constant_override("separation", 6)
	actions_margin.add_child(actions)

	_continue_button = _create_action_button("Continue")
	_continue_button.pressed.connect(_on_continue_pressed)
	actions.add_child(_continue_button)

	_new_game_button = _create_action_button("New Game")
	_new_game_button.pressed.connect(_on_new_game_pressed)
	actions.add_child(_new_game_button)

	_quit_button = _create_action_button("Quit")
	_quit_button.pressed.connect(_on_quit_pressed)
	actions.add_child(_quit_button)

	_footer_label = Label.new()
	_footer_label.text = str(_config.get("footer", DEFAULT_CONFIG["footer"]))
	_footer_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	_footer_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	_footer_label.modulate = Color(0.93, 0.90, 0.84, 0.9)
	content.add_child(_footer_label)

	_status_label = Label.new()
	_status_label.visible = false
	_status_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	_status_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	_status_label.modulate = Color(0.96, 0.78, 0.72, 1.0)
	content.add_child(_status_label)

	_modal_scrim = ColorRect.new()
	_modal_scrim.set_anchors_preset(Control.PRESET_FULL_RECT)
	_modal_scrim.visible = false
	_modal_scrim.color = Color(0.04, 0.04, 0.05, 0.72)
	_modal_scrim.mouse_filter = Control.MOUSE_FILTER_STOP
	add_child(_modal_scrim)

	_modal_center = CenterContainer.new()
	_modal_center.set_anchors_preset(Control.PRESET_FULL_RECT)
	_modal_center.visible = false
	_modal_center.mouse_filter = Control.MOUSE_FILTER_IGNORE
	add_child(_modal_center)

	_overwrite_panel = PanelContainer.new()
	_overwrite_panel.visible = false
	_overwrite_panel.mouse_filter = Control.MOUSE_FILTER_STOP
	_overwrite_panel.add_theme_stylebox_override("panel", _make_panel_style(_panel_texture))
	_modal_center.add_child(_overwrite_panel)

	var overwrite_margin := MarginContainer.new()
	overwrite_margin.add_theme_constant_override("margin_left", 14)
	overwrite_margin.add_theme_constant_override("margin_top", 12)
	overwrite_margin.add_theme_constant_override("margin_right", 14)
	overwrite_margin.add_theme_constant_override("margin_bottom", 12)
	_overwrite_panel.add_child(overwrite_margin)

	var overwrite_content := VBoxContainer.new()
	overwrite_content.add_theme_constant_override("separation", 8)
	overwrite_margin.add_child(overwrite_content)

	var overwrite_title := Label.new()
	overwrite_title.text = "Overwrite Existing Save?"
	overwrite_title.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	overwrite_content.add_child(overwrite_title)

	var overwrite_body := Label.new()
	overwrite_body.text = "Starting a new game will replace the current save with a fresh Frontier Hamlet run."
	overwrite_body.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART
	overwrite_body.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	overwrite_content.add_child(overwrite_body)

	var overwrite_actions := HBoxContainer.new()
	overwrite_actions.alignment = BoxContainer.ALIGNMENT_CENTER
	overwrite_actions.add_theme_constant_override("separation", 8)
	overwrite_content.add_child(overwrite_actions)

	_overwrite_cancel_button = _create_action_button("Cancel")
	_overwrite_cancel_button.pressed.connect(_on_overwrite_cancel_pressed)
	overwrite_actions.add_child(_overwrite_cancel_button)

	_overwrite_confirm_button = _create_action_button("Overwrite")
	_overwrite_confirm_button.pressed.connect(_on_overwrite_confirm_pressed)
	overwrite_actions.add_child(_overwrite_confirm_button)

func _load_ui_textures() -> void:
	var ui_slots: Dictionary = _config.get("ui_slots", {})
	_panel_texture = _load_texture_if_exists(str(ui_slots.get("panel", "")))
	_inset_texture = _load_texture_if_exists(str(ui_slots.get("inset", "")))
	_button_texture = _load_texture_if_exists(str(ui_slots.get("button", "")))
	_button_pressed_texture = _load_texture_if_exists(str(ui_slots.get("button_pressed", "")))
	_button_disabled_texture = null

func _load_title_config() -> Dictionary:
	var config := DEFAULT_CONFIG.duplicate(true)
	var file := FileAccess.open(CONFIG_PATH, FileAccess.READ)
	if file == null:
		return config

	var json := JSON.new()
	if json.parse(file.get_as_text()) != OK:
		return config
	if not (json.data is Dictionary):
		return config

	var root: Dictionary = json.data
	config["title"] = str(root.get("title", config["title"]))
	config["subtitle"] = str(root.get("subtitle", config["subtitle"]))
	config["footer"] = str(root.get("footer", config["footer"]))
	config["music_cue"] = str(root.get("music_cue", config["music_cue"]))

	var asset_slots: Dictionary = config.get("asset_slots", {}).duplicate(true)
	var incoming_slots: Dictionary = {}
	var incoming_slots_value: Variant = root.get("asset_slots", {})
	if incoming_slots_value is Dictionary:
		incoming_slots = incoming_slots_value
		for slot_name in ["background", "logo", "emblem", "overlay"]:
			asset_slots[slot_name] = str(incoming_slots.get(slot_name, asset_slots.get(slot_name, "")))
	config["asset_slots"] = asset_slots

	var ui_slots: Dictionary = config.get("ui_slots", {}).duplicate(true)
	var incoming_ui_slots: Dictionary = {}
	var incoming_ui_slots_value: Variant = root.get("ui_slots", {})
	if incoming_ui_slots_value is Dictionary:
		incoming_ui_slots = incoming_ui_slots_value
		for slot_name in ["panel", "inset", "button", "button_pressed"]:
			ui_slots[slot_name] = str(incoming_ui_slots.get(slot_name, ui_slots.get(slot_name, "")))
	config["ui_slots"] = ui_slots
	return config

func _apply_asset_slots() -> void:
	var asset_slots: Dictionary = _config.get("asset_slots", {})
	_background_texture = _load_texture_if_exists(str(asset_slots.get("background", "")))
	_logo_texture = _load_texture_if_exists(str(asset_slots.get("logo", "")))
	_emblem_texture = _load_texture_if_exists(str(asset_slots.get("emblem", "")))
	_overlay_texture = _load_texture_if_exists(str(asset_slots.get("overlay", "")))

	_background_rect.texture = _background_texture
	_background_rect.visible = _background_texture != null

	_logo_rect.texture = _logo_texture
	_logo_rect.visible = _logo_texture != null

	_emblem_rect.texture = _emblem_texture
	_emblem_rect.visible = _emblem_texture != null
	_emblem_placeholder.visible = false
	_emblem_panel.visible = _emblem_texture != null

	_overlay_rect.texture = _overlay_texture
	_overlay_rect.visible = _overlay_texture != null
	_update_background_layer_treatment()

func _update_background_layer_treatment() -> void:
	var has_background := _background_texture != null
	if has_background:
		_sky_band.color = Color(0.07, 0.08, 0.10, 0.18)
		_fog_band.color = Color(0.25, 0.24, 0.28, 0.24)
		_ground_band.color = Color(0.14, 0.11, 0.09, 0.32)
	else:
		_sky_band.color = Color(0.10, 0.11, 0.16, 1.0)
		_fog_band.color = Color(0.20, 0.19, 0.23, 0.54)
		_ground_band.color = Color(0.17, 0.13, 0.10, 0.96)

func _refresh_actions() -> void:
	_continue_button.visible = SaveManager.has_save()
	_hide_status()
	_set_action_buttons_disabled(false)
	_transition_locked = false
	if _continue_button.visible:
		_continue_button.grab_focus()
	else:
		_new_game_button.grab_focus()

func _layout_for_viewport() -> void:
	var viewport_size := get_viewport_rect().size
	var compact_layout := viewport_size.x <= 640.0 or viewport_size.y <= 360.0
	var frame_width := clampf(viewport_size.x - (24.0 if compact_layout else 64.0), 308.0, 420.0 if compact_layout else 560.0)
	var frame_height := clampf(viewport_size.y - (24.0 if compact_layout else 60.0), 220.0, 250.0 if compact_layout else 336.0)
	_frame.custom_minimum_size = Vector2(frame_width, frame_height)
	_overwrite_panel.custom_minimum_size = Vector2(clampf(frame_width * 0.74, 240.0, 360.0), 0.0)

	_sky_band.anchor_right = 1.0
	_sky_band.anchor_bottom = 0.58
	_fog_band.anchor_right = 1.0
	_fog_band.anchor_top = 0.22
	_fog_band.anchor_bottom = 0.74
	_ground_band.anchor_right = 1.0
	_ground_band.anchor_top = 0.68
	_ground_band.anchor_bottom = 1.0

	_title_label.add_theme_font_size_override("font_size", 22 if compact_layout else 30)
	_subtitle_label.add_theme_font_size_override("font_size", 12 if compact_layout else 16)
	_footer_label.add_theme_font_size_override("font_size", 8 if compact_layout else 9)
	_status_label.add_theme_font_size_override("font_size", 8 if compact_layout else 9)
	_logo_rect.custom_minimum_size = Vector2(0.0, 82.0 if compact_layout else 106.0)
	_emblem_panel.custom_minimum_size = Vector2(96.0 if compact_layout else 124.0, 104.0 if compact_layout else 132.0)
	_emblem_rect.custom_minimum_size = Vector2(64.0 if compact_layout else 84.0, 64.0 if compact_layout else 84.0)

	for button in [_continue_button, _new_game_button, _quit_button, _overwrite_cancel_button, _overwrite_confirm_button]:
		button.custom_minimum_size = Vector2(0.0, 24.0 if compact_layout else 30.0)
		button.add_theme_font_size_override("font_size", 8 if compact_layout else 10)

func _on_continue_pressed() -> void:
	if _transition_locked:
		return
	await _run_transition(Callable(self, "_continue_game"))

func _on_new_game_pressed() -> void:
	if _transition_locked:
		return
	if SaveManager.has_save():
		_show_overwrite_panel()
		return
	await _run_transition(Callable(self, "_start_new_game"))

func _on_quit_pressed() -> void:
	if _transition_locked:
		return
	AudioManager.play_sfx(AudioManager.SFX_UI_CANCEL, -6.0)
	get_tree().quit()

func _on_overwrite_confirm_pressed() -> void:
	if _transition_locked:
		return
	_hide_overwrite_panel()
	await _run_transition(Callable(self, "_start_new_game"))

func _on_overwrite_cancel_pressed() -> void:
	_hide_overwrite_panel()

func _continue_game() -> bool:
	var loaded := SaveManager.load_game()
	if not loaded:
		_show_status("Continue failed. The save could not be loaded.")
	return loaded

func _start_new_game() -> bool:
	var started := SaveManager.start_new_game()
	if not started:
		_show_status("New Game failed to start.")
	return started

func _run_transition(action: Callable) -> void:
	_transition_locked = true
	_set_action_buttons_disabled(true)
	_hide_status()
	AudioManager.play_sfx(AudioManager.SFX_UI_CONFIRM, -5.0)

	var screen_fader = SceneManager.get_screen_fader()
	if screen_fader != null:
		var tween: Tween = screen_fader.fade_to_black(0.25)
		if tween != null:
			await tween.finished

	var completed := bool(action.call())
	if completed:
		return

	if screen_fader != null:
		screen_fader.fade_from_black(0.18)
	_transition_locked = false
	_set_action_buttons_disabled(false)
	_refresh_actions()

func _show_overwrite_panel() -> void:
	_modal_scrim.visible = true
	_modal_center.visible = true
	_overwrite_panel.visible = true
	_overwrite_cancel_button.grab_focus()

func _hide_overwrite_panel() -> void:
	_modal_scrim.visible = false
	_modal_center.visible = false
	_overwrite_panel.visible = false
	if _continue_button.visible:
		_continue_button.grab_focus()
	else:
		_new_game_button.grab_focus()

func _show_status(message: String) -> void:
	_status_label.text = message
	_status_label.visible = message != ""

func _hide_status() -> void:
	_status_label.text = ""
	_status_label.visible = false

func _set_action_buttons_disabled(disabled: bool) -> void:
	for button in [_continue_button, _new_game_button, _quit_button, _overwrite_cancel_button, _overwrite_confirm_button]:
		button.disabled = disabled

func _create_action_button(button_text: String) -> Button:
	var button := Button.new()
	button.text = button_text
	button.focus_mode = Control.FOCUS_ALL
	_apply_button_style(button)
	return button

func _load_texture_if_exists(resource_path: String) -> Texture2D:
	if resource_path == "":
		return null
	return _load_texture(resource_path)

func _load_texture(resource_path: String) -> Texture2D:
	if ResourceLoader.exists(resource_path, "Texture2D") or ResourceLoader.exists(resource_path):
		var texture := load(resource_path)
		if texture is Texture2D:
			return texture as Texture2D

	var image := Image.load_from_file(ProjectSettings.globalize_path(resource_path))
	if image == null or image.is_empty():
		return null
	return ImageTexture.create_from_image(image)

func _apply_button_style(button: Button) -> void:
	button.add_theme_stylebox_override("normal", _make_button_style(_button_texture))
	button.add_theme_stylebox_override("hover", _make_button_style(_button_pressed_texture if _button_pressed_texture != null else _button_texture))
	button.add_theme_stylebox_override("pressed", _make_button_style(_button_pressed_texture if _button_pressed_texture != null else _button_texture))
	button.add_theme_stylebox_override("disabled", _make_button_style(_button_disabled_texture if _button_disabled_texture != null else _button_texture))
	button.add_theme_stylebox_override("focus", _make_button_style(_button_pressed_texture if _button_pressed_texture != null else _button_texture))

func _make_panel_style(texture: Texture2D) -> StyleBox:
	if texture == null:
		var fallback := StyleBoxFlat.new()
		fallback.bg_color = Color(0.07, 0.08, 0.10, 0.86)
		fallback.border_color = Color(0.55, 0.47, 0.31, 0.92)
		fallback.border_width_left = 2
		fallback.border_width_top = 2
		fallback.border_width_right = 2
		fallback.border_width_bottom = 2
		fallback.corner_radius_top_left = 12
		fallback.corner_radius_top_right = 12
		fallback.corner_radius_bottom_right = 12
		fallback.corner_radius_bottom_left = 12
		fallback.content_margin_left = 10
		fallback.content_margin_right = 10
		fallback.content_margin_top = 10
		fallback.content_margin_bottom = 10
		return fallback

	var style := StyleBoxTexture.new()
	style.texture = texture
	if _is_proprietary_title_ui_texture(texture):
		style.texture_margin_left = 48
		style.texture_margin_top = 36
		style.texture_margin_right = 48
		style.texture_margin_bottom = 36
		style.content_margin_left = 14
		style.content_margin_right = 14
		style.content_margin_top = 12
		style.content_margin_bottom = 12
		style.axis_stretch_horizontal = StyleBoxTexture.AXIS_STRETCH_MODE_STRETCH
		style.axis_stretch_vertical = StyleBoxTexture.AXIS_STRETCH_MODE_STRETCH
	else:
		style.texture_margin_left = 16
		style.texture_margin_top = 8
		style.texture_margin_right = 16
		style.texture_margin_bottom = 8
		style.content_margin_left = 8
		style.content_margin_right = 8
		style.content_margin_top = 8
		style.content_margin_bottom = 8
		style.axis_stretch_horizontal = StyleBoxTexture.AXIS_STRETCH_MODE_TILE_FIT
		style.axis_stretch_vertical = StyleBoxTexture.AXIS_STRETCH_MODE_TILE_FIT
	return style

func _make_inset_style(texture: Texture2D) -> StyleBox:
	if texture == null:
		var fallback := StyleBoxFlat.new()
		fallback.bg_color = Color(0.10, 0.11, 0.13, 0.84)
		fallback.border_color = Color(0.44, 0.37, 0.25, 0.84)
		fallback.border_width_left = 2
		fallback.border_width_top = 2
		fallback.border_width_right = 2
		fallback.border_width_bottom = 2
		fallback.corner_radius_top_left = 8
		fallback.corner_radius_top_right = 8
		fallback.corner_radius_bottom_right = 8
		fallback.corner_radius_bottom_left = 8
		fallback.content_margin_left = 8
		fallback.content_margin_right = 8
		fallback.content_margin_top = 8
		fallback.content_margin_bottom = 8
		return fallback

	var style := StyleBoxTexture.new()
	style.texture = texture
	if _is_proprietary_title_ui_texture(texture):
		style.texture_margin_left = 26
		style.texture_margin_top = 24
		style.texture_margin_right = 26
		style.texture_margin_bottom = 24
		style.content_margin_left = 10
		style.content_margin_right = 10
		style.content_margin_top = 8
		style.content_margin_bottom = 8
		style.axis_stretch_horizontal = StyleBoxTexture.AXIS_STRETCH_MODE_STRETCH
		style.axis_stretch_vertical = StyleBoxTexture.AXIS_STRETCH_MODE_STRETCH
	else:
		style.texture_margin_left = 10
		style.texture_margin_top = 10
		style.texture_margin_right = 10
		style.texture_margin_bottom = 10
		style.content_margin_left = 6
		style.content_margin_right = 6
		style.content_margin_top = 6
		style.content_margin_bottom = 6
		style.axis_stretch_horizontal = StyleBoxTexture.AXIS_STRETCH_MODE_TILE_FIT
		style.axis_stretch_vertical = StyleBoxTexture.AXIS_STRETCH_MODE_TILE_FIT
	return style

func _make_button_style(texture: Texture2D) -> StyleBox:
	if texture == null:
		var fallback := StyleBoxFlat.new()
		fallback.bg_color = Color(0.15, 0.12, 0.09, 0.96)
		fallback.border_color = Color(0.63, 0.53, 0.33, 0.98)
		fallback.border_width_left = 2
		fallback.border_width_top = 2
		fallback.border_width_right = 2
		fallback.border_width_bottom = 2
		fallback.corner_radius_top_left = 8
		fallback.corner_radius_top_right = 8
		fallback.corner_radius_bottom_right = 8
		fallback.corner_radius_bottom_left = 8
		fallback.content_margin_left = 10
		fallback.content_margin_right = 10
		fallback.content_margin_top = 6
		fallback.content_margin_bottom = 6
		return fallback

	var style := StyleBoxTexture.new()
	style.texture = texture
	if _is_proprietary_title_ui_texture(texture):
		style.texture_margin_left = 32
		style.texture_margin_top = 22
		style.texture_margin_right = 32
		style.texture_margin_bottom = 22
		style.content_margin_left = 14
		style.content_margin_right = 14
		style.content_margin_top = 8
		style.content_margin_bottom = 8
		style.axis_stretch_horizontal = StyleBoxTexture.AXIS_STRETCH_MODE_STRETCH
		style.axis_stretch_vertical = StyleBoxTexture.AXIS_STRETCH_MODE_STRETCH
	else:
		style.texture_margin_left = 14
		style.texture_margin_top = 6
		style.texture_margin_right = 14
		style.texture_margin_bottom = 6
		style.content_margin_left = 8
		style.content_margin_right = 8
		style.content_margin_top = 4
		style.content_margin_bottom = 4
		style.axis_stretch_horizontal = StyleBoxTexture.AXIS_STRETCH_MODE_TILE_FIT
		style.axis_stretch_vertical = StyleBoxTexture.AXIS_STRETCH_MODE_TILE_FIT
	return style

func _is_proprietary_title_ui_texture(texture: Texture2D) -> bool:
	if texture == null:
		return false

	if texture == _panel_texture:
		return str((_config.get("ui_slots", {}) as Dictionary).get("panel", "")).begins_with("res://assets/proprietary/production/ui/")
	if texture == _inset_texture:
		return str((_config.get("ui_slots", {}) as Dictionary).get("inset", "")).begins_with("res://assets/proprietary/production/ui/")
	if texture == _button_texture:
		return str((_config.get("ui_slots", {}) as Dictionary).get("button", "")).begins_with("res://assets/proprietary/production/ui/")
	if texture == _button_pressed_texture:
		return str((_config.get("ui_slots", {}) as Dictionary).get("button_pressed", "")).begins_with("res://assets/proprietary/production/ui/")

	return String(texture.resource_path).begins_with("res://assets/proprietary/production/ui/")
