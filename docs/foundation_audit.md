# Foundation Audit

Audit source: `git ls-files` at the start of the foundation pass.

Categories: `KEEP`, `REFACTOR`, `DELETE`, `REVIEW`. This audit captures the pre-cleanup repo state, so moved files are listed under their original tracked paths.

## .

| File | Category | Reason |
|---|---|---|
| `.DS_Store` | DELETE | macOS Finder metadata with no project value. |
| `.gitattributes` | KEEP | Standard repository attribute file with no foundation-pass issues detected. |
| `.gitignore` | REFACTOR | Needs production ignore rules for Godot/editor caches and OS cruft. |
| `README.md` | REFACTOR | Still describes the repo as RPG_GAME1 and a slice baseline instead of the current production-ready project state. |
| `project.godot` | REFACTOR | Application metadata and input map still expose RPG_GAME1 naming and spike-era debug actions. |

## .godot

| File | Category | Reason |
|---|---|---|
| `.godot/.gdignore` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/global_script_class_cache.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/scene_groups_cache.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/uid_cache.bin` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\editor

| File | Category | Reason |
|---|---|---|
| `.godot/editor/Battle Theme — Blood and Iron 1.mp3-17ec9a53780ad9ac6890abaf0ed4b541.mp3str-folding-2d0730da4f87399e5287b6a8e93cf6c9.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/Battle Theme — Blood and Iron 2.mp3-065075c5dfc706befd92e16575a27872.mp3str-folding-1516ff276df03ce1871f4910152ff3be.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/Boss Theme — The Shaman_s Chamber 1.mp3-2993d45824a24b2c5c4eec9396df56fc.mp3str-folding-2cd34926036a41fe2e6c0a78e27499e2.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/Boss Theme — The Shaman_s Chamber 2.mp3-76eac880eec3ecc79be3cdfaae4b6ae3.mp3str-folding-922a61e761a69fa506b989cb3ffe6724.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/Main.tscn-folding-68a04552abb3f12a362e1db2098e38c9.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/Mine_Dungeon Ambient — Into the Dark 1.mp3-eebd823922cad9e3a8952e28f924c2eb.mp3str-folding-7d33858db73bced1c52abe224eb183ce.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/Mine_Dungeon Ambient — Into the Dark 2.mp3-5dfec900aaaba00befe7b51a1ac21a58.mp3str-folding-2598881affe60e4c992faeef0788ee23.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/Moral Choice Sting — The Weight 1.mp3-383e53c661771958f326edaa9d5ea52b.mp3str-folding-ffbe160de6853bb301aee680811dee12.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/Moral Choice Sting — The Weight 2.mp3-e5d18252d2515a33e38ddfe30732c836.mp3str-folding-8baa92845876b1407feab8f46a7c4f99.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/StatRegistry.gd-folding-257b2f25c6094908b4a56860a8e84145.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/Town Theme — Frontier Hamlet 1.mp3-587914653dbf08d23aa5f526402cb315.mp3str-folding-583563f9f194c1529b5c0294186ecc4d.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/Town Theme — Frontier Hamlet 2.mp3-1d4b71ea29565761bf222850c0f84612.mp3str-folding-5565bf9b0f69733d7d808c5754fa9d03.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/Victory  Main Theme Seed 1.mp3-36ec364a84926acdad99fd3c485a5a17.mp3str-folding-8af007e8944b43324b1598ad7de47edc.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/Victory  Main Theme Seed 2.mp3-8884f233f47b036f69005fe2ccf55270.mp3str-folding-62ce27bc1c79d8d1a93ccf2b14209668.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/attack_hit_01.ogg-d789a89a3c214de8186ad9c69754741e.oggvorbisstr-folding-e58da9a7db81c08c5da00a1d9b2ccc20.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/attack_hit_01.wav-1d5b227fc34147e20b9ebdedb0aa651f.sample-folding-4697c4db4cbb2223aef3c812da95cf8e.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/attack_swing_01.ogg-55d68543aba3fe14d5ee4dd16286f1c4.oggvorbisstr-folding-53936c3c45b25be37962c7f4de68d4f1.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/attack_swing_01.wav-4d3baa1bac9be3a293189bd185bba9c1.sample-folding-87dd99579d334f4280d4d53a132996c0.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/dialogue_advance_01.ogg-6bdf0ae2283740cc6354fdb8d0afb97f.oggvorbisstr-folding-316abcfd0b7ef7afef6cb2bb2f545a24.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/dialogue_advance_01.wav-6a17dfe9590be0a529404eae1c7dc41e.sample-folding-c430cfb0a07f063df7c4b2fceb04d009.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/editor_layout.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/editor_script_doc_cache.res` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/editor_script_doc_cache.res-folding-a7de57390d6e786984ca20c70a831128.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/filesystem_cache10` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/gate_open_01.ogg-9e4e084fb63533bd124d1e2afb0eea06.oggvorbisstr-folding-d268bb284f83269ba07ed5a23c33dcc2.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/gate_open_01.wav-cb08a03960fa955243605d1dce803ba4.sample-folding-8cc0e29bc4ce5cf69030d864aa4475a7.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/loot_pickup_01.ogg-333c98b639b2e102c0637561cdd980b5.oggvorbisstr-folding-d93c9543c445fe3739307f8efd399e88.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/loot_pickup_01.wav-5516ff7b9d18ec63aab8c6a6df47d5c1.sample-folding-569dce3b40c1d282ad3df6d543e8ee10.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/project_metadata.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/script_editor_cache.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/spell_cast_01.ogg-221adbd7350d86e83bc4430cdd479bb5.oggvorbisstr-folding-b4ef2e4de3272acf5e9d7e97166bf624.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/spell_cast_01.wav-752a1a65e359107ec4b40e5f5e86f83f.sample-folding-a860e97efdc8ce39f17319b57e78ffaf.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/step_mine_01.ogg-419f53f70e8c8d80622c43c2108cb7d7.oggvorbisstr-folding-d458ad9c20899b05404705aaa1d1d5a9.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/step_mine_01.wav-7a9d931121c836f9dc95a9253846d0a1.sample-folding-7bc843336dec92be1251604b45c8d271.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/step_town_01.ogg-06f90a258ff6fceff7d528a215cc676b.oggvorbisstr-folding-e802a565f245e9d4f613ebf014b1421a.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/step_town_01.wav-a402257adb69bdc9acd7b349e2da33d6.sample-folding-a96cf393321331714bb925dd3b15cffd.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/ui_cancel_01.ogg-5ba73177c6b6e5927cfce39baf4e863f.oggvorbisstr-folding-e49465f174d99d860f0c94c908f9c329.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/ui_cancel_01.wav-c306eb4846d0672e6964f74d48716a5e.sample-folding-67488286b38851e1836e9e5ff3c2a52a.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/ui_confirm_01.ogg-7be447cf43c0b6e3e57e51354cd89454.oggvorbisstr-folding-9da0826e773641bad08b62ba210ad243.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/editor/ui_confirm_01.wav-0ca0e32f610c272740fbd064553d05a9.sample-folding-54bba2b7bb334be6b9ec719a7644c38c.cfg` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\imported

| File | Category | Reason |
|---|---|---|
| `.godot/imported/01_boot_from_current_save.png-47dcf8c36025ffb4f246152774bb7644.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/01_boot_from_current_save.png-47dcf8c36025ffb4f246152774bb7644.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/01_town_start.png-7bb010627905520e9f8e3e36af356a77.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/01_town_start.png-7bb010627905520e9f8e3e36af356a77.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/02_town_bookkeeper.png-779913ff99fc3e83dca526eaff9411ed.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/02_town_bookkeeper.png-779913ff99fc3e83dca526eaff9411ed.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/02_town_collision_blocked.png-73fe6d307a5e6d11b3e75a95bf59385b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/02_town_collision_blocked.png-73fe6d307a5e6d11b3e75a95bf59385b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/03_collision_blocked.png-7de99b33dee82227cb3e0c0353a20218.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/03_collision_blocked.png-7de99b33dee82227cb3e0c0353a20218.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/03_town_collision_passable.png-e40c4f1d08cfce7db36a02f576a2b2fe.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/03_town_collision_passable.png-e40c4f1d08cfce7db36a02f576a2b2fe.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/04_collision_passable.png-24150c5e8b6de688916f28551df40bbb.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/04_collision_passable.png-24150c5e8b6de688916f28551df40bbb.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/04_mine_entry.png-7797d8739a617595adec6f7540dc095e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/04_mine_entry.png-7797d8739a617595adec6f7540dc095e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/05_hud_stats.png-c829554661740b2c1982b7a8cd8cd066.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/05_hud_stats.png-c829554661740b2c1982b7a8cd8cd066.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/05_mine_west_branch_locked.png-66642c6e6f15c51434c1659a67d49ddb.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/05_mine_west_branch_locked.png-66642c6e6f15c51434c1659a67d49ddb.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/06_battle_fighter.png-71ab6483ebe586cc3005871d32bc3279.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/06_battle_fighter.png-71ab6483ebe586cc3005871d32bc3279.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/06_hud_equipment.png-c70e4c5d5c8280af09a1afce514272f4.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/06_hud_equipment.png-c70e4c5d5c8280af09a1afce514272f4.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/07_battle_battlemage.png-4a446f8ff3b7c8c7a4b8b4bcef80c60a.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/07_battle_battlemage.png-4a446f8ff3b7c8c7a4b8b4bcef80c60a.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/07_debug_hidden.png-f2e4bda9bccc1b41c4d533de84e3ce6e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/07_debug_hidden.png-f2e4bda9bccc1b41c4d533de84e3ce6e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/08_cutscene_mine_entry.png-aae181a7f6c3929e68740d82f3182d24.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/08_cutscene_mine_entry.png-aae181a7f6c3929e68740d82f3182d24.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/08_shaman_intro_choice.png-9ddf0bd2dcbd35fdd49c832cf568b31c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/08_shaman_intro_choice.png-9ddf0bd2dcbd35fdd49c832cf568b31c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/09_battle_presentation.png-f4b6fa9cb9eae6a887b8a3c5c482e3f8.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/09_battle_presentation.png-f4b6fa9cb9eae6a887b8a3c5c482e3f8.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/09_shaman_recruit_return.png-40a3a2fb6b1c83aa554ddcb0c8a96f50.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/09_shaman_recruit_return.png-40a3a2fb6b1c83aa554ddcb0c8a96f50.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-0344760f23d2e26670b79f5f8bf879d5.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-0344760f23d2e26670b79f5f8bf879d5.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-0ba2dea2249ed46baef1d2a74dae6f91.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-0ba2dea2249ed46baef1d2a74dae6f91.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-14874412535a2f0f54a041cadfcc526c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-14874412535a2f0f54a041cadfcc526c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-23e895b4562d498e8f84356ac3b93dfa.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-23e895b4562d498e8f84356ac3b93dfa.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-2a194bc8be763f96c399b991d994ddfd.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-2a194bc8be763f96c399b991d994ddfd.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-2ccfff41ec3c2a51ac5a982b9a987da7.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-2ccfff41ec3c2a51ac5a982b9a987da7.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-3070faf1206d131cb18a3d52b340171e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-3070faf1206d131cb18a3d52b340171e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-6fd2a239346cc24d25e1662c37ee6e89.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-6fd2a239346cc24d25e1662c37ee6e89.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-73cdc5fb3a5ee1d994d227ae6f6e874e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-73cdc5fb3a5ee1d994d227ae6f6e874e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-8414ca47615cf2bee5f88593892b2717.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-8414ca47615cf2bee5f88593892b2717.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-a11abebaf1f5655dc802305f997399ce.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-a11abebaf1f5655dc802305f997399ce.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-e681ace59bab6c1f5207a6d4093eb940.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/1.png-e681ace59bab6c1f5207a6d4093eb940.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/10.png-3a82e492363de84960fec42a62a71320.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/10.png-3a82e492363de84960fec42a62a71320.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/10.png-ebab3b081a5ce559cd79b219c33c1d27.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/10.png-ebab3b081a5ce559cd79b219c33c1d27.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/10_levelup_return_hud.png-14b42b6a7a633ce134376e9717c5aec4.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/10_levelup_return_hud.png-14b42b6a7a633ce134376e9717c5aec4.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/10_shaman_kill_return.png-e8dc1eca4bb79e6f2780782838838443.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/10_shaman_kill_return.png-e8dc1eca4bb79e6f2780782838838443.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/11.png-14c5b356c5c8e05913017c078c28a36e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/11.png-14c5b356c5c8e05913017c078c28a36e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/11.png-d4391ea18be7fff1e3bb3bc56c218b98.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/11.png-d4391ea18be7fff1e3bb3bc56c218b98.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/11_mine_exit_victory.png-755d28f64f9d72f134dbf9f5a0291299.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/11_mine_exit_victory.png-755d28f64f9d72f134dbf9f5a0291299.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/11_shaman_follow_crossroads.png-33e46e3aaaec5c8d05819440673ba058.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/11_shaman_follow_crossroads.png-33e46e3aaaec5c8d05819440673ba058.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/12.png-14fad262f1cee89efa468b36f7cafc0e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/12.png-14fad262f1cee89efa468b36f7cafc0e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/12.png-59fa5cc4867f2ec73c03c09d1e0f7ecd.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/12.png-59fa5cc4867f2ec73c03c09d1e0f7ecd.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/12_crossroads_follower.png-4956390ccd3bf6eb01265d2bd855e2d6.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/12_crossroads_follower.png-4956390ccd3bf6eb01265d2bd855e2d6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/13.png-3c97d2ffb0d8bc1fea041ad8001f9998.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/13.png-3c97d2ffb0d8bc1fea041ad8001f9998.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/13.png-5e01f534ed893e2d9d034cb13c3c3a92.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/13.png-5e01f534ed893e2d9d034cb13c3c3a92.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/14.png-0cf32ef25366f6950c0c9d4d3a7793cb.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/14.png-0cf32ef25366f6950c0c9d4d3a7793cb.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/14.png-7497749e34ed6413cbccd208e80baf48.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/14.png-7497749e34ed6413cbccd208e80baf48.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/15.png-5e72e8e1ee17a4f29d9412a5f8fa8ee3.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/15.png-5e72e8e1ee17a4f29d9412a5f8fa8ee3.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/15.png-8aca893efb8ccb0a0cd9535b54040f8b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/15.png-8aca893efb8ccb0a0cd9535b54040f8b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/16.png-86f75ac9c302cec70689ef7c02b96c82.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/16.png-86f75ac9c302cec70689ef7c02b96c82.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/16.png-9a4dc22640013ab0cabfacab4e6833b7.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/16.png-9a4dc22640013ab0cabfacab4e6833b7.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/17.png-1f79474f2e09f311c1ffa29c99f5cf72.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/17.png-1f79474f2e09f311c1ffa29c99f5cf72.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/17.png-5d1c57fb64a3312a075c18a8f8156d6d.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/17.png-5d1c57fb64a3312a075c18a8f8156d6d.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/18.png-aadc2e9394ccf87dee709037aa2f28f2.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/18.png-aadc2e9394ccf87dee709037aa2f28f2.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/18.png-ba15003b8b928b968105f901eeeb6893.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/18.png-ba15003b8b928b968105f901eeeb6893.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/19.png-05bf52ae1d3d738ae372aa18cab9ce9f.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/19.png-05bf52ae1d3d738ae372aa18cab9ce9f.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/19.png-713e205b53fbb883c913af70f6599423.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/19.png-713e205b53fbb883c913af70f6599423.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-0a9d45c598e0089418ad5c12a1a3a492.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-0a9d45c598e0089418ad5c12a1a3a492.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-1e92bce5735fc9ae0661e01f0a268d5b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-1e92bce5735fc9ae0661e01f0a268d5b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-3f2c22418abc137abad5e5dc9e0eebac.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-3f2c22418abc137abad5e5dc9e0eebac.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-40d9cdc24413b2c85fd78faebdb53596.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-40d9cdc24413b2c85fd78faebdb53596.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-4923c891e9523d54351530355211f230.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-4923c891e9523d54351530355211f230.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-56b38c1146c11d1df80eee022c558728.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-56b38c1146c11d1df80eee022c558728.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-67e4113fdd75bbae4e09834d38e2248c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-67e4113fdd75bbae4e09834d38e2248c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-980264b48983dbafdd069807ac2b594e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-980264b48983dbafdd069807ac2b594e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-a5679efa7cf4ca6cd742bc96ad4139b2.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-a5679efa7cf4ca6cd742bc96ad4139b2.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-cb9dfaa445b17989625f86b118e0f0da.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-cb9dfaa445b17989625f86b118e0f0da.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-d565a0f32e3a134a71cc5c8913c7c7dc.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-d565a0f32e3a134a71cc5c8913c7c7dc.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-daa37d9d8a504980721eee9c19cd0cda.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/2.png-daa37d9d8a504980721eee9c19cd0cda.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/20.png-4379452b9d7dfa4406a5d524dcce9147.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/20.png-4379452b9d7dfa4406a5d524dcce9147.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/20.png-5be978c50ca51a0091ba64e211f21c04.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/20.png-5be978c50ca51a0091ba64e211f21c04.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/21.png-5e021829676d14def25ed9ca3d341c19.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/21.png-5e021829676d14def25ed9ca3d341c19.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/21.png-7c545c04fd1c04026be65b7edcb81b81.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/21.png-7c545c04fd1c04026be65b7edcb81b81.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/22.png-c989a330eb0ec037b2a5284e08cacb82.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/22.png-c989a330eb0ec037b2a5284e08cacb82.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/22.png-f8a071c441fbbf551b12c41ce0c16863.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/22.png-f8a071c441fbbf551b12c41ce0c16863.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/23.png-5cdb4dde0e5da14411879530922f061c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/23.png-5cdb4dde0e5da14411879530922f061c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/23.png-a8e61574c1e8c299165db3534c2d7613.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/23.png-a8e61574c1e8c299165db3534c2d7613.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/24.png-147fcd01972a62d5fe80b0be40313544.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/24.png-147fcd01972a62d5fe80b0be40313544.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/24.png-ce16b74328d5702e89c55a690844f2ef.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/24.png-ce16b74328d5702e89c55a690844f2ef.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/25.png-bfb1e01612dd3ea403aa64a4c9ee727d.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/25.png-bfb1e01612dd3ea403aa64a4c9ee727d.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/25.png-cf977d70796dac66af496353de390783.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/25.png-cf977d70796dac66af496353de390783.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/26.png-462e63d56ac55da79d20d3e80f28d6b0.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/26.png-462e63d56ac55da79d20d3e80f28d6b0.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/26.png-4dd00252bae75da20b183e18ab21bd3a.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/26.png-4dd00252bae75da20b183e18ab21bd3a.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/27.png-2cd7bbf787e111a7c6aa6aa2c9901541.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/27.png-2cd7bbf787e111a7c6aa6aa2c9901541.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/27.png-6305b79599ee1e135a51ffc73c42975b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/27.png-6305b79599ee1e135a51ffc73c42975b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-0569ee4c2fbd7e04cf0c7300bc4c2314.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-0569ee4c2fbd7e04cf0c7300bc4c2314.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-12553dd0cdc11fa0381a1da70334ec17.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-12553dd0cdc11fa0381a1da70334ec17.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-4f7ae6c51f4953088ec85de0a59328f3.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-4f7ae6c51f4953088ec85de0a59328f3.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-6f96dd2b5017f13f8f533a268f6a1223.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-6f96dd2b5017f13f8f533a268f6a1223.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-c8aaa955236cf11f0a2e3a16fbde208d.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-c8aaa955236cf11f0a2e3a16fbde208d.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-d9bcc97986843e22a219b22560eb6065.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-d9bcc97986843e22a219b22560eb6065.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-dbd1b0fef428c3654107d74c5754f160.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-dbd1b0fef428c3654107d74c5754f160.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-eddc398c411792a4ebb7490bfd443f53.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/3.png-eddc398c411792a4ebb7490bfd443f53.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/4.png-39ee3e44132b31f1d0c4b124b6650b10.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/4.png-39ee3e44132b31f1d0c4b124b6650b10.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/4.png-a167150ab93fbee4aa8179c841ba0c82.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/4.png-a167150ab93fbee4aa8179c841ba0c82.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/4.png-c4d5e1f669df37bdb6851ef1b99a7f2e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/4.png-c4d5e1f669df37bdb6851ef1b99a7f2e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/4.png-efec73655ac874ffdabc7f555f0c7efe.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/4.png-efec73655ac874ffdabc7f555f0c7efe.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/5.png-16b3c5d37a2e7e830d78f01fe2c8b032.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/5.png-16b3c5d37a2e7e830d78f01fe2c8b032.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/5.png-5f90881df4107bf36f66a9c7046c7c79.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/5.png-5f90881df4107bf36f66a9c7046c7c79.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/6.png-85dd7a11a436edc8253cc23917fca373.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/6.png-85dd7a11a436edc8253cc23917fca373.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/6.png-88731342b5b76dfbcd79d926ff8d81d8.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/6.png-88731342b5b76dfbcd79d926ff8d81d8.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/7.png-1ae9a65ecfb8b4779d9b42e8469a7034.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/7.png-1ae9a65ecfb8b4779d9b42e8469a7034.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/7.png-322cb6f1fd974ab967ab9d4ae8853c18.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/7.png-322cb6f1fd974ab967ab9d4ae8853c18.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/8.png-c8fe19362a99fbacc0286d8e5d12da54.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/8.png-c8fe19362a99fbacc0286d8e5d12da54.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/8.png-cd28dfec1e99d028d26ca03eb52c5ddd.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/8.png-cd28dfec1e99d028d26ca03eb52c5ddd.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/9.png-266e61422162ec7c29044a16468c761d.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/9.png-266e61422162ec7c29044a16468c761d.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/9.png-6d1c1f02324025295f3b2c8677d23a74.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/9.png-6d1c1f02324025295f3b2c8677d23a74.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Aurora Tileset.png-c47529b837cd344a27adb21bf9c936ef.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Aurora Tileset.png-c47529b837cd344a27adb21bf9c936ef.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Auto-Tile Pattern.png-3115819e606402a8979b6dc41542f890.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Auto-Tile Pattern.png-3115819e606402a8979b6dc41542f890.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Battle Theme — Blood and Iron 1.mp3-17ec9a53780ad9ac6890abaf0ed4b541.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Battle Theme — Blood and Iron 1.mp3-17ec9a53780ad9ac6890abaf0ed4b541.mp3str` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Battle Theme — Blood and Iron 2.mp3-065075c5dfc706befd92e16575a27872.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Battle Theme — Blood and Iron 2.mp3-065075c5dfc706befd92e16575a27872.mp3str` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Boss Theme — The Shaman_s Chamber 1.mp3-2993d45824a24b2c5c4eec9396df56fc.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Boss Theme — The Shaman_s Chamber 1.mp3-2993d45824a24b2c5c4eec9396df56fc.mp3str` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Boss Theme — The Shaman_s Chamber 2.mp3-76eac880eec3ecc79be3cdfaae4b6ae3.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Boss Theme — The Shaman_s Chamber 2.mp3-76eac880eec3ecc79be3cdfaae4b6ae3.mp3str` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Bricks.png-d64f05103a7b382755610f1a73a7b0e5.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Bricks.png-d64f05103a7b382755610f1a73a7b0e5.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Clouds_version_01.png-8525001b7eaefe21aeaf49d360cbc74d.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Clouds_version_01.png-8525001b7eaefe21aeaf49d360cbc74d.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Decals.png-e2b27cec1b9a69b5aafa628363e18c58.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Decals.png-e2b27cec1b9a69b5aafa628363e18c58.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Dirt.png-caaa557f856f25c9d18f0eb6f18afb88.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Dirt.png-caaa557f856f25c9d18f0eb6f18afb88.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Door1_pipo.png-2559efb03bedce1f5b2b13d8d88f3e93.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Door1_pipo.png-2559efb03bedce1f5b2b13d8d88f3e93.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Door2_pipo.png-c047c967c48a3d7b0393e182fae6924b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Door2_pipo.png-c047c967c48a3d7b0393e182fae6924b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Door3_pipo.png-898cfe0af51612eff38d117a7f362cc7.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Door3_pipo.png-898cfe0af51612eff38d117a7f362cc7.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Grass.png-efffd629c8f56e3c55441f0d132000da.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Grass.png-efffd629c8f56e3c55441f0d132000da.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Grassy_stone.png-1c7e0cfcf4c4207f3d6e791b8a456bc2.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Grassy_stone.png-1c7e0cfcf4c4207f3d6e791b8a456bc2.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Ice.png-224a8a674291cc9f0a89e09dd71c7f3c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Ice.png-224a8a674291cc9f0a89e09dd71c7f3c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/LightShadow_pipo.png-33f32c4e4e04b8a89585bc3044c27818.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/LightShadow_pipo.png-33f32c4e4e04b8a89585bc3044c27818.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/LightShadow_pipo.png-9854fb79c59f02ed245ce93453f3b716.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/LightShadow_pipo.png-9854fb79c59f02ed245ce93453f3b716.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Mine_Dungeon Ambient — Into the Dark 1.mp3-eebd823922cad9e3a8952e28f924c2eb.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Mine_Dungeon Ambient — Into the Dark 1.mp3-eebd823922cad9e3a8952e28f924c2eb.mp3str` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Mine_Dungeon Ambient — Into the Dark 2.mp3-5dfec900aaaba00befe7b51a1ac21a58.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Mine_Dungeon Ambient — Into the Dark 2.mp3-5dfec900aaaba00befe7b51a1ac21a58.mp3str` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Moral Choice Sting — The Weight 1.mp3-383e53c661771958f326edaa9d5ea52b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Moral Choice Sting — The Weight 1.mp3-383e53c661771958f326edaa9d5ea52b.mp3str` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Moral Choice Sting — The Weight 2.mp3-e5d18252d2515a33e38ddfe30732c836.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Moral Choice Sting — The Weight 2.mp3-e5d18252d2515a33e38ddfe30732c836.mp3str` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Mossy_grass.png-b1dda7ee1c05da66e82d15f6ab23d6c8.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Mossy_grass.png-b1dda7ee1c05da66e82d15f6ab23d6c8.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Snowy_bricks.png-753a5b6a6512a77909a18e5e54d7124c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Snowy_bricks.png-753a5b6a6512a77909a18e5e54d7124c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Snowy_dirt.png-fb9b8fb4fb67d9ac215d83f78a1dbe97.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Snowy_dirt.png-fb9b8fb4fb67d9ac215d83f78a1dbe97.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Snowy_ice.png-78bd6dc3038d60c5129c7a5f44608d1f.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Snowy_ice.png-78bd6dc3038d60c5129c7a5f44608d1f.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Snowy_stone.png-f3f2abbe205a758a766249a7d8c9bda7.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Snowy_stone.png-f3f2abbe205a758a766249a7d8c9bda7.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Stone.png-7f6062088bad6f1f274a9ad0c4ca1867.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Stone.png-7f6062088bad6f1f274a9ad0c4ca1867.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Tilesets and props Demo.png-70a477adb3672204dd8f2ca24f3d6c05.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Tilesets and props Demo.png-70a477adb3672204dd8f2ca24f3d6c05.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Town Theme — Frontier Hamlet 1.mp3-587914653dbf08d23aa5f526402cb315.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Town Theme — Frontier Hamlet 1.mp3-587914653dbf08d23aa5f526402cb315.mp3str` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Town Theme — Frontier Hamlet 2.mp3-1d4b71ea29565761bf222850c0f84612.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Town Theme — Frontier Hamlet 2.mp3-1d4b71ea29565761bf222850c0f84612.mp3str` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Victory  Main Theme Seed 1.mp3-36ec364a84926acdad99fd3c485a5a17.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Victory  Main Theme Seed 1.mp3-36ec364a84926acdad99fd3c485a5a17.mp3str` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Victory  Main Theme Seed 2.mp3-8884f233f47b036f69005fe2ccf55270.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/Victory  Main Theme Seed 2.mp3-8884f233f47b036f69005fe2ccf55270.mp3str` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt2_pipo.png-3119e5e22869d48eb09034d00a547b37.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt2_pipo.png-3119e5e22869d48eb09034d00a547b37.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt2_pipo.png-cc18a775c23c4630c5409ced085c8657.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt2_pipo.png-cc18a775c23c4630c5409ced085c8657.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt2_pipo.png-fbddb49948380525198acb92ff99f30f.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt2_pipo.png-fbddb49948380525198acb92ff99f30f.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt3_pipo.png-538cc1352e3e3a8591ab17f843184471.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt3_pipo.png-538cc1352e3e3a8591ab17f843184471.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt3_pipo.png-5d556c9cd663172f7fe2ca432903d4a0.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt3_pipo.png-5d556c9cd663172f7fe2ca432903d4a0.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt3_pipo.png-7eb892f3b165a70b5bdfde75a45587ae.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt3_pipo.png-7eb892f3b165a70b5bdfde75a45587ae.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt4_pipo.png-0bc1317381840883f4f4a9051cae84de.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt4_pipo.png-0bc1317381840883f4f4a9051cae84de.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt4_pipo.png-4138e30b3dd1569c961426effda1b07e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt4_pipo.png-4138e30b3dd1569c961426effda1b07e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt4_pipo.png-e24903d85c40dc1772d3b1d392d748db.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1-Dirt4_pipo.png-e24903d85c40dc1772d3b1d392d748db.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1_pipo.png-3428659f7a10f07106d5e54d777702af.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1_pipo.png-3428659f7a10f07106d5e54d777702af.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1_pipo.png-7f797878eb83a8a84d856bd491073587.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1_pipo.png-7f797878eb83a8a84d856bd491073587.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1_pipo.png-9fa293973f343732b8f96f225e989650.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt1_pipo.png-9fa293973f343732b8f96f225e989650.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt2_pipo.png-28d3eb7fe2458ae46dbc6d339b95e774.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt2_pipo.png-28d3eb7fe2458ae46dbc6d339b95e774.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt2_pipo.png-ac7bcee53332c3d31981f55d017440c1.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt2_pipo.png-ac7bcee53332c3d31981f55d017440c1.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt2_pipo.png-cdaf1cb77b6e854751975c436c3c9c18.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt2_pipo.png-cdaf1cb77b6e854751975c436c3c9c18.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt3_pipo.png-0ef248ccf005d9460798ef63109a428c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt3_pipo.png-0ef248ccf005d9460798ef63109a428c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt3_pipo.png-7a00dfb9d7f162695f580f8512064d09.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt3_pipo.png-7a00dfb9d7f162695f580f8512064d09.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt3_pipo.png-a64c0b452aaf4bb9f1be0fb47e9f5f6e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt3_pipo.png-a64c0b452aaf4bb9f1be0fb47e9f5f6e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt4_pipo.png-60fe702b5604cead0cd50ec35f63da48.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt4_pipo.png-60fe702b5604cead0cd50ec35f63da48.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt4_pipo.png-a5eb9e33912979029988b082c6487cec.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt4_pipo.png-a5eb9e33912979029988b082c6487cec.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt4_pipo.png-aa5b44df3b522e94cdb2ae5499cc35ef.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt4_pipo.png-aa5b44df3b522e94cdb2ae5499cc35ef.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt_pipo.png-48c4af909781842019fd3868f65baaf2.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Dirt_pipo.png-48c4af909781842019fd3868f65baaf2.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Flower_pipo.png-26fff216dac342d872950fcac41fb148.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Flower_pipo.png-26fff216dac342d872950fcac41fb148.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Flower_pipo.png-862d6e3a6dd69001fe37e51f3ca36ac6.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Flower_pipo.png-862d6e3a6dd69001fe37e51f3ca36ac6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Flower_pipo.png-e86715ba08f443d6475692168c3844d9.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Flower_pipo.png-e86715ba08f443d6475692168c3844d9.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Flower_pipo.png-f58a0058bf57b1fa336ca76fb3279fc6.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Flower_pipo.png-f58a0058bf57b1fa336ca76fb3279fc6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt1_pipo.png-3025ebcbe696a09d82a185a362ada59b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt1_pipo.png-3025ebcbe696a09d82a185a362ada59b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt1_pipo.png-dd92f9c8f4d9284e640d51f851f3e184.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt1_pipo.png-dd92f9c8f4d9284e640d51f851f3e184.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt1_pipo.png-fc03e602f53a4ff0925dc4fc4e3d92ab.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt1_pipo.png-fc03e602f53a4ff0925dc4fc4e3d92ab.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt2_pipo.png-2e3b0deb08a40bce1638430cd66f42e2.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt2_pipo.png-2e3b0deb08a40bce1638430cd66f42e2.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt2_pipo.png-6ad0af87893a232afb47aa4ebe957c0a.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt2_pipo.png-6ad0af87893a232afb47aa4ebe957c0a.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt2_pipo.png-d5ebe7db7f31a60e93dd70ae60613638.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt2_pipo.png-d5ebe7db7f31a60e93dd70ae60613638.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt3_pipo.png-4bb58fa686fc55e61c197d02960d0930.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt3_pipo.png-4bb58fa686fc55e61c197d02960d0930.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt3_pipo.png-5f9a47a584ada310d827329ddbbb86a5.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt3_pipo.png-5f9a47a584ada310d827329ddbbb86a5.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt3_pipo.png-6694063037041616311b0e30c90cbdc6.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt3_pipo.png-6694063037041616311b0e30c90cbdc6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt4_pipo.png-4c50e1ae9ae486f2391b7d135b45de7c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt4_pipo.png-4c50e1ae9ae486f2391b7d135b45de7c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt4_pipo.png-d1ec8d3a64296e943d4bd507a2d61fdc.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt4_pipo.png-d1ec8d3a64296e943d4bd507a2d61fdc.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt4_pipo.png-d1fd044eb7b710f98dce084c3d5da4fc.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Dirt4_pipo.png-d1fd044eb7b710f98dce084c3d5da4fc.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass2_pipo.png-6a3b2c4409b879ecdcae42b58fa8faf3.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass2_pipo.png-6a3b2c4409b879ecdcae42b58fa8faf3.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass2_pipo.png-e011d2ee71461a7f20f73c6dd77a6bed.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass2_pipo.png-e011d2ee71461a7f20f73c6dd77a6bed.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass2_pipo.png-fdb8614aaa5e50a154fec1b8a100eb99.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass2_pipo.png-fdb8614aaa5e50a154fec1b8a100eb99.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass3_pipo.png-2db05ad820d041b68e016993043ecd53.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass3_pipo.png-2db05ad820d041b68e016993043ecd53.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass3_pipo.png-39a3f403e8c5ad06595982500562997f.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass3_pipo.png-39a3f403e8c5ad06595982500562997f.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass3_pipo.png-442e01f6b56d730792a9e67d5e4f74d1.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass3_pipo.png-442e01f6b56d730792a9e67d5e4f74d1.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass4_pipo.png-5233024f63de01d5cead16488a4d4ae9.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass4_pipo.png-5233024f63de01d5cead16488a4d4ae9.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass4_pipo.png-9f0bf90fc4f8cb3603fbb6a82811455b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass4_pipo.png-9f0bf90fc4f8cb3603fbb6a82811455b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass4_pipo.png-c7cb5223b42fc9c23bf7328443f148a9.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1-Grass4_pipo.png-c7cb5223b42fc9c23bf7328443f148a9.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1_pipo.png-2e610329e436808a74ce39746644c1b8.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1_pipo.png-2e610329e436808a74ce39746644c1b8.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1_pipo.png-6155149e75a7207d74f21a7cdc358c74.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1_pipo.png-6155149e75a7207d74f21a7cdc358c74.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1_pipo.png-ea3594ec9b1ddb117e40ac8052f25dbc.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass1_pipo.png-ea3594ec9b1ddb117e40ac8052f25dbc.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass2_pipo.png-9093791762c5d5edcb6d1d5d55ee3309.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass2_pipo.png-9093791762c5d5edcb6d1d5d55ee3309.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass2_pipo.png-94d15a2d2fd361799140238d3165a9dc.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass2_pipo.png-94d15a2d2fd361799140238d3165a9dc.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass2_pipo.png-c9b62dc05d0a4b264a13c44a4dd9702e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass2_pipo.png-c9b62dc05d0a4b264a13c44a4dd9702e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass3_pipo.png-2a4745a81540b09d6e20acfce3242c63.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass3_pipo.png-2a4745a81540b09d6e20acfce3242c63.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass3_pipo.png-4eeea33c75d3ad36d82f11ce8bf281c6.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass3_pipo.png-4eeea33c75d3ad36d82f11ce8bf281c6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass3_pipo.png-f290d94ed678bcd0f35d5d941c112902.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass3_pipo.png-f290d94ed678bcd0f35d5d941c112902.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass4_pipo.png-001986a967a126d8c6d60fc3bb2a4c19.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass4_pipo.png-001986a967a126d8c6d60fc3bb2a4c19.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass4_pipo.png-920af2172f84c6e98094ee291d2b7f54.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass4_pipo.png-920af2172f84c6e98094ee291d2b7f54.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass4_pipo.png-c10f1ee1a6baf84a73ba07461ae49042.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass4_pipo.png-c10f1ee1a6baf84a73ba07461ae49042.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass_pipo.png-ee7b6ffc42a32a9e6643cf2745025774.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Grass_pipo.png-ee7b6ffc42a32a9e6643cf2745025774.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]LongGrass_pipo.png-30ebe83d9ed07a565ac00605c5f84538.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]LongGrass_pipo.png-30ebe83d9ed07a565ac00605c5f84538.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]LongGrass_pipo.png-3ff74ec40b0e4c519f3ee59f54d474dd.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]LongGrass_pipo.png-3ff74ec40b0e4c519f3ee59f54d474dd.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]LongGrass_pipo.png-6bdd5c52a26f1075d8dde6ec8b22d3d8.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]LongGrass_pipo.png-6bdd5c52a26f1075d8dde6ec8b22d3d8.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Wall-Up1_pipo.png-24f74cbb782d5ef21b162c121b43b272.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Wall-Up1_pipo.png-24f74cbb782d5ef21b162c121b43b272.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Wall-Up1_pipo.png-d999a0a40bc5080739441f7e8155938b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Wall-Up1_pipo.png-d999a0a40bc5080739441f7e8155938b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Wall-Up1_pipo.png-e55b7a3c231c30482e501aaff516f792.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Wall-Up1_pipo.png-e55b7a3c231c30482e501aaff516f792.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Wall-Up2_pipo.png-6a974f4b2c7e8301a5ff4a9156d57e2c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Wall-Up2_pipo.png-6a974f4b2c7e8301a5ff4a9156d57e2c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Wall-Up2_pipo.png-a8d97c0759f9efcfd261cec93f828c2e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Wall-Up2_pipo.png-a8d97c0759f9efcfd261cec93f828c2e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Wall-Up2_pipo.png-d9cdcb14044b273906e3310d2d50b201.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Wall-Up2_pipo.png-d9cdcb14044b273906e3310d2d50b201.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Wall-Up_pipo.png-a4b7d9e44202654591aff51744846961.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Wall-Up_pipo.png-a4b7d9e44202654591aff51744846961.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water1_pipo.png-05c3db1e46c18ed2dca511dc22f1f052.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water1_pipo.png-05c3db1e46c18ed2dca511dc22f1f052.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water1_pipo.png-0e5efafb3ca79fea8c5c146d9272db6f.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water1_pipo.png-0e5efafb3ca79fea8c5c146d9272db6f.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water1_pipo.png-b2538d01e5e0c495decc29b38ad7bd75.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water1_pipo.png-b2538d01e5e0c495decc29b38ad7bd75.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water1_pipo.png-b7c0bb591f17a75a7e8ce4c076e5a6b8.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water1_pipo.png-b7c0bb591f17a75a7e8ce4c076e5a6b8.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water1_pipo.png-df55682db63c81f763d1f6f58365ae75.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water1_pipo.png-df55682db63c81f763d1f6f58365ae75.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water1_pipo.png-f5e0581503a21e5b5512e229f314c1d2.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water1_pipo.png-f5e0581503a21e5b5512e229f314c1d2.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water2_pipo.png-3cfe20803fa140c9d6fce6b2025e311b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water2_pipo.png-3cfe20803fa140c9d6fce6b2025e311b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water2_pipo.png-4ef7350fa63c2004b4c5f1770af084a2.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water2_pipo.png-4ef7350fa63c2004b4c5f1770af084a2.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water2_pipo.png-506e3a773f4464d9932e0583c0a3b08c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water2_pipo.png-506e3a773f4464d9932e0583c0a3b08c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water2_pipo.png-54475dd3d68e6dc9d4b1ff6f03348d86.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water2_pipo.png-54475dd3d68e6dc9d4b1ff6f03348d86.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water2_pipo.png-9d2281ba622b07d9247603c3d5f0ef61.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water2_pipo.png-9d2281ba622b07d9247603c3d5f0ef61.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water2_pipo.png-ca905b6ff09bfd7bd671de3c11816585.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water2_pipo.png-ca905b6ff09bfd7bd671de3c11816585.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_Cave1_pipo.png-0e982aba937094190cd8ba96af6b527e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_Cave1_pipo.png-0e982aba937094190cd8ba96af6b527e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_Cave1_pipo.png-3d65acdff8b903305d96dd84f306c392.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_Cave1_pipo.png-3d65acdff8b903305d96dd84f306c392.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_Cave1_pipo.png-797cd920731dc8910cbf342ad9fa9eb7.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_Cave1_pipo.png-797cd920731dc8910cbf342ad9fa9eb7.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_Cave1_pipo.png-a71f7eb47c224ff3e2919d3f00e53929.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_Cave1_pipo.png-a71f7eb47c224ff3e2919d3f00e53929.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_Cave1_pipo.png-e67d626920bb649906209ba5d99acd92.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_Cave1_pipo.png-e67d626920bb649906209ba5d99acd92.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_Cave1_pipo.png-fb7f46d011787df9b8d0351e78976bcc.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_Cave1_pipo.png-fb7f46d011787df9b8d0351e78976bcc.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_pipo.png-60ab25b74d09165d82489ee004df21a1.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_pipo.png-60ab25b74d09165d82489ee004df21a1.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_pipo.png-76fbfe6b6e9c7d1b39929b59185aecd2.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_pipo.png-76fbfe6b6e9c7d1b39929b59185aecd2.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_pipo.png-7882ccbdd0adc7a974486661e6b9dfaf.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_pipo.png-7882ccbdd0adc7a974486661e6b9dfaf.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_pipo.png-81edad87eafa1335c31af8561b8a9aef.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_pipo.png-81edad87eafa1335c31af8561b8a9aef.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_pipo.png-c0b495fa1ac66628ef455f60f037de5c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_pipo.png-c0b495fa1ac66628ef455f60f037de5c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_pipo.png-efad0b6b5bea2a378b0388a8efe8b8c1.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water3_pipo.png-efad0b6b5bea2a378b0388a8efe8b8c1.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water4_pipo.png-3b10f6df198e0dd5a365d7af8fc49092.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water4_pipo.png-3b10f6df198e0dd5a365d7af8fc49092.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water4_pipo.png-7536e37312c1509ef42f2ce16330c011.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water4_pipo.png-7536e37312c1509ef42f2ce16330c011.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water4_pipo.png-799fb201fe3c9f4f741c0e58e94c03f8.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water4_pipo.png-799fb201fe3c9f4f741c0e58e94c03f8.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water4_pipo.png-94093cbabf70946cb1c2ebc3a38c8eb2.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water4_pipo.png-94093cbabf70946cb1c2ebc3a38c8eb2.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water4_pipo.png-ab63cf182c1bbf36ac0592de227b7fd1.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water4_pipo.png-ab63cf182c1bbf36ac0592de227b7fd1.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water4_pipo.png-edd079dde8591d0963a3678de3d83092.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water4_pipo.png-edd079dde8591d0963a3678de3d83092.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water5_pipo.png-005c7ffef63fe564afd83b3e9568e9cd.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water5_pipo.png-005c7ffef63fe564afd83b3e9568e9cd.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water5_pipo.png-13006be2cacc24f0ad04abddae5c848b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water5_pipo.png-13006be2cacc24f0ad04abddae5c848b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water5_pipo.png-15038ecf39683369cae867cbe3472846.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water5_pipo.png-15038ecf39683369cae867cbe3472846.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water5_pipo.png-422cd6c6847793b6fa781ec4c0e78320.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water5_pipo.png-422cd6c6847793b6fa781ec4c0e78320.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water5_pipo.png-89aadf4abf17ce3647272936e0f2edc6.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water5_pipo.png-89aadf4abf17ce3647272936e0f2edc6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water5_pipo.png-ab0f71f84dc5a76036b585e58478c596.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water5_pipo.png-ab0f71f84dc5a76036b585e58478c596.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water6_pipo.png-04ef8c7f4987cc49aae562380b883612.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water6_pipo.png-04ef8c7f4987cc49aae562380b883612.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water6_pipo.png-45e36f6b099057acdfcd200debc74c0a.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water6_pipo.png-45e36f6b099057acdfcd200debc74c0a.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water6_pipo.png-91ffad363f4a8377d7a9c362d8d86ac5.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water6_pipo.png-91ffad363f4a8377d7a9c362d8d86ac5.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water6_pipo.png-aecb0aa6f66a511c69c7d5ad08009ae6.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water6_pipo.png-aecb0aa6f66a511c69c7d5ad08009ae6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water6_pipo.png-e47d791c1468f3dcc6ed186f382af76d.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water6_pipo.png-e47d791c1468f3dcc6ed186f382af76d.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water6_pipo.png-f8e750fba9b0af988c4ff9e8115f0dfc.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water6_pipo.png-f8e750fba9b0af988c4ff9e8115f0dfc.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water7_pipo.png-03b060be81265c2ee654a18a3e202a9e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water7_pipo.png-03b060be81265c2ee654a18a3e202a9e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water7_pipo.png-04e5153fc131d1da4c88d3d9ee28752c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water7_pipo.png-04e5153fc131d1da4c88d3d9ee28752c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water7_pipo.png-31f30714944a6c93ef189789146b69c4.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water7_pipo.png-31f30714944a6c93ef189789146b69c4.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water7_pipo.png-c66ca1f089f2c742f3b0764620c0ef70.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water7_pipo.png-c66ca1f089f2c742f3b0764620c0ef70.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water7_pipo.png-cac0473e038e45191280c23b182aabcf.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water7_pipo.png-cac0473e038e45191280c23b182aabcf.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water7_pipo.png-dd9e24997d8b6eb528fc290e25f13881.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water7_pipo.png-dd9e24997d8b6eb528fc290e25f13881.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall1_pipo.png-15fd65dec00e40c6dc70cf5b39173bad.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall1_pipo.png-15fd65dec00e40c6dc70cf5b39173bad.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall1_pipo.png-31e317aa03a59e343973eabe006073ce.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall1_pipo.png-31e317aa03a59e343973eabe006073ce.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall1_pipo.png-77d7d1cbe61196f279587ec5bb2e3b54.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall1_pipo.png-77d7d1cbe61196f279587ec5bb2e3b54.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall1_pipo.png-953b836aa6019849fdc4fe0dc793d7b1.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall1_pipo.png-953b836aa6019849fdc4fe0dc793d7b1.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall1_pipo.png-a8499c69caaf737d7ff5dcb7d9f49159.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall1_pipo.png-a8499c69caaf737d7ff5dcb7d9f49159.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall1_pipo.png-ac0d2c2446d66ff401f42c720a8dafe0.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall1_pipo.png-ac0d2c2446d66ff401f42c720a8dafe0.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall2_pipo.png-05121877e23102a2b436c834a2875522.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall2_pipo.png-05121877e23102a2b436c834a2875522.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall2_pipo.png-54ca288eb4d6156265b121e8db3f1bbf.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall2_pipo.png-54ca288eb4d6156265b121e8db3f1bbf.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall2_pipo.png-634fdd32f93fa42425397fbd115016df.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall2_pipo.png-634fdd32f93fa42425397fbd115016df.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall2_pipo.png-7788f8b86557feb63a2c9edbde0839d9.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall2_pipo.png-7788f8b86557feb63a2c9edbde0839d9.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall2_pipo.png-783bdb5eed8cdb422e7fc266646f4597.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall2_pipo.png-783bdb5eed8cdb422e7fc266646f4597.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall2_pipo.png-ee55c42037a1fd6d096a42072a5f5a17.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall2_pipo.png-ee55c42037a1fd6d096a42072a5f5a17.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall3_pipo.png-2a3174e9e49e7e8fc250774112ad8af2.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall3_pipo.png-2a3174e9e49e7e8fc250774112ad8af2.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall3_pipo.png-524ed78b551faabe3f9738de8ab699e5.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall3_pipo.png-524ed78b551faabe3f9738de8ab699e5.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall3_pipo.png-9404256b1a36046a3e42872876df23a9.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall3_pipo.png-9404256b1a36046a3e42872876df23a9.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall3_pipo.png-a5b61ab97b60a27860e9415f08964597.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall3_pipo.png-a5b61ab97b60a27860e9415f08964597.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall3_pipo.png-bbd0a5dfa5277f3bed95a5b092f84ddf.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall3_pipo.png-bbd0a5dfa5277f3bed95a5b092f84ddf.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall3_pipo.png-dbf48ff568e9aefad3af1983d9109c9e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall3_pipo.png-dbf48ff568e9aefad3af1983d9109c9e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall_pipo.png-3fcee97ac9c8b8971de2593a58816390.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]WaterFall_pipo.png-3fcee97ac9c8b8971de2593a58816390.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water_pipo.png-d6c08d5d9f1d96f6e167bdbdf79442bc.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[A]Water_pipo.png-d6c08d5d9f1d96f6e167bdbdf79442bc.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[Base]BaseChip_pipo.png-cca7cc4cd95e1abb118b27863e910928.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[Base]BaseChip_pipo.png-cca7cc4cd95e1abb118b27863e910928.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[Base]BaseChip_pipo.png-ecc504dce0659d899864ed2f5fb01d73.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/[Base]BaseChip_pipo.png-ecc504dce0659d899864ed2f5fb01d73.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/addwork.png-ef5824546256e6ab529d61ecd9de618a.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/addwork.png-ef5824546256e6ab529d61ecd9de618a.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrow.png-dd82d77f23162fc4311a9719927c1243.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrow.png-dd82d77f23162fc4311a9719927c1243.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrow.png-e38a093cddc75d9e5149f262e33d7538.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrow.png-e38a093cddc75d9e5149f262e33d7538.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowBeige_left.png-c6b28b42cbb7a7b9cc344086b53442d4.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowBeige_left.png-c6b28b42cbb7a7b9cc344086b53442d4.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowBeige_right.png-f2cd410e371e08b1524b520765a823ba.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowBeige_right.png-f2cd410e371e08b1524b520765a823ba.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowBlue_left.png-6243d0715e4e709a64a0c294b6ab12a6.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowBlue_left.png-6243d0715e4e709a64a0c294b6ab12a6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowBlue_right.png-2d4975042e7dfdea043b4e431b820748.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowBlue_right.png-2d4975042e7dfdea043b4e431b820748.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowBrown_left.png-de1af14d08cedc80d69820196b062e74.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowBrown_left.png-de1af14d08cedc80d69820196b062e74.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowBrown_right.png-15506202564e86624f97cd8b583e7537.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowBrown_right.png-15506202564e86624f97cd8b583e7537.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowSilver_left.png-9e9960c6b8e2bcac7375eca82c944b74.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowSilver_left.png-9e9960c6b8e2bcac7375eca82c944b74.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowSilver_right.png-285847396b789564fc180587e4742fb6.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/arrowSilver_right.png-285847396b789564fc180587e4742fb6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/assets-all.png-e7b1b908614433cd05c642fcc2c489e4.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/assets-all.png-e7b1b908614433cd05c642fcc2c489e4.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack - pitchfork shield.png-83c19280b636c1ebb89a93c4b2a7f9d5.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack - pitchfork shield.png-83c19280b636c1ebb89a93c4b2a7f9d5.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack - pitchfork.png-f9fa57fbf2374b7f5e7078f74ffeeff3.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack - pitchfork.png-f9fa57fbf2374b7f5e7078f74ffeeff3.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack - sword shield.png-9c0db1e81df2c52589d1affa3a3177ed.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack - sword shield.png-9c0db1e81df2c52589d1affa3a3177ed.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack - sword.png-5ef8e1b17eb22f986976dad8acf3019c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack - sword.png-5ef8e1b17eb22f986976dad8acf3019c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack - vanilla.png-5af02b2b9278b0f629307c6e551258ec.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack - vanilla.png-5af02b2b9278b0f629307c6e551258ec.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack_hit_01.ogg-d789a89a3c214de8186ad9c69754741e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack_hit_01.ogg-d789a89a3c214de8186ad9c69754741e.oggvorbisstr` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack_hit_01.wav-1d5b227fc34147e20b9ebdedb0aa651f.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack_hit_01.wav-1d5b227fc34147e20b9ebdedb0aa651f.sample` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack_swing_01.ogg-55d68543aba3fe14d5ee4dd16286f1c4.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack_swing_01.ogg-55d68543aba3fe14d5ee4dd16286f1c4.oggvorbisstr` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack_swing_01.wav-4d3baa1bac9be3a293189bd185bba9c1.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/attack_swing_01.wav-4d3baa1bac9be3a293189bd185bba9c1.sample` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBack_horizontalLeft.png-d751c3f31384bd1ece39910854ad508f.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBack_horizontalLeft.png-d751c3f31384bd1ece39910854ad508f.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBack_horizontalMid.png-fcb099f79b86982e801e3fa47b58973e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBack_horizontalMid.png-fcb099f79b86982e801e3fa47b58973e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBack_horizontalRight.png-ab2f5501f7d31b3aec267a12e7251f01.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBack_horizontalRight.png-ab2f5501f7d31b3aec267a12e7251f01.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBack_verticalBottom.png-f5ac30dcf928bde798bbeb90e1863c78.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBack_verticalBottom.png-f5ac30dcf928bde798bbeb90e1863c78.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBack_verticalMid.png-681baaddf8aa21e116374eb219aecacc.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBack_verticalMid.png-681baaddf8aa21e116374eb219aecacc.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBack_verticalTop.png-071aca744abf5c8c49bb3b277d089cff.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBack_verticalTop.png-071aca744abf5c8c49bb3b277d089cff.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBlue_horizontalBlue.png-66a7f344955c80da2944bb43e3ac0267.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBlue_horizontalBlue.png-66a7f344955c80da2944bb43e3ac0267.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBlue_horizontalLeft.png-1160f00b4dc6e0f9fc653586bd4832df.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBlue_horizontalLeft.png-1160f00b4dc6e0f9fc653586bd4832df.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBlue_horizontalRight.png-8bbc8ac2b7f443e481b3177c081dfad3.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBlue_horizontalRight.png-8bbc8ac2b7f443e481b3177c081dfad3.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBlue_verticalBottom.png-8f1455bbd0fe5a322e82229e1dd2678a.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBlue_verticalBottom.png-8f1455bbd0fe5a322e82229e1dd2678a.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBlue_verticalMid.png-bf6c0896beede9566a9b1a4d6e2962a2.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBlue_verticalMid.png-bf6c0896beede9566a9b1a4d6e2962a2.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBlue_verticalTop.png-e21e0c680e9fe48bbece417f42661fb2.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barBlue_verticalTop.png-e21e0c680e9fe48bbece417f42661fb2.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barGreen_horizontalLeft.png-855a670f26d1c2b7251a8feea0c312f3.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barGreen_horizontalLeft.png-855a670f26d1c2b7251a8feea0c312f3.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barGreen_horizontalMid.png-af5fd23242ab487ad7b21de2aa9d8cd4.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barGreen_horizontalMid.png-af5fd23242ab487ad7b21de2aa9d8cd4.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barGreen_horizontalRight.png-976dcfb22a801557001ca1db5a52c4ae.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barGreen_horizontalRight.png-976dcfb22a801557001ca1db5a52c4ae.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barGreen_verticalBottom.png-2a2667f91186421d887e30015811ad13.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barGreen_verticalBottom.png-2a2667f91186421d887e30015811ad13.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barGreen_verticalMid.png-9871c3594f689578d1b1ada3495a3321.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barGreen_verticalMid.png-9871c3594f689578d1b1ada3495a3321.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barGreen_verticalTop.png-f06afef16843f671e46d84ad8ed2c513.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barGreen_verticalTop.png-f06afef16843f671e46d84ad8ed2c513.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barRed_horizontalLeft.png-f8a0414dd845920e9ca7765a714b3cc6.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barRed_horizontalLeft.png-f8a0414dd845920e9ca7765a714b3cc6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barRed_horizontalMid.png-29c0db2af4aaadc7e61713bca63b14ca.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barRed_horizontalMid.png-29c0db2af4aaadc7e61713bca63b14ca.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barRed_horizontalRight.png-12cf77e47a67cd386d76fd20d54cc0d1.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barRed_horizontalRight.png-12cf77e47a67cd386d76fd20d54cc0d1.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barRed_verticalBottom.png-f563a9e246a3a5acde61190eb5a8b72e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barRed_verticalBottom.png-f563a9e246a3a5acde61190eb5a8b72e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barRed_verticalMid.png-d33fb839361bb786673f09609ef76ebd.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barRed_verticalMid.png-d33fb839361bb786673f09609ef76ebd.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barRed_verticalTop.png-5866adb9904ae472770d27831577c06d.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barRed_verticalTop.png-5866adb9904ae472770d27831577c06d.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barYellow_horizontalLeft.png-de09ed3957d6b5bdd832e60a410d17fd.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barYellow_horizontalLeft.png-de09ed3957d6b5bdd832e60a410d17fd.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barYellow_horizontalMid.png-23122517bc8f0e1fdfbb479f6a154023.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barYellow_horizontalMid.png-23122517bc8f0e1fdfbb479f6a154023.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barYellow_horizontalRight.png-057d070b13475b8e58d7d9dff1c0e799.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barYellow_horizontalRight.png-057d070b13475b8e58d7d9dff1c0e799.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barYellow_verticalBottom.png-7018aa1adfbe99376aa30e3d5c4fa07d.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barYellow_verticalBottom.png-7018aa1adfbe99376aa30e3d5c4fa07d.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barYellow_verticalMid.png-ae60c2ef49e996f729ed0da041248c28.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barYellow_verticalMid.png-ae60c2ef49e996f729ed0da041248c28.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barYellow_verticalTop.png-bb6d84f5cfbf4ecf8644a74532247b81.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/barYellow_verticalTop.png-bb6d84f5cfbf4ecf8644a74532247b81.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/battlemage_presentation_card.png-79e51a8dc9ee1ae43837195686156252.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/battlemage_presentation_card.png-79e51a8dc9ee1ae43837195686156252.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/battlemage_walk_sheet.png-706bc6b7cbb6b208564f05f5ffd7c24d.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/battlemage_walk_sheet.png-706bc6b7cbb6b208564f05f5ffd7c24d.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/bg3-alignment-chart-v0-lb31w8gqv26c1.webp-7c7a42b01ff754247b28158bb2bce86c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/bg3-alignment-chart-v0-lb31w8gqv26c1.webp-7c7a42b01ff754247b28158bb2bce86c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/bridges.png-4a7e25d7889e563863d2837e41fc0dce.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/bridges.png-4a7e25d7889e563863d2837e41fc0dce.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_beige.png-a510d7b58a96ace6946d9fbd71231a53.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_beige.png-a510d7b58a96ace6946d9fbd71231a53.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_beige_pressed.png-1c4239f2dc6d7c9d8c80410ac0b7c147.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_beige_pressed.png-1c4239f2dc6d7c9d8c80410ac0b7c147.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_blue.png-6a1f9dc219d458e8d69f63eac9245f16.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_blue.png-6a1f9dc219d458e8d69f63eac9245f16.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_blue_pressed.png-aadf9ce180eb8bde1fbe3b7bfb145f47.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_blue_pressed.png-aadf9ce180eb8bde1fbe3b7bfb145f47.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_brown.png-b0f5f72dc6acbab636d2f968ca899fd6.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_brown.png-b0f5f72dc6acbab636d2f968ca899fd6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_brown_pressed.png-a78131f5370bbfe71e78712d9771b477.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_brown_pressed.png-a78131f5370bbfe71e78712d9771b477.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_grey.png-c054673b24f321e5fe5dcdac69406866.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_grey.png-c054673b24f321e5fe5dcdac69406866.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_grey_pressed.png-9da97574cb11d93b934d1ac25ee2ec1b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonLong_grey_pressed.png-9da97574cb11d93b934d1ac25ee2ec1b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonRound_beige.png-8a4bd828cd31495705378ff55e98f218.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonRound_beige.png-8a4bd828cd31495705378ff55e98f218.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonRound_blue.png-3e419afa12f11d9670f88fa6b01a2704.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonRound_blue.png-3e419afa12f11d9670f88fa6b01a2704.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonRound_brown.png-35c3fddfbf03366cd114bdd15c2c5cef.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonRound_brown.png-35c3fddfbf03366cd114bdd15c2c5cef.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonRound_grey.png-e9d2719543579da302e074c70e88ffc9.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonRound_grey.png-e9d2719543579da302e074c70e88ffc9.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_beige.png-a7863bc8592bd880d86daf549364439c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_beige.png-a7863bc8592bd880d86daf549364439c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_beige_pressed.png-8026de41d4b6941b007756363d28fd52.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_beige_pressed.png-8026de41d4b6941b007756363d28fd52.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_blue.png-7e9c16a08fdf9fbdf9d1586aca1c2fcf.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_blue.png-7e9c16a08fdf9fbdf9d1586aca1c2fcf.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_blue_pressed.png-c10fc27be45881fde243074512f71fc9.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_blue_pressed.png-c10fc27be45881fde243074512f71fc9.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_brown.png-5dc6e57dec451508a8dec1d3535d82b3.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_brown.png-5dc6e57dec451508a8dec1d3535d82b3.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_brown_pressed.png-3bdc78ddadcb90836727ad3328e96331.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_brown_pressed.png-3bdc78ddadcb90836727ad3328e96331.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_grey.png-be107623ec477b64cfc340d0f4bdf892.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_grey.png-be107623ec477b64cfc340d0f4bdf892.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_grey_pressed.png-c15ac006a4b73e4a88e7789a1fc0ac52.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/buttonSquare_grey_pressed.png-c15ac006a4b73e4a88e7789a1fc0ac52.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/circle.png-ffee12f63871591bbd911ee1413e333c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/circle.png-ffee12f63871591bbd911ee1413e333c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorGauntlet_blue.png-49ffa70dbce425ea8bed2fef8b65cbb4.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorGauntlet_blue.png-49ffa70dbce425ea8bed2fef8b65cbb4.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorGauntlet_bronze.png-f256a4ad682e0de30d80771225ec46c1.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorGauntlet_bronze.png-f256a4ad682e0de30d80771225ec46c1.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorGauntlet_grey.png-f598e0ef6c56ef5f6a14c7988cd00002.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorGauntlet_grey.png-f598e0ef6c56ef5f6a14c7988cd00002.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorHand_beige.png-373d2606c110f0d1286459821aebf1b4.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorHand_beige.png-373d2606c110f0d1286459821aebf1b4.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorHand_blue.png-4f5c98bf726f81e3219cc145740374c9.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorHand_blue.png-4f5c98bf726f81e3219cc145740374c9.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorHand_grey.png-b30505cd16e722debf23d39a4bca0903.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorHand_grey.png-b30505cd16e722debf23d39a4bca0903.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorSword_bronze.png-fe733e3db44ea6e6590c647bb2af6c37.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorSword_bronze.png-fe733e3db44ea6e6590c647bb2af6c37.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorSword_gold.png-2ec3dd0de4fc6566923792a0d4fe4a1a.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorSword_gold.png-2ec3dd0de4fc6566923792a0d4fe4a1a.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorSword_silver.png-4f25663493fffd6c034d9310a24ae420.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/cursorSword_silver.png-4f25663493fffd6c034d9310a24ae420.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/dialogue_advance_01.ogg-6bdf0ae2283740cc6354fdb8d0afb97f.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/dialogue_advance_01.ogg-6bdf0ae2283740cc6354fdb8d0afb97f.oggvorbisstr` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/dialogue_advance_01.wav-6a17dfe9590be0a529404eae1c7dc41e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/dialogue_advance_01.wav-6a17dfe9590be0a529404eae1c7dc41e.sample` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/dirt-tiles-32x32.png-4f3c7563989885abbf060f29fef1bd85.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/dirt-tiles-32x32.png-4f3c7563989885abbf060f29fef1bd85.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/fighter_presentation_card.png-8cdc1b8b209ab6064a8dcb9ffcff4dc8.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/fighter_presentation_card.png-8cdc1b8b209ab6064a8dcb9ffcff4dc8.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/fighter_walk_sheet.png-c7d80398457da230d1f519b513800405.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/fighter_walk_sheet.png-c7d80398457da230d1f519b513800405.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/fort.png-35e535b69867cfcb8a57ddc73a2b903c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/fort.png-35e535b69867cfcb8a57ddc73a2b903c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/gate_open_01.ogg-9e4e084fb63533bd124d1e2afb0eea06.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/gate_open_01.ogg-9e4e084fb63533bd124d1e2afb0eea06.oggvorbisstr` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/gate_open_01.wav-cb08a03960fa955243605d1dce803ba4.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/gate_open_01.wav-cb08a03960fa955243605d1dce803ba4.sample` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/goblinsword.png-d1e739419ef3bb21c8a455c89faab52e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/goblinsword.png-d1e739419ef3bb21c8a455c89faab52e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/grass.png-eae8a2647fcf2040ebb41fdf18f5dc94.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/grass.png-eae8a2647fcf2040ebb41fdf18f5dc94.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/ground-tiles-32x32.png-8fde063976c667259119e5cc27bc4cd9.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/ground-tiles-32x32.png-8fde063976c667259119e5cc27bc4cd9.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCheck_beige.png-cf2b66ea1cf061e93837756ebc0ad71b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCheck_beige.png-cf2b66ea1cf061e93837756ebc0ad71b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCheck_blue.png-c2379b6e0c46cff82c29db39a301deb6.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCheck_blue.png-c2379b6e0c46cff82c29db39a301deb6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCheck_bronze.png-bd291946b58e0dcaac94afb027349154.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCheck_bronze.png-bd291946b58e0dcaac94afb027349154.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCheck_grey.png-691f3728ea0d80351dc91f3fefb27114.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCheck_grey.png-691f3728ea0d80351dc91f3fefb27114.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCircle_beige.png-f6db3ddc9ad050ac3bd04720f7d281f5.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCircle_beige.png-f6db3ddc9ad050ac3bd04720f7d281f5.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCircle_blue.png-f7af50608036a1681ad2477bff906719.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCircle_blue.png-f7af50608036a1681ad2477bff906719.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCircle_brown.png-e4a3b094fa629e61989c05b8b279485d.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCircle_brown.png-e4a3b094fa629e61989c05b8b279485d.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCircle_grey.png-c24c70fb4e38467f8e44655dbd3aaf9a.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCircle_grey.png-c24c70fb4e38467f8e44655dbd3aaf9a.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCross_beige.png-9be4a749c90a6bb1aba14ce4d1a013a9.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCross_beige.png-9be4a749c90a6bb1aba14ce4d1a013a9.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCross_blue.png-0a9c8427b02c1dddd1a356e16927c713.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCross_blue.png-0a9c8427b02c1dddd1a356e16927c713.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCross_brown.png-5862bf8e4d937675d77416a5f6606ee4.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCross_brown.png-5862bf8e4d937675d77416a5f6606ee4.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCross_grey.png-507a33a71f0076ad460861f26ed3652a.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/iconCross_grey.png-507a33a71f0076ad460861f26ed3652a.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/items.png-4d16d683f23dc365e9746ab0b4268d3a.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/items.png-4d16d683f23dc365e9746ab0b4268d3a.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/jungle.png-7399b77681b3106179ed0d82ee4c285a.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/jungle.png-7399b77681b3106179ed0d82ee4c285a.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/keep.png-605b9965270fc2a4a0b96bea389a612c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/keep.png-605b9965270fc2a4a0b96bea389a612c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/keep_outer.png-84f125ae8af0b54395a2b5235aa8a3d6.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/keep_outer.png-84f125ae8af0b54395a2b5235aa8a3d6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/kobold_presentation_card.png-00e1bf8ef5538146f956b32e7c8d6961.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/kobold_presentation_card.png-00e1bf8ef5538146f956b32e7c8d6961.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/loot_pickup_01.ogg-333c98b639b2e102c0637561cdd980b5.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/loot_pickup_01.ogg-333c98b639b2e102c0637561cdd980b5.oggvorbisstr` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/loot_pickup_01.wav-5516ff7b9d18ec63aab8c6a6df47d5c1.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/loot_pickup_01.wav-5516ff7b9d18ec63aab8c6a6df47d5c1.sample` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/map_battlemage.png-8a43d35f1986fbd447043085a10baa44.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/map_battlemage.png-8a43d35f1986fbd447043085a10baa44.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/map_fighter.png-6c971d72132fac60bfd1df6de5c17326.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/map_fighter.png-6c971d72132fac60bfd1df6de5c17326.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/map_npc.png-17c773d93f56c367b8e73e0857ac6a4b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/map_npc.png-17c773d93f56c367b8e73e0857ac6a4b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/mine_battle_backdrop.png-9ac6ffe77aaf33aa52868dc6f6ba5a23.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/mine_battle_backdrop.png-9ac6ffe77aaf33aa52868dc6f6ba5a23.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/moon-female.png-5d0d3e1f6909cd5e5e1153fb9292e30c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/moon-female.png-5d0d3e1f6909cd5e5e1153fb9292e30c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/moon-male.png-1e1f4821ee9a02fe711526e7fea13f24.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/moon-male.png-1e1f4821ee9a02fe711526e7fea13f24.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/moon.png-defc0c05af458701559b8865f4daf826.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/moon.png-defc0c05af458701559b8865f4daf826.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/mountains.png-0b4a980b733b2b238e0540486a75221d.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/mountains.png-0b4a980b733b2b238e0540486a75221d.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/mountains_bridge.png-6b15b6757874b0193367915c486198b6.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/mountains_bridge.png-6b15b6757874b0193367915c486198b6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/nomoon-female.png-2d09cf4400c8656f9315c07bdd8dff2b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/nomoon-female.png-2d09cf4400c8656f9315c07bdd8dff2b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/nomoon-male.png-d42f1367a995147d1457507600c7bf75.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/nomoon-male.png-d42f1367a995147d1457507600c7bf75.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panelInset_beige.png-cd8bf46d5750584f24989e794f803060.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panelInset_beige.png-cd8bf46d5750584f24989e794f803060.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panelInset_beigeLight.png-2b1a03149a6ba7ec0369c62dcaaccc97.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panelInset_beigeLight.png-2b1a03149a6ba7ec0369c62dcaaccc97.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panelInset_blue.png-60563df3ed913476766166c40cbe0f54.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panelInset_blue.png-60563df3ed913476766166c40cbe0f54.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panelInset_brown.png-849cd45eb5b896aa27e600ae9ddc82e5.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panelInset_brown.png-849cd45eb5b896aa27e600ae9ddc82e5.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panel_beige.png-8b705a46a3e6c9540699f75602618bfa.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panel_beige.png-8b705a46a3e6c9540699f75602618bfa.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panel_beigeLight.png-e06adcba7a317298e008748287eb8543.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panel_beigeLight.png-e06adcba7a317298e008748287eb8543.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panel_blue.png-c41681fb644006857a02d3de0c23fbd5.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panel_blue.png-c41681fb644006857a02d3de0c23fbd5.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panel_brown.png-4bcdbd49d8bd3e7617bb3df64e42c981.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/panel_brown.png-4bcdbd49d8bd3e7617bb3df64e42c981.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/plants.png-192a9ce891e490a6f026ac8aacfd4b25.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/plants.png-192a9ce891e490a6f026ac8aacfd4b25.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/plants_modulate.png-e058af7c9816118afc62c70c76c5610e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/plants_modulate.png-e058af7c9816118afc62c70c76c5610e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/plants_stems.png-4f63e0e4d4f5207ae36ed685fa767751.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/plants_stems.png-4f63e0e4d4f5207ae36ed685fa767751.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/plants_stems_modulate.png-8aeea92dd7658faa57b606ec8e1f892d.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/plants_stems_modulate.png-8aeea92dd7658faa57b606ec8e1f892d.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/plus_shape.png-a803ac12a52fba9d9f0db0b9f50d564e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/plus_shape.png-a803ac12a52fba9d9f0db0b9f50d564e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/preview.png-53bdd84241ed3c4ab40a9d2587fa9207.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/preview.png-53bdd84241ed3c4ab40a9d2587fa9207.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/rope_bridge.png-873f3f7035f9995c64036738d7df3b06.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/rope_bridge.png-873f3f7035f9995c64036738d7df3b06.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/sample map demo.png-abf157edfe30216b2453f4db14482d1c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/sample map demo.png-abf157edfe30216b2453f4db14482d1c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/sample.png-4ff23fe33ad3288c05ef5dcd7d457d66.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/sample.png-4ff23fe33ad3288c05ef5dcd7d457d66.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/sample.png-c2c22c742ebe301617301514a563fc0e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/sample.png-c2c22c742ebe301617301514a563fc0e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/samplemap.png-d2f7c026ebb9732969535c3d20de5e20.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/samplemap.png-d2f7c026ebb9732969535c3d20de5e20.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/sand.png-785e56441295c12affd9ab5a0c2bfe65.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/sand.png-785e56441295c12affd9ab5a0c2bfe65.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/shaman_portrait.png-3f937e9631b912c9bc415dd9bd8a8cbc.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/shaman_portrait.png-3f937e9631b912c9bc415dd9bd8a8cbc.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/shaman_portrait.png-76aec38805648c5dd6f343b3111922ce.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/shaman_portrait.png-76aec38805648c5dd6f343b3111922ce.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/snow_flake.png-e1f254109b7a236f0f97b65e0f3f0ba5.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/snow_flake.png-e1f254109b7a236f0f97b65e0f3f0ba5.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/snow_flake_alternate.png-d8255419e99991de81f7260f1d22477c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/snow_flake_alternate.png-d8255419e99991de81f7260f1d22477c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/spell_cast_01.ogg-221adbd7350d86e83bc4430cdd479bb5.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/spell_cast_01.ogg-221adbd7350d86e83bc4430cdd479bb5.oggvorbisstr` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/spell_cast_01.wav-752a1a65e359107ec4b40e5f5e86f83f.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/spell_cast_01.wav-752a1a65e359107ec4b40e5f5e86f83f.sample` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/squircle.png-38989d9fd92f7e21d1735e1a88bb2b7b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/squircle.png-38989d9fd92f7e21d1735e1a88bb2b7b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/star_shape.png-0c07a3818be5d2fb0b851986e86e14cf.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/star_shape.png-0c07a3818be5d2fb0b851986e86e14cf.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/step_mine_01.ogg-419f53f70e8c8d80622c43c2108cb7d7.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/step_mine_01.ogg-419f53f70e8c8d80622c43c2108cb7d7.oggvorbisstr` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/step_mine_01.wav-7a9d931121c836f9dc95a9253846d0a1.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/step_mine_01.wav-7a9d931121c836f9dc95a9253846d0a1.sample` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/step_town_01.ogg-06f90a258ff6fceff7d528a215cc676b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/step_town_01.ogg-06f90a258ff6fceff7d528a215cc676b.oggvorbisstr` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/step_town_01.wav-a402257adb69bdc9acd7b349e2da33d6.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/step_town_01.wav-a402257adb69bdc9acd7b349e2da33d6.sample` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/stones.png-11233a0e56f4dd1018683d91dc8df152.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/stones.png-11233a0e56f4dd1018683d91dc8df152.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/tiles-all-32x32.png-a8ba496a36416b86a536c65174c95293.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/tiles-all-32x32.png-a8ba496a36416b86a536c65174c95293.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/ui_cancel_01.ogg-5ba73177c6b6e5927cfce39baf4e863f.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/ui_cancel_01.ogg-5ba73177c6b6e5927cfce39baf4e863f.oggvorbisstr` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/ui_cancel_01.wav-c306eb4846d0672e6964f74d48716a5e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/ui_cancel_01.wav-c306eb4846d0672e6964f74d48716a5e.sample` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/ui_confirm_01.ogg-7be447cf43c0b6e3e57e51354cd89454.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/ui_confirm_01.ogg-7be447cf43c0b6e3e57e51354cd89454.oggvorbisstr` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/ui_confirm_01.wav-0ca0e32f610c272740fbd064553d05a9.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/ui_confirm_01.wav-0ca0e32f610c272740fbd064553d05a9.sample` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/uipack_rpg_sheet.png-794ee113819099848194fc223aa36109.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/uipack_rpg_sheet.png-794ee113819099848194fc223aa36109.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/uipack_rpg_vector.svg-018da57e0a2d3ecb5ec1e66fa3964f08.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/uipack_rpg_vector.svg-018da57e0a2d3ecb5ec1e66fa3964f08.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/universal-lpc-sprite_male_01_full.png-7f2387067a7d871ecc20d48116ed1acc.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/universal-lpc-sprite_male_01_full.png-7f2387067a7d871ecc20d48116ed1acc.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/volc_bridge.png-76b135f6e78a0489f2aa7df47a363e06.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/volc_bridge.png-76b135f6e78a0489f2aa7df47a363e06.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/volcano.png-02818c77def98526356049211db29e7b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/volcano.png-02818c77def98526356049211db29e7b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/walk - pitchfork shield.png-dfdaa590475e188486a6d7a0f62f56ec.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/walk - pitchfork shield.png-dfdaa590475e188486a6d7a0f62f56ec.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/walk - pitchfork.png-15a5ffd642e1184fb642f8b95085af17.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/walk - pitchfork.png-15a5ffd642e1184fb642f8b95085af17.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/walk - sword shield.png-79d044b030ebf3529a2668b93cd98bc1.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/walk - sword shield.png-79d044b030ebf3529a2668b93cd98bc1.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/walk - sword.png-281d4a1692ed95979d79f05727f9df1e.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/walk - sword.png-281d4a1692ed95979d79f05727f9df1e.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/walk - vanilla.png-a7557e9d1cab63e8c5cce995e9802d0b.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/walk - vanilla.png-a7557e9d1cab63e8c5cce995e9802d0b.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/wall-tiles-32x32.png-81b67ddc3c06b97f5c77792560cd550c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/wall-tiles-32x32.png-81b67ddc3c06b97f5c77792560cd550c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/wall-transition-tiles-32x32.png-9ac90ce94533f186c61b232c5f64dc36.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/wall-transition-tiles-32x32.png-9ac90ce94533f186c61b232c5f64dc36.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/water-tiles-32x32.png-b51e589ed1802df7b4b1ace49340376c.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/water-tiles-32x32.png-b51e589ed1802df7b4b1ace49340376c.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/weapon_overlay.png-30b252b782df6f437c183cac12acd564.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/weapon_overlay.png-30b252b782df6f437c183cac12acd564.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/x_shape.png-e2dbc57f60ae29dc3f2e8021797580fc.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/x_shape.png-e2dbc57f60ae29dc3f2e8021797580fc.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/x_shape_bigger.png-7297557b667dd0a19ec8d15b93581704.ctex` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/imported/x_shape_bigger.png-7297557b667dd0a19ec8d15b93581704.md5` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\BestFitNormalShaderRD\1ccb50327c01a8b810bcb5de747a978120c151a6fea245220edca74b9c528713

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/BestFitNormalShaderRD/1ccb50327c01a8b810bcb5de747a978120c151a6fea245220edca74b9c528713/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/BestFitNormalShaderRD/1ccb50327c01a8b810bcb5de747a978120c151a6fea245220edca74b9c528713/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\BlitShaderRD\e5ff0c7f50cb8a6ee532997afb4a3408b6de2b9b03ebcb87e157b46ab8593e39

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/BlitShaderRD/e5ff0c7f50cb8a6ee532997afb4a3408b6de2b9b03ebcb87e157b46ab8593e39/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/BlitShaderRD/e5ff0c7f50cb8a6ee532997afb4a3408b6de2b9b03ebcb87e157b46ab8593e39/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\BokehDofShaderRD\5e76c505fe05e40992e5c54f643d9f694337f76d047ceb7ad161dc3efb2bf411

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/BokehDofShaderRD/5e76c505fe05e40992e5c54f643d9f694337f76d047ceb7ad161dc3efb2bf411/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/BokehDofShaderRD/5e76c505fe05e40992e5c54f643d9f694337f76d047ceb7ad161dc3efb2bf411/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\CanvasOcclusionShaderRD\6d0046303c5068df99b2c3945434a844674a052389ae79e4a466f8196188cd35

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/CanvasOcclusionShaderRD/6d0046303c5068df99b2c3945434a844674a052389ae79e4a466f8196188cd35/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CanvasOcclusionShaderRD/6d0046303c5068df99b2c3945434a844674a052389ae79e4a466f8196188cd35/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\CanvasSdfShaderRD\900d0f09be693ae3458cb4ea5ca3733f93a58e342a661879987fa33f019737ef

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/CanvasSdfShaderRD/900d0f09be693ae3458cb4ea5ca3733f93a58e342a661879987fa33f019737ef/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CanvasSdfShaderRD/900d0f09be693ae3458cb4ea5ca3733f93a58e342a661879987fa33f019737ef/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\CanvasShaderRD\44b626a71b331de17a1569c244e84cfc842a2c1ef1fe575d245ab80bccb9cb2d

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/CanvasShaderRD/44b626a71b331de17a1569c244e84cfc842a2c1ef1fe575d245ab80bccb9cb2d/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CanvasShaderRD/44b626a71b331de17a1569c244e84cfc842a2c1ef1fe575d245ab80bccb9cb2d/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CanvasShaderRD/44b626a71b331de17a1569c244e84cfc842a2c1ef1fe575d245ab80bccb9cb2d/45fb1ddc6499e56682916a355ce2839e61f42dfe.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CanvasShaderRD/44b626a71b331de17a1569c244e84cfc842a2c1ef1fe575d245ab80bccb9cb2d/45fb1ddc6499e56682916a355ce2839e61f42dfe.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CanvasShaderRD/44b626a71b331de17a1569c244e84cfc842a2c1ef1fe575d245ab80bccb9cb2d/4d35b4f1b981d75cb121b24f26aba4271d0d7a2f.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CanvasShaderRD/44b626a71b331de17a1569c244e84cfc842a2c1ef1fe575d245ab80bccb9cb2d/4d35b4f1b981d75cb121b24f26aba4271d0d7a2f.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CanvasShaderRD/44b626a71b331de17a1569c244e84cfc842a2c1ef1fe575d245ab80bccb9cb2d/8a7277c8d3ac029b087c3fa9c55de85560be5119.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CanvasShaderRD/44b626a71b331de17a1569c244e84cfc842a2c1ef1fe575d245ab80bccb9cb2d/8a7277c8d3ac029b087c3fa9c55de85560be5119.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CanvasShaderRD/44b626a71b331de17a1569c244e84cfc842a2c1ef1fe575d245ab80bccb9cb2d/c0a681ae42aa3e0b5abba232ccae0b036be455e4.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CanvasShaderRD/44b626a71b331de17a1569c244e84cfc842a2c1ef1fe575d245ab80bccb9cb2d/c0a681ae42aa3e0b5abba232ccae0b036be455e4.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CanvasShaderRD/44b626a71b331de17a1569c244e84cfc842a2c1ef1fe575d245ab80bccb9cb2d/f3e258e8f7ec2e7e740b62f3bc48ecf5c99fb0db.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CanvasShaderRD/44b626a71b331de17a1569c244e84cfc842a2c1ef1fe575d245ab80bccb9cb2d/f3e258e8f7ec2e7e740b62f3bc48ecf5c99fb0db.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\ClusterDebugShaderRD\b4dfb009f982372090b395f6b4b491ec859580fde542b137da30ba0125db4493

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/ClusterDebugShaderRD/b4dfb009f982372090b395f6b4b491ec859580fde542b137da30ba0125db4493/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/ClusterDebugShaderRD/b4dfb009f982372090b395f6b4b491ec859580fde542b137da30ba0125db4493/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\ClusterRenderShaderRD\f863243f437e1e951de711609c6bf7e68a0d9b104c70be5c6a645fa26c179ccf

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/ClusterRenderShaderRD/f863243f437e1e951de711609c6bf7e68a0d9b104c70be5c6a645fa26c179ccf/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/ClusterRenderShaderRD/f863243f437e1e951de711609c6bf7e68a0d9b104c70be5c6a645fa26c179ccf/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\ClusterStoreShaderRD\2b72ea813a706dc6e2daec5b08d2b7417fb67306de04679465b034b524dda1a8

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/ClusterStoreShaderRD/2b72ea813a706dc6e2daec5b08d2b7417fb67306de04679465b034b524dda1a8/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/ClusterStoreShaderRD/2b72ea813a706dc6e2daec5b08d2b7417fb67306de04679465b034b524dda1a8/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\CopyShaderRD\65291954e15cb018018fc5f4646a638087a0a102918f3e04c7f5bd7b36a520d7

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/CopyShaderRD/65291954e15cb018018fc5f4646a638087a0a102918f3e04c7f5bd7b36a520d7/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CopyShaderRD/65291954e15cb018018fc5f4646a638087a0a102918f3e04c7f5bd7b36a520d7/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\CopyToFbShaderRD\75d836894e920d01a392936493cf5f515633f4101cdab35e41710593c8961a8b

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/CopyToFbShaderRD/75d836894e920d01a392936493cf5f515633f4101cdab35e41710593c8961a8b/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CopyToFbShaderRD/75d836894e920d01a392936493cf5f515633f4101cdab35e41710593c8961a8b/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\CubeToDpShaderRD\d7b798ab7df6267a749663467475b673a9c91bd0a35bf9b538439cb9902d869e

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/CubeToDpShaderRD/d7b798ab7df6267a749663467475b673a9c91bd0a35bf9b538439cb9902d869e/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CubeToDpShaderRD/d7b798ab7df6267a749663467475b673a9c91bd0a35bf9b538439cb9902d869e/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\CubeToOctmapShaderRD\945003e6f9984a03124090615d87289ba22cea98da96752bf1b0cf69baef54d7

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/CubeToOctmapShaderRD/945003e6f9984a03124090615d87289ba22cea98da96752bf1b0cf69baef54d7/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/CubeToOctmapShaderRD/945003e6f9984a03124090615d87289ba22cea98da96752bf1b0cf69baef54d7/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\FsrUpscaleShaderRD\d466030127f157943b9e4db32b126dcb3d9e6a2babf5212166346d08e6261fe7

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/FsrUpscaleShaderRD/d466030127f157943b9e4db32b126dcb3d9e6a2babf5212166346d08e6261fe7/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/FsrUpscaleShaderRD/d466030127f157943b9e4db32b126dcb3d9e6a2babf5212166346d08e6261fe7/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\GiShaderRD\154eef6b59156842af8c5b85ab6829061a5637da2edc33604b1a5e5949e5294a

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/GiShaderRD/154eef6b59156842af8c5b85ab6829061a5637da2edc33604b1a5e5949e5294a/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/GiShaderRD/154eef6b59156842af8c5b85ab6829061a5637da2edc33604b1a5e5949e5294a/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\GiShaderRD\658562f56496c94b13de4ff1bebb405bc128c5befb4a4750bb72fa5cfa745e47

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/GiShaderRD/658562f56496c94b13de4ff1bebb405bc128c5befb4a4750bb72fa5cfa745e47/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\IntegrateDfgShaderRD\42d754357677605b691c5336a8e22e09202dcff00a57b792ac11d2e0b161b993

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/IntegrateDfgShaderRD/42d754357677605b691c5336a8e22e09202dcff00a57b792ac11d2e0b161b993/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/IntegrateDfgShaderRD/42d754357677605b691c5336a8e22e09202dcff00a57b792ac11d2e0b161b993/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\LuminanceReduceShaderRD\ef89847c3d5789777bf23f6024aa0d004fdc3a7fe82c8bf865c3946f50157f75

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/LuminanceReduceShaderRD/ef89847c3d5789777bf23f6024aa0d004fdc3a7fe82c8bf865c3946f50157f75/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/LuminanceReduceShaderRD/ef89847c3d5789777bf23f6024aa0d004fdc3a7fe82c8bf865c3946f50157f75/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\MotionVectorsShaderRD\e33ee4540533d576bfe475cc499a9491db25293c3cc5ae811495d43f58649020

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/MotionVectorsShaderRD/e33ee4540533d576bfe475cc499a9491db25293c3cc5ae811495d43f58649020/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/MotionVectorsShaderRD/e33ee4540533d576bfe475cc499a9491db25293c3cc5ae811495d43f58649020/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\MotionVectorsStoreShaderRD\acd09c2bad11ab393b69aaa2371e596e1cbf9903d3cdf14678c2ff60d9c3f163

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/MotionVectorsStoreShaderRD/acd09c2bad11ab393b69aaa2371e596e1cbf9903d3cdf14678c2ff60d9c3f163/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\OctmapDownsamplerShaderRD\b5d716a2f281f18de3f8145675905257c71ed306b08187f196135b4d6b900d18

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/OctmapDownsamplerShaderRD/b5d716a2f281f18de3f8145675905257c71ed306b08187f196135b4d6b900d18/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/OctmapDownsamplerShaderRD/b5d716a2f281f18de3f8145675905257c71ed306b08187f196135b4d6b900d18/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\OctmapFilterShaderRD\29563446a265b7dd42bb80d9d6e3dc4d423069662549f27f646ae4dc33dd669a

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/OctmapFilterShaderRD/29563446a265b7dd42bb80d9d6e3dc4d423069662549f27f646ae4dc33dd669a/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/OctmapFilterShaderRD/29563446a265b7dd42bb80d9d6e3dc4d423069662549f27f646ae4dc33dd669a/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\OctmapRoughnessShaderRD\5e2dc8eaf1a38f928f118fb3b4ec9041422acb08ba3628df371772294faef0a4

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/OctmapRoughnessShaderRD/5e2dc8eaf1a38f928f118fb3b4ec9041422acb08ba3628df371772294faef0a4/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/OctmapRoughnessShaderRD/5e2dc8eaf1a38f928f118fb3b4ec9041422acb08ba3628df371772294faef0a4/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\ParticlesCopyShaderRD\07564cb3473afac407c6bcff5eeecd5e1775822696a97e9598ea6df01e255aa9

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/ParticlesCopyShaderRD/07564cb3473afac407c6bcff5eeecd5e1775822696a97e9598ea6df01e255aa9/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/ParticlesCopyShaderRD/07564cb3473afac407c6bcff5eeecd5e1775822696a97e9598ea6df01e255aa9/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\ParticlesShaderRD\06a8e27fb2eb40a42c7d1c26614ce38ae841d0048941bee0ae85d930f4cd7c10

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/ParticlesShaderRD/06a8e27fb2eb40a42c7d1c26614ce38ae841d0048941bee0ae85d930f4cd7c10/f128cab0b22fb7e0d9f023d6cdb81309be392d95.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/ParticlesShaderRD/06a8e27fb2eb40a42c7d1c26614ce38ae841d0048941bee0ae85d930f4cd7c10/f128cab0b22fb7e0d9f023d6cdb81309be392d95.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\ResolveShaderRD\62ad9cf399fd17bc950adc9b1604f70db504a8c531198a947df8f6d8dcd16b34

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/ResolveShaderRD/62ad9cf399fd17bc950adc9b1604f70db504a8c531198a947df8f6d8dcd16b34/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/ResolveShaderRD/62ad9cf399fd17bc950adc9b1604f70db504a8c531198a947df8f6d8dcd16b34/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SceneForwardClusteredShaderRD\1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/111f8cfd3c260d918df85827eb251dc36a43cb13.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/111f8cfd3c260d918df85827eb251dc36a43cb13.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/35a078cb7dc07df55e460ed1a913486a68ab6bb0.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/35a078cb7dc07df55e460ed1a913486a68ab6bb0.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/3d6fc53bad5e871b1b878eb1a4ed0a0fcec449cb.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/7412c254abd0f944fb53942228920fe187f1d723.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/7412c254abd0f944fb53942228920fe187f1d723.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/7a57964a6a80c226a1011fb78edbda41d2219632.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/7a57964a6a80c226a1011fb78edbda41d2219632.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/7a6b05ba6ca90f8a542e0d1fcc3360f7d52c6e09.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/7a6b05ba6ca90f8a542e0d1fcc3360f7d52c6e09.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/7d4c2429f20db9b651852713d31971380f209eec.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/7d4c2429f20db9b651852713d31971380f209eec.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/89044bace37a3ce54cf2cc5190e11bed6d14f97a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/89044bace37a3ce54cf2cc5190e11bed6d14f97a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/9febe215589021ce81cf9a89ef5377103cc6ba7e.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/a38af1e47720abf30ca44f3d3c099c07b046df81.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/a38af1e47720abf30ca44f3d3c099c07b046df81.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/ab0b960474f1491b42ef9f2ca13dbd4ccaf64911.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/ab0b960474f1491b42ef9f2ca13dbd4ccaf64911.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/f88424e725a3bb50f358e9b042552af7b1c2f921.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/f88424e725a3bb50f358e9b042552af7b1c2f921.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/f89c365b12d7e2d46fb2e1f6ace46a76b6cd5e89.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SceneForwardClusteredShaderRD/1d8f9fd61c770da8fbf2a971b3e81a1e4b82130a464dd2919dd0df65d3f4d4a6/f89c365b12d7e2d46fb2e1f6ace46a76b6cd5e89.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\ScreenSpaceReflectionDownsampleShaderRD\efffc9e5a7c66f8a0f9ff93c2de0f3ae0f0204238caf8bd81b886c65eab90fd4

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/ScreenSpaceReflectionDownsampleShaderRD/efffc9e5a7c66f8a0f9ff93c2de0f3ae0f0204238caf8bd81b886c65eab90fd4/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/ScreenSpaceReflectionDownsampleShaderRD/efffc9e5a7c66f8a0f9ff93c2de0f3ae0f0204238caf8bd81b886c65eab90fd4/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\ScreenSpaceReflectionFilterShaderRD\df57b17e0d3f8e6a2117eddae7b20ed4374b305ba8ca4574e4de35047a65e359

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/ScreenSpaceReflectionFilterShaderRD/df57b17e0d3f8e6a2117eddae7b20ed4374b305ba8ca4574e4de35047a65e359/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/ScreenSpaceReflectionFilterShaderRD/df57b17e0d3f8e6a2117eddae7b20ed4374b305ba8ca4574e4de35047a65e359/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\ScreenSpaceReflectionHizShaderRD\997ce3e6161596f9996f5616548734cb1b6ae9ba53707e753153b0855fe4e6ab

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/ScreenSpaceReflectionHizShaderRD/997ce3e6161596f9996f5616548734cb1b6ae9ba53707e753153b0855fe4e6ab/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/ScreenSpaceReflectionHizShaderRD/997ce3e6161596f9996f5616548734cb1b6ae9ba53707e753153b0855fe4e6ab/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\ScreenSpaceReflectionResolveShaderRD\33380c22729b8429fde29e1f93f85b5208c85e4ede0aa997a4929891c2c29ac3

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/ScreenSpaceReflectionResolveShaderRD/33380c22729b8429fde29e1f93f85b5208c85e4ede0aa997a4929891c2c29ac3/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/ScreenSpaceReflectionResolveShaderRD/33380c22729b8429fde29e1f93f85b5208c85e4ede0aa997a4929891c2c29ac3/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\ScreenSpaceReflectionShaderRD\435a8cc42eafc61cd0a165605df5c12a844b2638060a76140c926e7ae3f17370

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/ScreenSpaceReflectionShaderRD/435a8cc42eafc61cd0a165605df5c12a844b2638060a76140c926e7ae3f17370/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/ScreenSpaceReflectionShaderRD/435a8cc42eafc61cd0a165605df5c12a844b2638060a76140c926e7ae3f17370/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SdfgiDebugProbesShaderRD\c686dc153eb1e1b4ce9aa61259db41552f6a3d85a07bca8c284700c4e738a962

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SdfgiDebugProbesShaderRD/c686dc153eb1e1b4ce9aa61259db41552f6a3d85a07bca8c284700c4e738a962/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SdfgiDebugProbesShaderRD/c686dc153eb1e1b4ce9aa61259db41552f6a3d85a07bca8c284700c4e738a962/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SdfgiDebugShaderRD\770683c4abbe80e6aaa1fcce0e3aa9d0da557c3ab2aeb97c71adda2071ed6d9e

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SdfgiDebugShaderRD/770683c4abbe80e6aaa1fcce0e3aa9d0da557c3ab2aeb97c71adda2071ed6d9e/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SdfgiDebugShaderRD/770683c4abbe80e6aaa1fcce0e3aa9d0da557c3ab2aeb97c71adda2071ed6d9e/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SdfgiDirectLightShaderRD\2fb0b4bb5244e2878ed914d5c7091b8a29a281b7ef61c89bd41cb1af4833f6f1

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SdfgiDirectLightShaderRD/2fb0b4bb5244e2878ed914d5c7091b8a29a281b7ef61c89bd41cb1af4833f6f1/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SdfgiDirectLightShaderRD/2fb0b4bb5244e2878ed914d5c7091b8a29a281b7ef61c89bd41cb1af4833f6f1/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SdfgiIntegrateShaderRD\b6bde7dbd199e845ade91714af87216fa88e23a5866f28aed59e0ee81da45cce

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SdfgiIntegrateShaderRD/b6bde7dbd199e845ade91714af87216fa88e23a5866f28aed59e0ee81da45cce/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SdfgiIntegrateShaderRD/b6bde7dbd199e845ade91714af87216fa88e23a5866f28aed59e0ee81da45cce/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SdfgiPreprocessShaderRD\8209c4e09174b46160bf3298a91fdd988a8aae6b7e81d6dd381d87b0aad47434

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SdfgiPreprocessShaderRD/8209c4e09174b46160bf3298a91fdd988a8aae6b7e81d6dd381d87b0aad47434/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SdfgiPreprocessShaderRD/8209c4e09174b46160bf3298a91fdd988a8aae6b7e81d6dd381d87b0aad47434/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\ShadowFrustumShaderRD\3deae303d647faccb68971539f74a832fa8321fe8d642826a8c88bbd3658b679

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/ShadowFrustumShaderRD/3deae303d647faccb68971539f74a832fa8321fe8d642826a8c88bbd3658b679/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/ShadowFrustumShaderRD/3deae303d647faccb68971539f74a832fa8321fe8d642826a8c88bbd3658b679/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SkeletonShaderRD\f5464247670c8a6767c45f6d3608e1cde3ee7c170567663cf709cd4ed8b3a4c1

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SkeletonShaderRD/f5464247670c8a6767c45f6d3608e1cde3ee7c170567663cf709cd4ed8b3a4c1/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SkeletonShaderRD/f5464247670c8a6767c45f6d3608e1cde3ee7c170567663cf709cd4ed8b3a4c1/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SkyShaderRD\35d1b4b37bab144dc90408dd6cf6ddeee4a134e13f3efe56f0e3ae92e83a5124

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SkyShaderRD/35d1b4b37bab144dc90408dd6cf6ddeee4a134e13f3efe56f0e3ae92e83a5124/03e3b11c69e24394b2d955a8c0ba85587bb70839.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SkyShaderRD/35d1b4b37bab144dc90408dd6cf6ddeee4a134e13f3efe56f0e3ae92e83a5124/03e3b11c69e24394b2d955a8c0ba85587bb70839.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SkyShaderRD/35d1b4b37bab144dc90408dd6cf6ddeee4a134e13f3efe56f0e3ae92e83a5124/6b847b83944af8d9a9af91a0871566e6070998ca.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SkyShaderRD/35d1b4b37bab144dc90408dd6cf6ddeee4a134e13f3efe56f0e3ae92e83a5124/de678811d1bad3cad4892a8db7b6ea0be197d51d.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SkyShaderRD/35d1b4b37bab144dc90408dd6cf6ddeee4a134e13f3efe56f0e3ae92e83a5124/de678811d1bad3cad4892a8db7b6ea0be197d51d.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SkyShaderRD/35d1b4b37bab144dc90408dd6cf6ddeee4a134e13f3efe56f0e3ae92e83a5124/e105b1e014f9523daf8d734c2f2dc115ba341902.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SkyShaderRD/35d1b4b37bab144dc90408dd6cf6ddeee4a134e13f3efe56f0e3ae92e83a5124/e105b1e014f9523daf8d734c2f2dc115ba341902.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SmaaBlendingShaderRD\6088fec0579720c9b0477de3d431bbc3b7de4b868060edc13f716d8818817556

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SmaaBlendingShaderRD/6088fec0579720c9b0477de3d431bbc3b7de4b868060edc13f716d8818817556/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SmaaBlendingShaderRD/6088fec0579720c9b0477de3d431bbc3b7de4b868060edc13f716d8818817556/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SmaaEdgeDetectionShaderRD\a6c5c7327054acd529d0181b07bf068fccf6773b47e3bc26742813607b59ba24

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SmaaEdgeDetectionShaderRD/a6c5c7327054acd529d0181b07bf068fccf6773b47e3bc26742813607b59ba24/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SmaaEdgeDetectionShaderRD/a6c5c7327054acd529d0181b07bf068fccf6773b47e3bc26742813607b59ba24/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SmaaWeightCalculationShaderRD\3893abaf810bdff4408209bba813141b7ed437601200519b8aee0a69f0349d05

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SmaaWeightCalculationShaderRD/3893abaf810bdff4408209bba813141b7ed437601200519b8aee0a69f0349d05/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SmaaWeightCalculationShaderRD/3893abaf810bdff4408209bba813141b7ed437601200519b8aee0a69f0349d05/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SortShaderRD\f9ec1d3b74a8fc2c04e3f2648f95f2f1bbdce58b6c290cf9c4851a0bac4771d4

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SortShaderRD/f9ec1d3b74a8fc2c04e3f2648f95f2f1bbdce58b6c290cf9c4851a0bac4771d4/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SortShaderRD/f9ec1d3b74a8fc2c04e3f2648f95f2f1bbdce58b6c290cf9c4851a0bac4771d4/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SpecularMergeShaderRD\2c24bae3cdd8885d57ab9d12d4cfc7fc3bc7462a287e93293f3533163e9e82a3

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SpecularMergeShaderRD/2c24bae3cdd8885d57ab9d12d4cfc7fc3bc7462a287e93293f3533163e9e82a3/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SpecularMergeShaderRD/2c24bae3cdd8885d57ab9d12d4cfc7fc3bc7462a287e93293f3533163e9e82a3/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SsEffectsDownsampleShaderRD\00b905de0ce61aa71e1203c86aadb464c5254c0f70c5df1c4a16ae369a011fd8

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SsEffectsDownsampleShaderRD/00b905de0ce61aa71e1203c86aadb464c5254c0f70c5df1c4a16ae369a011fd8/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SsEffectsDownsampleShaderRD/00b905de0ce61aa71e1203c86aadb464c5254c0f70c5df1c4a16ae369a011fd8/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SsaoBlurShaderRD\b65a0faa61bd9bc74ffa0d5e350fbcfb41b509b462ba4efc099932750277c6c9

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SsaoBlurShaderRD/b65a0faa61bd9bc74ffa0d5e350fbcfb41b509b462ba4efc099932750277c6c9/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SsaoBlurShaderRD/b65a0faa61bd9bc74ffa0d5e350fbcfb41b509b462ba4efc099932750277c6c9/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SsaoImportanceMapShaderRD\8dea32f8f998a2826251eaa6f2e79afd0d32fe7c8f5cbfa07ffaa7e6dd065adb

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SsaoImportanceMapShaderRD/8dea32f8f998a2826251eaa6f2e79afd0d32fe7c8f5cbfa07ffaa7e6dd065adb/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SsaoImportanceMapShaderRD/8dea32f8f998a2826251eaa6f2e79afd0d32fe7c8f5cbfa07ffaa7e6dd065adb/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SsaoInterleaveShaderRD\37d20a08ed7c0df456d74fe2afcd709bb63683bf17844b96ef3a831708fe33d6

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SsaoInterleaveShaderRD/37d20a08ed7c0df456d74fe2afcd709bb63683bf17844b96ef3a831708fe33d6/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SsaoInterleaveShaderRD/37d20a08ed7c0df456d74fe2afcd709bb63683bf17844b96ef3a831708fe33d6/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SsaoShaderRD\3d813e95740f9b60dfc54dc27d3e8bef0fe774cbe665ce8ca001911d8bddd779

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SsaoShaderRD/3d813e95740f9b60dfc54dc27d3e8bef0fe774cbe665ce8ca001911d8bddd779/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SsaoShaderRD/3d813e95740f9b60dfc54dc27d3e8bef0fe774cbe665ce8ca001911d8bddd779/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SsilBlurShaderRD\4aebd32e075cc380fa044bbd25d6041f3b33e9642997142ff651a262e4919f58

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SsilBlurShaderRD/4aebd32e075cc380fa044bbd25d6041f3b33e9642997142ff651a262e4919f58/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SsilBlurShaderRD/4aebd32e075cc380fa044bbd25d6041f3b33e9642997142ff651a262e4919f58/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SsilImportanceMapShaderRD\f06c8f5624e6170877d397deebb400e940cb4d625d05260d6a24d24e6682da98

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SsilImportanceMapShaderRD/f06c8f5624e6170877d397deebb400e940cb4d625d05260d6a24d24e6682da98/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SsilImportanceMapShaderRD/f06c8f5624e6170877d397deebb400e940cb4d625d05260d6a24d24e6682da98/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SsilInterleaveShaderRD\adb7d726b7686b420a442a3227b89ebbec02e308f3eecaca78455b1334d3d124

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SsilInterleaveShaderRD/adb7d726b7686b420a442a3227b89ebbec02e308f3eecaca78455b1334d3d124/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SsilInterleaveShaderRD/adb7d726b7686b420a442a3227b89ebbec02e308f3eecaca78455b1334d3d124/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SsilShaderRD\3b05aa37155fafb48b5c5687c2743ee0d78977c853054b1533422ec2ef43dfc7

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SsilShaderRD/3b05aa37155fafb48b5c5687c2743ee0d78977c853054b1533422ec2ef43dfc7/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SsilShaderRD/3b05aa37155fafb48b5c5687c2743ee0d78977c853054b1533422ec2ef43dfc7/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\SubsurfaceScatteringShaderRD\1b13b43aab403edf1776669251ef4c9219eb57ea9b8e86483f0c0b44cfbe566e

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/SubsurfaceScatteringShaderRD/1b13b43aab403edf1776669251ef4c9219eb57ea9b8e86483f0c0b44cfbe566e/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/SubsurfaceScatteringShaderRD/1b13b43aab403edf1776669251ef4c9219eb57ea9b8e86483f0c0b44cfbe566e/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\TaaResolveShaderRD\80810a13c63cdcf213a9e1f7d092d977e0552d6453157bb11355fa7502e38656

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/TaaResolveShaderRD/80810a13c63cdcf213a9e1f7d092d977e0552d6453157bb11355fa7502e38656/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/TaaResolveShaderRD/80810a13c63cdcf213a9e1f7d092d977e0552d6453157bb11355fa7502e38656/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\TonemapShaderRD\a56bf793a5b570b67656c7c358d65edc055616e7e6979e80c0c9c15416159004

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/TonemapShaderRD/a56bf793a5b570b67656c7c358d65edc055616e7e6979e80c0c9c15416159004/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/TonemapShaderRD/a56bf793a5b570b67656c7c358d65edc055616e7e6979e80c0c9c15416159004/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\VolumetricFogProcessShaderRD\e7111e4619b756f12ede8cd7e1882d809c920d3cd1e92800d26dc2843c1d7951

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/VolumetricFogProcessShaderRD/e7111e4619b756f12ede8cd7e1882d809c920d3cd1e92800d26dc2843c1d7951/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/VolumetricFogProcessShaderRD/e7111e4619b756f12ede8cd7e1882d809c920d3cd1e92800d26dc2843c1d7951/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\VolumetricFogShaderRD\e1000919e80553e4e1df0331263cb2a0e46aa40a7e49b0a36818de89941c5685

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/VolumetricFogShaderRD/e1000919e80553e4e1df0331263cb2a0e46aa40a7e49b0a36818de89941c5685/9a227745af2d65830f930370a9fbba551fbd6f60.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/VolumetricFogShaderRD/e1000919e80553e4e1df0331263cb2a0e46aa40a7e49b0a36818de89941c5685/9a227745af2d65830f930370a9fbba551fbd6f60.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\VoxelGiDebugShaderRD\0c11e2b01ffc801b382d12556a315f70379dc7769e0f04b55f281d9dfafc10e6

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/VoxelGiDebugShaderRD/0c11e2b01ffc801b382d12556a315f70379dc7769e0f04b55f281d9dfafc10e6/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/VoxelGiDebugShaderRD/0c11e2b01ffc801b382d12556a315f70379dc7769e0f04b55f281d9dfafc10e6/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\VoxelGiShaderRD\b12597d0afb0147a772f4ce6eab75f7a1d08b458e5ce7df8a01f34092bdb8984

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/VoxelGiShaderRD/b12597d0afb0147a772f4ce6eab75f7a1d08b458e5ce7df8a01f34092bdb8984/087916079fba7c625e62b0c2cca570e0fb87c99a.metal.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |
| `.godot/shader_cache/VoxelGiShaderRD/b12597d0afb0147a772f4ce6eab75f7a1d08b458e5ce7df8a01f34092bdb8984/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## .godot\shader_cache\VrsShaderRD\bec481e78ad773e300f2715286758cbb133fa51b9dbe03fcb6a21b29de9a1c2a

| File | Category | Reason |
|---|---|---|
| `.godot/shader_cache/VrsShaderRD/bec481e78ad773e300f2715286758cbb133fa51b9dbe03fcb6a21b29de9a1c2a/087916079fba7c625e62b0c2cca570e0fb87c99a.vulkan.cache` | DELETE | Godot editor/import cache generated locally and not part of the production baseline. |

## assets

| File | Category | Reason |
|---|---|---|
| `assets/.DS_Store` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |

## assets\Music

| File | Category | Reason |
|---|---|---|
| `assets/Music/.DS_Store` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/Music/Battle Theme — Blood and Iron 1.mp3.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/Music/Battle Theme — Blood and Iron 2.mp3.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/Music/Boss Theme — The Shaman_s Chamber 1.mp3.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/Music/Boss Theme — The Shaman_s Chamber 2.mp3.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/Music/Mine_Dungeon Ambient — Into the Dark 1.mp3.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/Music/Mine_Dungeon Ambient — Into the Dark 2.mp3.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/Music/Moral Choice Sting — The Weight 1.mp3.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/Music/Moral Choice Sting — The Weight 2.mp3.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/Music/Music_List.md` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/Music/Town Theme — Frontier Hamlet 1.mp3.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/Music/Town Theme — Frontier Hamlet 2.mp3.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/Music/Victory  Main Theme Seed 1.mp3.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/Music/Victory  Main Theme Seed 2.mp3.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\SFX

