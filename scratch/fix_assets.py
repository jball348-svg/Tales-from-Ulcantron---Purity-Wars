import glob
from PIL import Image

def process_image(filepath):
    print("Processing", filepath)
    try:
        img = Image.open(filepath).convert("RGBA")
    except Exception as e:
        print("Failed to open", filepath, e)
        return
        
    width, height = img.size
    
    # Check four corners and identify background color (most common corner color)
    corners = [
        img.getpixel((0, 0)),
        img.getpixel((width-1, 0)),
        img.getpixel((0, height-1)),
        img.getpixel((width-1, height-1))
    ]
    
    # Find mode of corners
    counts = {}
    for c in corners:
        counts[c] = counts.get(c, 0) + 1
    bg_color = max(corners, key=lambda c: counts[c])
    
    # We do a flood fill from the borders with the bg_color
    pixels = img.load()
    visited = set()
    queue = []
    
    def color_dist(c1, c2):
        # Distance squared
        return sum((a - b) ** 2 for a, b in zip(c1[:3], c2[:3]))
        
    for x in range(width):
        for y in (0, height - 1):
            if color_dist(pixels[x, y], bg_color) < 1000:
                queue.append((x, y))
                visited.add((x, y))
    for y in range(1, height - 1):
        for x in (0, width - 1):
            if color_dist(pixels[x, y], bg_color) < 1000:
                queue.append((x, y))
                visited.add((x, y))
                
    while queue:
        cx, cy = queue.pop(0)
        pixels[cx, cy] = (0, 0, 0, 0)
        
        for dx, dy in ((1,0), (-1,0), (0,1), (0,-1)):
            nx, ny = cx + dx, cy + dy
            if 0 <= nx < width and 0 <= ny < height and (nx, ny) not in visited:
                if color_dist(pixels[nx, ny], bg_color) < 1000:
                    visited.add((nx, ny))
                    queue.append((nx, ny))
                    
    img.save(filepath)
    print("Saved", filepath)

files_to_fix = [
    "assets/proprietary/production/title/title_logo_plate_v01.png",
    "assets/proprietary/production/title/title_emblem_frontier_v01.png",
    "assets/proprietary/production/ui/ui_title_panel_v01.png",
    "assets/proprietary/production/ui/ui_title_inset_v01.png",
    "assets/proprietary/production/ui/ui_title_button_v01.png",
    "assets/proprietary/production/ui/ui_title_button_pressed_v01.png"
]

for f in files_to_fix:
    process_image(f)
