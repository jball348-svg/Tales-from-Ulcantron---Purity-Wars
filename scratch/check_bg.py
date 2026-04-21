from PIL import Image
img = Image.open("assets/proprietary/production/title/title_background_frontier_v01.png")
print("Size:", img.size)
print("Mode:", img.mode)
if img.mode == "RGBA":
    extrema = img.getextrema()
    print("Extrema:", extrema)
    # Check if alpha is always 255
    if extrema[3][0] < 255:
        print("Image has transparency!")
    else:
        print("Image is fully opaque.")
else:
    print("Image has no alpha channel.")
