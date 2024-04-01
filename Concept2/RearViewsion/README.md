# Overview

RearViewsion is a sensor fusion app that is THE missing rearview camera of a Vision Pro, based on an ESP32-EYE,.  A VisionPro app is provided that grabs image frames into a floating window.  Since the code is open, you can modify and build upon this for your own designs.  IoTone will release the hardware as part of its own OpenWR (Open Wearable) initiative.  +1 Open Hardware +1 Open Source.  One might argue this is a missing feature of the product.

## Demo and Screenshots

![image](https://github.com/IoTone/ShashinGo/assets/64202/8e445356-69a2-4f0a-a1f5-99642222fb40)


![image](https://github.com/IoTone/ShashinGo/assets/64202/d64021eb-922c-473a-b9ee-e269f738b4b9)


![image](https://github.com/IoTone/ShashinGo/assets/64202/9448e5ce-ba10-41fb-b1be-e2000d67c881)

Video demo: (onedrive mp4 file) https://1drv.ms/v/s!AuIL2jCvMCqRiIR8QJMjqO8AvX-dfA?e=YQp5hG


## Hardware

### Builds

#### DK Rev 1

Features:

- Research grade / Maker Grade
- USB-micro power: you will need to work out how you get power to the unit.  Any long cable is feasible.
- ESP32-EYE base
- 3D Printed Case with notches for zip ties, through hole for camera mount
- Firmware Rev1 installed, with source available for improvements
- Support through OpenWR wiki and github issues
- The RearViewsion VisionPro app will be available to build and install with a developer license (not yet in the app store).  
Target price $75 ... TBD.  Early buyers will get a 30% discount on the next rev released, and friends/family coupons to share for 20%.

** Timeline ** : ASAP.   These will be selling on tindie.com as soon as I have at least 10 units assembled.  Working on the 3D design for a case that is acceptable for use.  Estimate by mid to late april depending on sourcing of parts.

##### DK Rev 2

TBD ... possibly a different a different camera with an SDCard slot, battery options.

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
