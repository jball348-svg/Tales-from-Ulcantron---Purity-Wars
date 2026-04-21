import glob
import os
from rembg import remove
from PIL import Image

def process_with_rembg(filepath):
    print("rembg processing", filepath)
    try:
        input_image = Image.open(filepath)
        output_image = remove(input_image)
        output_image.save(filepath)
        print("Successfully processed and saved", filepath)
    except Exception as e:
        print("Error processing", filepath, e)

files_to_fix = [
    "assets/proprietary/production/title/title_logo_plate_v01.png",
    "assets/proprietary/production/title/title_emblem_frontier_v01.png",
    "assets/proprietary/production/ui/ui_title_panel_v01.png",
    "assets/proprietary/production/ui/ui_title_inset_v01.png",
    "assets/proprietary/production/ui/ui_title_button_v01.png",
    "assets/proprietary/production/ui/ui_title_button_pressed_v01.png"
]

for f in files_to_fix:
    if os.path.exists(f):
        process_with_rembg(f)
    else:
        print(f"File not found: {f}")