| File | Category | Reason |
|---|---|---|
| `assets/SFX/SFX_List.md` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/SFX/attack_hit_01.ogg` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/SFX/attack_hit_01.ogg.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/SFX/attack_swing_01.ogg` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/SFX/attack_swing_01.ogg.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/SFX/dialogue_advance_01.ogg` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/SFX/dialogue_advance_01.ogg.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/SFX/gate_open_01.ogg` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/SFX/gate_open_01.ogg.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/SFX/loot_pickup_01.ogg` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/SFX/loot_pickup_01.ogg.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/SFX/spell_cast_01.ogg` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/SFX/spell_cast_01.ogg.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/SFX/step_mine_01.ogg` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/SFX/step_mine_01.ogg.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/SFX/step_town_01.ogg` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/SFX/step_town_01.ogg.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/SFX/ui_cancel_01.ogg` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/SFX/ui_cancel_01.ogg.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/SFX/ui_confirm_01.ogg` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/SFX/ui_confirm_01.ogg.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art

| File | Category | Reason |
|---|---|---|
| `assets/art/.DS_Store` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/.gitkeep` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |

## assets\art\Mood Board

| File | Category | Reason |
|---|---|---|
| `assets/art/Mood Board/bg3-alignment-chart-v0-lb31w8gqv26c1.webp` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/Mood Board/bg3-alignment-chart-v0-lb31w8gqv26c1.webp.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/Mood Board/mood_UI_[parchment_stone_aesthetic].tiff` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/Mood Board/mood_[character]_[armour_knight].tiff` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/Mood Board/mood_[environment]_[dungeon].tiff` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/Mood Board/mood_[environment]_[outdoor].tiff` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/Mood Board/mood_[palette]_[colour_reference].tiff` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |

