import os
from PIL import Image

def crop_image(filepath):
    print(f"Cropping {filepath}")
    try:
        img = Image.open(filepath).convert("RGBA")
        bbox = img.getbbox()
        if bbox:
            cropped = img.crop(bbox)
            cropped.save(filepath)
            print(f"  New size: {cropped.size}")
        else:
            print(f"  Image is empty, skipping.")
    except Exception as e:
        print(f"  Error: {e}")

files = [
    "assets/proprietary/production/title/title_logo_plate_v01.png",
    "assets/proprietary/production/title/title_emblem_frontier_v01.png",
    "assets/proprietary/production/ui/ui_title_panel_v01.png",
    "assets/proprietary/production/ui/ui_title_inset_v01.png",
    "assets/proprietary/production/ui/ui_title_button_v01.png",
    "assets/proprietary/production/ui/ui_title_button_pressed_v01.png"
]

for f in files:
    if os.path.exists(f):
        crop_image(f)
    else:
        print(f"File not found: {f}")
