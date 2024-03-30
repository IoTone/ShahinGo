# Overview

RearViewsion is a sensorfusion app that takes the rearview camera of a visionpro, based on an ESP32-EYE, and grabs image frames into a floating window.  Since the code is open, you can modify and build upon this for your own designs.  IoTone will release the hardware as part of its own OpenWR (Open Wearable) initiative.  +1 Open Hardware +1 Open Source.  One might argue this is a missing feature of the product.

## Software Dependencies

### ESP32-EYE Software

- TODO: The original source is based CameraWebServer from the ESP32 Arduino samples.  Double double check where this came from.
- Arduino SDK
- ESP32 Board installation

## Running on VisionPro

- Run your ShashinGo Concept2 camera (ESP32-EYE) by plugging it into any power source (USB)
- Turn on your Vision Pro
- Connect to Wifi of "ESP32-EYE"
- Deploy app from XCode
- You should now see the window for your central view.  Feel free to move this around and resize.
- You will first need to start the stream.  Then scroll back up to minimize.

## Known Issues

- This is running on a private network at the moment.  We have no way without bonjour to discover the camera on the local network
- There should be a way to put this device onto infrastructure wifi easily
- BLE is too slow to send picture updates, so it has to be Wifi
- Framerate of the ESP32-EYE isn't fantastic.  You can change the configuration, however, that may affect other aspects of performance.
- Image quality is below average, not at Apple standards.
- The usability of the initial set up isn't great.  You have to scroll a bit.  It would be better if the camera was visible right away
- Ideally the camera stream is available in a more VR friendly window