## assets\art\UI

| File | Category | Reason |
|---|---|---|
| `assets/art/UI/.DS_Store` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |

## assets\art\UI\kenney_ui-pack-rpg-expansion\PNG

| File | Category | Reason |
|---|---|---|
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowBeige_left.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowBeige_left.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowBeige_right.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowBeige_right.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowBlue_left.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowBlue_left.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowBlue_right.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowBlue_right.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowBrown_left.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowBrown_left.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowBrown_right.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowBrown_right.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowSilver_left.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowSilver_left.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowSilver_right.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/arrowSilver_right.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBack_horizontalLeft.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBack_horizontalLeft.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBack_horizontalMid.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBack_horizontalMid.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBack_horizontalRight.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBack_horizontalRight.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBack_verticalBottom.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBack_verticalBottom.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBack_verticalMid.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBack_verticalMid.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBack_verticalTop.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBack_verticalTop.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBlue_horizontalBlue.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBlue_horizontalBlue.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBlue_horizontalLeft.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBlue_horizontalLeft.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBlue_horizontalRight.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBlue_horizontalRight.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBlue_verticalBottom.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBlue_verticalBottom.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBlue_verticalMid.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBlue_verticalMid.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBlue_verticalTop.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barBlue_verticalTop.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barGreen_horizontalLeft.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barGreen_horizontalLeft.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barGreen_horizontalMid.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barGreen_horizontalMid.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barGreen_horizontalRight.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barGreen_horizontalRight.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barGreen_verticalBottom.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barGreen_verticalBottom.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barGreen_verticalMid.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barGreen_verticalMid.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barGreen_verticalTop.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barGreen_verticalTop.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barRed_horizontalLeft.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barRed_horizontalLeft.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barRed_horizontalMid.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barRed_horizontalMid.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barRed_horizontalRight.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barRed_horizontalRight.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barRed_verticalBottom.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barRed_verticalBottom.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barRed_verticalMid.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barRed_verticalMid.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barRed_verticalTop.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barRed_verticalTop.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barYellow_horizontalLeft.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barYellow_horizontalLeft.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barYellow_horizontalMid.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barYellow_horizontalMid.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barYellow_horizontalRight.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barYellow_horizontalRight.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barYellow_verticalBottom.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barYellow_verticalBottom.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barYellow_verticalMid.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barYellow_verticalMid.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barYellow_verticalTop.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/barYellow_verticalTop.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_beige.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_beige.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_beige_pressed.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_beige_pressed.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_blue.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_blue.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_blue_pressed.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_blue_pressed.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_brown.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_brown.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_brown_pressed.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_brown_pressed.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_grey.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_grey.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_grey_pressed.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonLong_grey_pressed.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonRound_beige.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonRound_beige.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonRound_blue.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonRound_blue.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonRound_brown.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonRound_brown.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonRound_grey.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonRound_grey.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_beige.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_beige.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_beige_pressed.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_beige_pressed.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_blue.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_blue.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_blue_pressed.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_blue_pressed.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_brown.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_brown.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_brown_pressed.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_brown_pressed.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_grey.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_grey.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_grey_pressed.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/buttonSquare_grey_pressed.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorGauntlet_blue.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorGauntlet_blue.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorGauntlet_bronze.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorGauntlet_bronze.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorGauntlet_grey.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorGauntlet_grey.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorHand_beige.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorHand_beige.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorHand_blue.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorHand_blue.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorHand_grey.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorHand_grey.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorSword_bronze.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorSword_bronze.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorSword_gold.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorSword_gold.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorSword_silver.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/cursorSword_silver.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCheck_beige.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCheck_beige.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCheck_blue.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCheck_blue.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCheck_bronze.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCheck_bronze.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCheck_grey.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCheck_grey.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCircle_beige.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCircle_beige.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCircle_blue.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCircle_blue.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCircle_brown.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCircle_brown.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCircle_grey.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCircle_grey.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCross_beige.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCross_beige.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCross_blue.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCross_blue.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCross_brown.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCross_brown.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCross_grey.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/iconCross_grey.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panelInset_beige.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panelInset_beige.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panelInset_beigeLight.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panelInset_beigeLight.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panelInset_blue.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panelInset_blue.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panelInset_brown.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panelInset_brown.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panel_beige.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panel_beige.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panel_beigeLight.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panel_beigeLight.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panel_blue.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panel_blue.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panel_brown.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/PNG/panel_brown.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\UI\kenney_ui-pack-rpg-expansion\Spritesheet

