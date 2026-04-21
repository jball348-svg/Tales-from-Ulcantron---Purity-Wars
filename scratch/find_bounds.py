import os
from PIL import Image

def find_real_bounds(filepath):
    print(f"Finding real bounds for {filepath}")
    try:
        img = Image.open(filepath).convert("RGBA")
        width, height = img.size
        pixels = img.load()
        
        def is_transparent(x, y):
            return pixels[x, y][3] < 100 # High threshold
            
        # Scan rows
        top = 0
        for y in range(height):
            non_trans = sum(1 for x in range(width) if not is_transparent(x, y))
            if non_trans > width * 0.05: # At least 5% of the row
                top = y
                break
        
        bottom = height - 1
        for y in range(height-1, -1, -1):
            non_trans = sum(1 for x in range(width) if not is_transparent(x, y))
            if non_trans > width * 0.05:
                bottom = y
                break
                
        # Scan cols
        left = 0
        for x in range(width):
            non_trans = sum(1 for y in range(height) if not is_transparent(x, y))
            if non_trans > height * 0.05:
                left = x
                break
                
        right = width - 1
        for x in range(width-1, -1, -1):
            non_trans = sum(1 for y in range(height) if not is_transparent(x, y))
            if non_trans > height * 0.05:
                right = x
                break
        
        if right > left and bottom > top:
            cropped = img.crop((left, top, right + 1, bottom + 1))
            cropped.save(filepath)
            print(f"  Cropped from {img.size} to {cropped.size} (L:{left}, T:{top}, R:{right}, B:{bottom})")
        else:
            print(f"  Could not find bounds.")
            
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
        find_real_bounds(f)
