import camera
import time

print("Initializing camera...")
camera.init()

print("Capturing image...")
buf = camera.capture()

with open("test.jpg", "wb") as f:
    f.write(buf)

print("Saved test.jpg")