| File | Category | Reason |
|---|---|---|
| `assets/art/UI/kenney_ui-pack-rpg-expansion/Spritesheet/uipack_rpg_sheet.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/Spritesheet/uipack_rpg_sheet.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/Spritesheet/uipack_rpg_sheet.xml` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |

## assets\art\UI\kenney_ui-pack-rpg-expansion\Vector

| File | Category | Reason |
|---|---|---|
| `assets/art/UI/kenney_ui-pack-rpg-expansion/Vector/uipack_rpg_vector.svg` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/Vector/uipack_rpg_vector.svg.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/Vector/uipack_rpg_vector.swf` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |

## assets\art\UI\kenney_ui-pack-rpg-expansion

| File | Category | Reason |
|---|---|---|
| `assets/art/UI/kenney_ui-pack-rpg-expansion/license.txt` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/preview.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/preview.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/sample.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/UI/kenney_ui-pack-rpg-expansion/sample.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/.DS_Store` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/goblinsword.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/goblinsword.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC imp

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC imp/attack - pitchfork shield.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC imp/attack - pitchfork shield.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC imp/attack - pitchfork.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC imp/attack - pitchfork.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC imp/attack - sword shield.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC imp/attack - sword shield.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC imp/attack - sword.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC imp/attack - sword.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC imp/attack - vanilla.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC imp/attack - vanilla.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC imp/walk - pitchfork shield.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC imp/walk - pitchfork shield.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC imp/walk - pitchfork.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC imp/walk - pitchfork.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC imp/walk - sword shield.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC imp/walk - sword shield.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC imp/walk - sword.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC imp/walk - sword.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC imp/walk - vanilla.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC imp/walk - vanilla.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC_starhat

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_starhat/README.txt` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_starhat/moon-female.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_starhat/moon-female.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_starhat/moon-male.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_starhat/moon-male.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_starhat/nomoon-female.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_starhat/nomoon-female.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_starhat/nomoon-male.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_starhat/nomoon-male.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_starhat/sample.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_starhat/sample.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC_weapons_pack

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/.DS_Store` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/README.txt` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/items.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/items.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC_weapons_pack\female

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/female/.DS_Store` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |

