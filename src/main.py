import numpy as np
import cv2
from PIL import ImageGrab
from win32gui import FindWindow, GetWindowRect
i = 0;

while True:
    window_name = "桂林字牌 - MuMu模拟器"
    id = FindWindow(None, window_name)
    bbox = GetWindowRect(id)
    image_array = np.array(ImageGrab.grab(bbox=bbox))
    image_array = cv2.cvtColor(image_array, cv2.COLOR_BGR2RGB)
    cv2.imshow('screenshot',image_array)
    key = cv2.waitKey(25) & 0xFF
    if key == ord('q'):
        cv2.destroyAllWindows()
        break
    if key == ord("u"):
        i = i + 1
        filename = "./inputs/glzp"+ str(i) + ".jpg";
        print("filename %s", filename)
        cv2.imwrite(filename, image_array,[cv2.IMWRITE_JPEG_QUALITY,100])