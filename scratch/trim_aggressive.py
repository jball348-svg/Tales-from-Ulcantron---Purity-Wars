import os
from PIL import Image

def trim_alpha_aggressive(filepath):
    print(f"Aggressive trimming {filepath}")
    try:
        img = Image.open(filepath).convert("RGBA")
        data = img.getdata()
        
        # New data: if alpha is low, make it 0
        new_data = []
        for item in data:
            if item[3] < 50: # More aggressive threshold
                new_data.append((0, 0, 0, 0))
            else:
                new_data.append(item)
        
        img.putdata(new_data)
        
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
        trim_alpha_aggressive(f)