## assets\art\battle\LPC_weapons_pack\female\bigslash

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/female/bigslash/1.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/1.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/10.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/10.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/11.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/11.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/12.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/12.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/13.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/13.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/14.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/14.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/15.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/15.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/16.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/16.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/17.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/17.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/18.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/18.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/19.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/19.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/2.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/2.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/20.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/20.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/21.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/21.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/22.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/22.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/23.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/23.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/24.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/24.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/25.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/25.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/26.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/26.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/27.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/27.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/3.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/3.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/4.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/4.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/5.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/5.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/6.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/6.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/7.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/7.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/8.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/8.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/9.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigslash/9.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC_weapons_pack\female\bigthrust

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/female/bigthrust/1.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigthrust/1.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigthrust/2.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigthrust/2.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/bigthrust/3.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/bigthrust/3.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC_weapons_pack\female\shield

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/female/shield/1.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/shield/1.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/shield/2.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/shield/2.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC_weapons_pack\female\shoot

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/female/shoot/1.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/shoot/1.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/shoot/2.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/shoot/2.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/shoot/3.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/shoot/3.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/shoot/arrow.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/shoot/arrow.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC_weapons_pack\female\slash

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/female/slash/1.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/slash/1.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/slash/2.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/slash/2.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/slash/3.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/slash/3.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/slash/4.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/slash/4.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC_weapons_pack\female\thrust

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/female/thrust/1.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/thrust/1.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/female/thrust/2.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/female/thrust/2.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC_weapons_pack\male

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/male/.DS_Store` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |

## assets\art\battle\LPC_weapons_pack\male\bigslash

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/male/bigslash/1.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/1.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/10.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/10.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/11.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/11.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/12.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/12.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/13.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/13.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/14.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/14.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/15.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/15.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/16.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/16.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/17.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/17.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/18.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/18.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/19.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/19.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/2.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/2.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/20.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/20.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/21.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/21.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/22.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/22.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/23.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/23.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/24.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/24.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/25.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/25.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/26.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/26.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/27.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/27.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/3.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/3.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/4.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/4.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/5.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/5.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/6.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/6.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/7.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/7.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/8.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/8.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/9.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigslash/9.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC_weapons_pack\male\bigthrust

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/male/bigthrust/1.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigthrust/1.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigthrust/2.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigthrust/2.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/bigthrust/3.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/bigthrust/3.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC_weapons_pack\male\shield

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/male/shield/1.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/shield/1.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/shield/2.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/shield/2.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC_weapons_pack\male\shoot

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/male/shoot/1.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/shoot/1.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/shoot/2.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/shoot/2.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/shoot/3.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/shoot/3.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/shoot/arrow.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/shoot/arrow.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC_weapons_pack\male\slash

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/male/slash/1.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/slash/1.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/slash/2.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/slash/2.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/slash/3.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/slash/3.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/slash/4.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/slash/4.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\LPC_weapons_pack\male\thrust

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/LPC_weapons_pack/male/thrust/1.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/thrust/1.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/LPC_weapons_pack/male/thrust/2.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/LPC_weapons_pack/male/thrust/2.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\battle\monster2_combat_backgrounds

| File | Category | Reason |
|---|---|---|
| `assets/art/battle/monster2_combat_backgrounds/fort.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/monster2_combat_backgrounds/fort.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/monster2_combat_backgrounds/grass.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/monster2_combat_backgrounds/grass.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/monster2_combat_backgrounds/jungle.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/monster2_combat_backgrounds/jungle.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/monster2_combat_backgrounds/keep.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/monster2_combat_backgrounds/keep.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/monster2_combat_backgrounds/keep_outer.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/monster2_combat_backgrounds/keep_outer.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/monster2_combat_backgrounds/moon.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/monster2_combat_backgrounds/moon.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/monster2_combat_backgrounds/mountains.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/monster2_combat_backgrounds/mountains.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/monster2_combat_backgrounds/mountains_bridge.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/monster2_combat_backgrounds/mountains_bridge.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/monster2_combat_backgrounds/rope_bridge.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/monster2_combat_backgrounds/rope_bridge.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/monster2_combat_backgrounds/sand.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/monster2_combat_backgrounds/sand.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/monster2_combat_backgrounds/volc_bridge.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/monster2_combat_backgrounds/volc_bridge.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/battle/monster2_combat_backgrounds/volcano.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/battle/monster2_combat_backgrounds/volcano.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\external\stage_8_5

| File | Category | Reason |
|---|---|---|
| `assets/art/external/stage_8_5/battlemage_walk_sheet.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/external/stage_8_5/battlemage_walk_sheet.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/external/stage_8_5/fighter_walk_sheet.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/external/stage_8_5/fighter_walk_sheet.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\generated\stage_8_5

| File | Category | Reason |
|---|---|---|
| `assets/art/generated/stage_8_5/battlemage_presentation_card.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/generated/stage_8_5/battlemage_presentation_card.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/generated/stage_8_5/fighter_presentation_card.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/generated/stage_8_5/fighter_presentation_card.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/generated/stage_8_5/kobold_presentation_card.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/generated/stage_8_5/kobold_presentation_card.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/generated/stage_8_5/map_battlemage.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/generated/stage_8_5/map_battlemage.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/generated/stage_8_5/map_fighter.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/generated/stage_8_5/map_fighter.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/generated/stage_8_5/map_npc.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/generated/stage_8_5/map_npc.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/generated/stage_8_5/mine_battle_backdrop.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/generated/stage_8_5/mine_battle_backdrop.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/generated/stage_8_5/shaman_portrait.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/generated/stage_8_5/shaman_portrait.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/generated/stage_8_5/weapon_overlay.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/generated/stage_8_5/weapon_overlay.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\player

| File | Category | Reason |
|---|---|---|
| `assets/art/player/universal-lpc-sprite_male_01_full.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/player/universal-lpc-sprite_male_01_full.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\portraits\stage_8_5

| File | Category | Reason |
|---|---|---|
| `assets/art/portraits/stage_8_5/shaman_portrait.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/portraits/stage_8_5/shaman_portrait.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/.DS_Store` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Aurora Tileset.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Aurora Tileset.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\Door_Animation

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/Door_Animation/Door1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Door_Animation/Door1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Door_Animation/Door2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Door_Animation/Door2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Door_Animation/Door3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Door_Animation/Door3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\EPIC RPG World Pack - [FREE Demo]Grass Land 2.0-REWORK

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/EPIC RPG World Pack - [FREE Demo]Grass Land 2.0-REWORK/.DS_Store` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |

## assets\art\tilesets\EPIC RPG World Pack - [FREE Demo]Grass Land 2.0-REWORK\TiledMap Editor

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/EPIC RPG World Pack - [FREE Demo]Grass Land 2.0-REWORK/TiledMap Editor/.DS_Store` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/EPIC RPG World Pack - [FREE Demo]Grass Land 2.0-REWORK/TiledMap Editor/sample map demo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/EPIC RPG World Pack - [FREE Demo]Grass Land 2.0-REWORK/TiledMap Editor/sample map demo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/EPIC RPG World Pack - [FREE Demo]Grass Land 2.0-REWORK/TiledMap Editor/sample map demo.tmx` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |

## assets\art\tilesets\EPIC RPG World Pack - [FREE Demo]Grass Land 2.0-REWORK\TiledMap Editor\Tilesets

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/EPIC RPG World Pack - [FREE Demo]Grass Land 2.0-REWORK/TiledMap Editor/Tilesets/Tilesets and props Demo.tsx` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |

## assets\art\tilesets\EPIC RPG World Pack - [FREE Demo]Grass Land 2.0-REWORK\Tilesets and props

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/EPIC RPG World Pack - [FREE Demo]Grass Land 2.0-REWORK/Tilesets and props/Tilesets and props Demo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/EPIC RPG World Pack - [FREE Demo]Grass Land 2.0-REWORK/Tilesets and props/Tilesets and props Demo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\Jumpstart - Demo\Decoration

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/Jumpstart - Demo/Decoration/Decals.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Decoration/Decals.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\Jumpstart - Demo\Particles

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/Jumpstart - Demo/Particles/circle.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/circle.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/plus_shape.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/plus_shape.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/snow_flake.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/snow_flake.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/snow_flake_alternate.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/snow_flake_alternate.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/squircle.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/squircle.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/star_shape.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/star_shape.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/x_shape.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/x_shape.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/x_shape_bigger.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Particles/x_shape_bigger.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\Jumpstart - Demo\Tilesets

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Auto-Tile Pattern.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Auto-Tile Pattern.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Bricks.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Bricks.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Clouds_version_01.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Clouds_version_01.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Dirt.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Dirt.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Grass.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Grass.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Grassy_stone.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Grassy_stone.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Ice.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Ice.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Mossy_grass.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Mossy_grass.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Snowy_bricks.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Snowy_bricks.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Snowy_dirt.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Snowy_dirt.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Snowy_ice.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Snowy_ice.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Snowy_stone.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Snowy_stone.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Stone.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Tilesets/Stone.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\Jumpstart - Demo\Vegetation

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/Jumpstart - Demo/Vegetation/plants.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Vegetation/plants.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Vegetation/plants_modulate.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Vegetation/plants_modulate.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Vegetation/plants_stems.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Vegetation/plants_stems.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Jumpstart - Demo/Vegetation/plants_stems_modulate.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Jumpstart - Demo/Vegetation/plants_stems_modulate.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\Pipoya RPG Tileset 32x32

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/LightShadow_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/LightShadow_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[Base]BaseChip_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[Base]BaseChip_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\Pipoya RPG Tileset 32x32\SampleMap

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/LightShadow_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/LightShadow_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/LightShadow_pipo.tsx` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Dirt_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Dirt_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Dirt_pipo.tsx` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Flower_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Flower_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Flower_pipo.tsx` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Grass_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Grass_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Grass_pipo.tsx` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Wall-Up_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Wall-Up_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Wall-Up_pipo.tsx` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]WaterFall_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]WaterFall_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]WaterFall_pipo.tsx` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Water_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Water_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[A]Water_pipo.tsx` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[Base]BaseChip_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[Base]BaseChip_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/[Base]BaseChip_pipo.tsx` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/samplemap.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/samplemap.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/SampleMap/samplemap.tmx` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |

## assets\art\tilesets\Pipoya RPG Tileset 32x32\[A]_type1

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Dirt1-Dirt2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Dirt1-Dirt2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Dirt1-Dirt3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Dirt1-Dirt3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Dirt1-Dirt4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Dirt1-Dirt4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Dirt1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Dirt1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Dirt2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Dirt2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Dirt3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Dirt3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Dirt4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Dirt4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Flower_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Flower_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1-Dirt1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1-Dirt1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1-Dirt2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1-Dirt2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1-Dirt3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1-Dirt3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1-Dirt4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1-Dirt4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1-Grass2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1-Grass2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1-Grass3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1-Grass3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1-Grass4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1-Grass4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Grass4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]LongGrass_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]LongGrass_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Wall-Up1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Wall-Up1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Wall-Up2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Wall-Up2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water3_Cave1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water3_Cave1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water5_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water5_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water6_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water6_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water7_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]Water7_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]WaterFall1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]WaterFall1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]WaterFall2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]WaterFall2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]WaterFall3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/[A]WaterFall3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\Pipoya RPG Tileset 32x32\[A]_type1\not_animation

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water3_Cave1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water3_Cave1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water5_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water5_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water6_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water6_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water7_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]Water7_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]WaterFall1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]WaterFall1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]WaterFall2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]WaterFall2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]WaterFall3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type1/not_animation/[A]WaterFall3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\Pipoya RPG Tileset 32x32\[A]_type2

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Dirt1-Dirt2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Dirt1-Dirt2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Dirt1-Dirt3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Dirt1-Dirt3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Dirt1-Dirt4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Dirt1-Dirt4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Dirt1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Dirt1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Dirt2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Dirt2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Dirt3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Dirt3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Dirt4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Dirt4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Flower_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Flower_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1-Dirt1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1-Dirt1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1-Dirt2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1-Dirt2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1-Dirt3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1-Dirt3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1-Dirt4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1-Dirt4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1-Grass2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1-Grass2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1-Grass3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1-Grass3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1-Grass4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1-Grass4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Grass4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]LongGrass_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]LongGrass_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Wall-Up1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Wall-Up1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Wall-Up2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Wall-Up2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water3_Cave1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water3_Cave1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water5_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water5_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water6_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water6_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water7_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]Water7_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]WaterFall1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]WaterFall1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]WaterFall2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]WaterFall2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]WaterFall3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/[A]WaterFall3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\Pipoya RPG Tileset 32x32\[A]_type2\not_animation

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water3_Cave1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water3_Cave1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water5_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water5_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water6_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water6_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water7_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]Water7_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]WaterFall1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]WaterFall1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]WaterFall2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]WaterFall2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]WaterFall3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type2/not_animation/[A]WaterFall3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\Pipoya RPG Tileset 32x32\[A]_type3

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Dirt1-Dirt2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Dirt1-Dirt2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Dirt1-Dirt3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Dirt1-Dirt3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Dirt1-Dirt4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Dirt1-Dirt4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Dirt1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Dirt1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Dirt2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Dirt2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Dirt3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Dirt3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Dirt4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Dirt4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Flower_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Flower_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1-Dirt1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1-Dirt1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1-Dirt2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1-Dirt2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1-Dirt3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1-Dirt3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1-Dirt4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1-Dirt4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1-Grass2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1-Grass2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1-Grass3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1-Grass3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1-Grass4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1-Grass4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Grass4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]LongGrass_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]LongGrass_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Wall-Up1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Wall-Up1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Wall-Up2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Wall-Up2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water3_Cave1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water3_Cave1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water5_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water5_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water6_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water6_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water7_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]Water7_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]WaterFall1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]WaterFall1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]WaterFall2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]WaterFall2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]WaterFall3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/[A]WaterFall3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\Pipoya RPG Tileset 32x32\[A]_type3\not_animation

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water3_Cave1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water3_Cave1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water4_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water4_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water5_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water5_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water6_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water6_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water7_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]Water7_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]WaterFall1_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]WaterFall1_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]WaterFall2_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]WaterFall2_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]WaterFall3_pipo.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Pipoya RPG Tileset 32x32/[A]_type3/not_animation/[A]WaterFall3_pipo.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\Unorganized Parts

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/Unorganized Parts/addwork.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/Unorganized Parts/addwork.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\basic caves and dungeons 32x32 standard - v1.0

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/.DS_Store` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/license.txt` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |

## assets\art\tilesets\basic caves and dungeons 32x32 standard - v1.0\assets

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/assets/assets-all.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/assets/assets-all.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/assets/bridges.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/assets/bridges.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/assets/stones.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/assets/stones.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\art\tilesets\basic caves and dungeons 32x32 standard - v1.0\tiles

| File | Category | Reason |
|---|---|---|
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/tiles/dirt-tiles-32x32.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/tiles/dirt-tiles-32x32.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/tiles/ground-tiles-32x32.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/tiles/ground-tiles-32x32.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/tiles/tiles-all-32x32.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/tiles/tiles-all-32x32.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/tiles/wall-tiles-32x32.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/tiles/wall-tiles-32x32.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/tiles/wall-transition-tiles-32x32.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/tiles/wall-transition-tiles-32x32.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/tiles/water-tiles-32x32.png` | KEEP | Source asset retained for runtime use, visual development, or licensed project content. |
| `assets/art/tilesets/basic caves and dungeons 32x32 standard - v1.0/tiles/water-tiles-32x32.png.import` | KEEP | Tracked import settings for source assets that are part of the Godot project configuration. |

## assets\placeholder

| File | Category | Reason |
|---|---|---|
| `assets/placeholder/.gitkeep` | DELETE | Placeholder marker in a content directory with no production runtime purpose. |

## autoloads

| File | Category | Reason |
|---|---|---|
| `autoloads/ActorVisuals.gd` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/ActorVisuals.gd.uid` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/AlignmentSystem.gd` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/AlignmentSystem.gd.uid` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/AudioManager.gd` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/AudioManager.gd.uid` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/DialogueManager.gd` | REFACTOR | Hardcodes dialogue trees in script; production dialogue should load from external JSON data files. |
| `autoloads/DialogueManager.gd.uid` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/GameClock.gd` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/GameClock.gd.uid` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/PlayerData.gd` | REFACTOR | Still exposes spike-era helper naming such as ensure_spike_defaults that should be normalized for production. |
| `autoloads/PlayerData.gd.uid` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/SaveManager.gd` | REFACTOR | Save/load world context should resolve authored map scenes and no longer depend on the mutable map implementation. |
| `autoloads/SaveManager.gd.uid` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/SceneManager.gd` | REFACTOR | Map state resolution still assumes a single mutable map scene instead of authored per-location scenes. |
| `autoloads/SceneManager.gd.uid` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/SignalBus.gd` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/SignalBus.gd.uid` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/StatRegistry.gd` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |
| `autoloads/StatRegistry.gd.uid` | KEEP | Core autoload used by the shipped game and suitable to keep with minor or no changes. |

## docs

| File | Category | Reason |
|---|---|---|
| `docs/HANDOVER.md` | REFACTOR | Needs a full-production handover that reflects the completed foundation pass and new archive layout. |
| `docs/art_direction.md` | REFACTOR | Contains stage-doc references that should be updated after archival moves. |
| `docs/stat_registry.md` | KEEP | Active project documentation retained as part of the production baseline. |

## docs\narrative

| File | Category | Reason |
|---|---|---|
| `docs/narrative/01_narrative_overview.md` | KEEP | Active project documentation retained as part of the production baseline. |
| `docs/narrative/02_world_setting.md` | KEEP | Active project documentation retained as part of the production baseline. |
| `docs/narrative/03_timeline.md` | KEEP | Active project documentation retained as part of the production baseline. |
| `docs/narrative/04_factions.md` | KEEP | Active project documentation retained as part of the production baseline. |
| `docs/narrative/05_characters.md` | KEEP | Active project documentation retained as part of the production baseline. |
| `docs/narrative/06_player_narrative_design.md` | KEEP | Active project documentation retained as part of the production baseline. |
| `docs/narrative/07_story_structure.md` | KEEP | Active project documentation retained as part of the production baseline. |
| `docs/narrative/08_quest_and_content_seeds.md` | KEEP | Active project documentation retained as part of the production baseline. |
| `docs/narrative/09_dialogue_style_guide.md` | KEEP | Active project documentation retained as part of the production baseline. |
| `docs/narrative/10_naming_conventions.md` | KEEP | Active project documentation retained as part of the production baseline. |

## docs\spike and vertical slice dev planning

| File | Category | Reason |
|---|---|---|
| `docs/spike and vertical slice dev planning/spike_progress.md` | REFACTOR | Historical spike document should move under docs/archive/vertical_slice/ rather than the live docs surface. |
| `docs/spike and vertical slice dev planning/stage_10_audio_asset_research.md` | REFACTOR | Historical stage planning document should be archived under docs/archive/vertical_slice/. |
| `docs/spike and vertical slice dev planning/stage_10_identity_matrix.md` | REFACTOR | Historical stage planning document should be archived under docs/archive/vertical_slice/. |
| `docs/spike and vertical slice dev planning/stage_10_master_plan.md` | REFACTOR | Historical stage planning document should be archived under docs/archive/vertical_slice/. |
| `docs/spike and vertical slice dev planning/stage_10_playtest_packet.md` | REFACTOR | Historical stage planning document should be archived under docs/archive/vertical_slice/. |
| `docs/spike and vertical slice dev planning/stage_10_tickets.md` | REFACTOR | Historical stage planning document should be archived under docs/archive/vertical_slice/. |
| `docs/spike and vertical slice dev planning/stage_8_5_asset_research.md` | REFACTOR | Historical stage planning document should be archived under docs/archive/vertical_slice/. |
| `docs/spike and vertical slice dev planning/stage_8_5_master_plan.md` | REFACTOR | Historical stage planning document should be archived under docs/archive/vertical_slice/. |
| `docs/spike and vertical slice dev planning/stage_8_5_systems_spec.md` | REFACTOR | Historical stage planning document should be archived under docs/archive/vertical_slice/. |
| `docs/spike and vertical slice dev planning/stage_8_5_tickets.md` | REFACTOR | Historical stage planning document should be archived under docs/archive/vertical_slice/. |
| `docs/spike and vertical slice dev planning/vertical_slice_plan.md` | REFACTOR | Archived slice ledger should move to docs/vertical_slice_plan.md so live docs point to a stable root-level reference. |

## scenes\battle

| File | Category | Reason |
|---|---|---|
| `scenes/battle/.gitkeep` | DELETE | Placeholder marker in a populated scene directory; no longer needed once real content exists. |
| `scenes/battle/Battle.gd` | REFACTOR | Still exposes debug skip input and a placeholder boss-mode path that should be removed from the production battle loop. |
| `scenes/battle/Battle.gd.uid` | KEEP | Battle runtime asset or scene retained for the shipped game. |
| `scenes/battle/Battle.tscn` | KEEP | Battle runtime asset or scene retained for the shipped game. |
| `scenes/battle/HitFlash.gdshader` | KEEP | Battle runtime asset or scene retained for the shipped game. |
| `scenes/battle/HitFlash.gdshader.uid` | KEEP | Battle runtime asset or scene retained for the shipped game. |

## scenes\cutscene

| File | Category | Reason |
|---|---|---|
| `scenes/cutscene/.gitkeep` | DELETE | Placeholder marker in a populated scene directory; no longer needed once real content exists. |
| `scenes/cutscene/Cutscene.gd` | REFACTOR | Still references spike-era helper naming and should align with production naming and map return flow. |
| `scenes/cutscene/Cutscene.gd.uid` | KEEP | Cutscene runtime content retained for the shipped game. |
| `scenes/cutscene/Cutscene.tscn` | KEEP | Cutscene runtime content retained for the shipped game. |

## scenes\debug

| File | Category | Reason |
|---|---|---|
| `scenes/debug/DebugPanel.gd` | DELETE | Spike-era runtime debug overlay removed from the shipped game surface. |
| `scenes/debug/DebugPanel.gd.uid` | DELETE | Spike-era runtime debug overlay removed from the shipped game surface. |
| `scenes/debug/DebugPanel.tscn` | DELETE | Spike-era runtime debug overlay removed from the shipped game surface. |

## scenes\hud

| File | Category | Reason |
|---|---|---|
| `scenes/hud/.gitkeep` | DELETE | Placeholder marker in a populated scene directory; no longer needed once real content exists. |
| `scenes/hud/HUD.gd` | REFACTOR | Still uses SpikeHUD naming and copy that should align with the cleaned production runtime surface. |
| `scenes/hud/HUD.gd.uid` | KEEP | HUD runtime content retained for the shipped game. |
| `scenes/hud/HUD.tscn` | KEEP | HUD runtime content retained for the shipped game. |
| `scenes/hud/LevelUpOverlay.gd` | KEEP | HUD runtime content retained for the shipped game. |
| `scenes/hud/LevelUpOverlay.gd.uid` | KEEP | HUD runtime content retained for the shipped game. |
| `scenes/hud/LevelUpOverlay.tscn` | KEEP | HUD runtime content retained for the shipped game. |

## scenes\main

| File | Category | Reason |
|---|---|---|
| `scenes/main/.gitkeep` | DELETE | Placeholder marker in a populated scene directory; no longer needed once real content exists. |
| `scenes/main/Main.gd` | REFACTOR | Still preloads the debug panel and uses spike-era HUD naming that should be cleaned up for production. |
| `scenes/main/Main.gd.uid` | KEEP | Tracked repository file retained as part of the production baseline. |
| `scenes/main/Main.tscn` | KEEP | Minimal entry scene remains a valid production host once runtime overlays are cleaned up in script. |

## scenes\map

| File | Category | Reason |
|---|---|---|
| `scenes/map/.gitkeep` | DELETE | Placeholder marker in a populated scene directory; no longer needed once real content exists. |
| `scenes/map/Map.gd` | REFACTOR | Still builds mine/crossroads content, runtime collision, and dev tooling in script instead of using authored map scenes. |
| `scenes/map/Map.gd.uid` | KEEP | Map resource retained as authored runtime content. |
| `scenes/map/Map.tscn` | REFACTOR | Current town-only base scene is overloaded as a mutable multi-location map and should be split into authored location scenes. |
| `scenes/map/TownTileset.tres` | KEEP | Authored tileset resource remains usable as part of the production baseline. |

## scenes\npc

| File | Category | Reason |
|---|---|---|
| `scenes/npc/NPC.gd` | REFACTOR | Production NPC base stays valid, but should be audited alongside collision sizing and naming cleanup. |
| `scenes/npc/NPC.gd.uid` | KEEP | NPC runtime content used by the shipped slice and retained for production. |
| `scenes/npc/NPC.tscn` | REFACTOR | Scene-authored collider should be verified and resized to the visible footprint for clean player blocking. |
| `scenes/npc/ShamanFollower.gd` | KEEP | NPC runtime content used by the shipped slice and retained for production. |
| `scenes/npc/ShamanFollower.gd.uid` | KEEP | NPC runtime content used by the shipped slice and retained for production. |
| `scenes/npc/ShamanFollower.tscn` | KEEP | NPC runtime content used by the shipped slice and retained for production. |

## scenes\ui

| File | Category | Reason |
|---|---|---|
| `scenes/ui/DialogueBox.gd` | REFACTOR | Needs dialogue-data externalization compatibility review and production copy cleanup. |
| `scenes/ui/DialogueBox.gd.uid` | KEEP | Shared UI component used in live runtime flow. |
| `scenes/ui/DialogueBox.tscn` | REFACTOR | Anchoring should remain bottom-third only and be verified against production layout rules. |
| `scenes/ui/PromptModal.gd` | KEEP | Shared UI component used in live runtime flow. |
| `scenes/ui/PromptModal.gd.uid` | KEEP | Shared UI component used in live runtime flow. |
| `scenes/ui/PromptModal.tscn` | KEEP | Shared UI component used in live runtime flow. |
| `scenes/ui/ScreenFader.gd` | KEEP | Shared UI component used in live runtime flow. |
| `scenes/ui/ScreenFader.gd.uid` | KEEP | Shared UI component used in live runtime flow. |
| `scenes/ui/ScreenFader.tscn` | KEEP | Shared UI component used in live runtime flow. |

## tools\evidence\stage_10

| File | Category | Reason |
|---|---|---|
| `tools/evidence/stage_10/01_town_start.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/01_town_start.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/02_town_collision_blocked.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/02_town_collision_blocked.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/03_town_collision_passable.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/03_town_collision_passable.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/04_mine_entry.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/04_mine_entry.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/05_mine_west_branch_locked.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/05_mine_west_branch_locked.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/06_battle_fighter.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/06_battle_fighter.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/07_battle_battlemage.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/07_battle_battlemage.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/08_shaman_intro_choice.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/08_shaman_intro_choice.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/09_shaman_recruit_return.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/09_shaman_recruit_return.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/10_shaman_kill_return.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/10_shaman_kill_return.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/11_mine_exit_victory.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/11_mine_exit_victory.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/12_crossroads_follower.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/12_crossroads_follower.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/README.md` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_10/runtime_results.json` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |

## tools\evidence\stage_8_5

| File | Category | Reason |
|---|---|---|
| `tools/evidence/stage_8_5/01_boot_from_current_save.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/01_boot_from_current_save.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/02_town_bookkeeper.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/02_town_bookkeeper.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/03_collision_blocked.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/03_collision_blocked.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/04_collision_passable.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/04_collision_passable.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/05_hud_stats.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/05_hud_stats.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/06_hud_equipment.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/06_hud_equipment.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/07_debug_hidden.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/07_debug_hidden.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/08_cutscene_mine_entry.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/08_cutscene_mine_entry.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/09_battle_presentation.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/09_battle_presentation.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/10_levelup_return_hud.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/10_levelup_return_hud.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/11_shaman_follow_crossroads.png` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/11_shaman_follow_crossroads.png.import` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |
| `tools/evidence/stage_8_5/runtime_results.json` | REFACTOR | Historical verification output should be retained under tools/archive/vertical_slice/ instead of the live tools surface. |

## tools

| File | Category | Reason |
|---|---|---|
| `tools/generate_stage1_town.gd` | REFACTOR | One-off slice generation tooling should be archived rather than presented as active production tooling. |
| `tools/generate_stage1_town.gd.uid` | REFACTOR | One-off slice generation tooling should be archived rather than presented as active production tooling. |
| `tools/generate_stage_8_5_assets.ps1` | REFACTOR | One-off slice generation tooling should be archived rather than presented as active production tooling. |
| `tools/stage_10_runtime_harness.gd` | REFACTOR | Historical slice verification harness should be archived out of the live tool surface. |
| `tools/stage_10_runtime_harness.gd.uid` | REFACTOR | Historical slice verification harness should be archived out of the live tool surface. |
| `tools/stage_10_runtime_harness.tscn` | REFACTOR | Historical slice verification harness should be archived out of the live tool surface. |
| `tools/stage_8_5_runtime_harness.gd` | REFACTOR | Historical slice verification harness should be archived out of the live tool surface. |
| `tools/stage_8_5_runtime_harness.gd.uid` | REFACTOR | Historical slice verification harness should be archived out of the live tool surface. |
| `tools/stage_8_5_runtime_harness.tscn` | REFACTOR | Historical slice verification harness should be archived out of the live tool surface. |

## Foundation Pass Result

- Deleted files: Pending implementation.
- Refactored files: Pending implementation.
- Dialogue/data externalization: Pending implementation.
- REVIEW items: None recorded in the initial audit pass.
- Headless validation: Pending implementation.
