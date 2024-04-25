# Overview

RearViewsion is a sensor fusion app that is THE missing rearview camera of a Vision Pro, based on an ESP32-EYE,.  A VisionPro app is provided that grabs image frames into a floating window.  Since the code is open, you can modify and build upon this for your own designs.  IoTone will release the hardware as part of its own OpenWR (Open Wearable) initiative.  +1 Open Hardware +1 Open Source.  One might argue this is a missing feature of the product.

Since the code is open, you can modify and build upon this for your own designs.  This is an AI camera and it opens many possibilities.  One might argue this is a missing feature of the Vision Pro product.  IoTone will release the hardware as part of its own OpenWR (Open Wearable) initiative.  +1 Open Hardware +1 Open Source.  

## Demo and Screenshots

![image](https://github.com/IoTone/ShashinGo/assets/64202/8e445356-69a2-4f0a-a1f5-99642222fb40)


![image](https://github.com/IoTone/ShashinGo/assets/64202/d64021eb-922c-473a-b9ee-e269f738b4b9)


![image](https://github.com/IoTone/ShashinGo/assets/64202/9448e5ce-ba10-41fb-b1be-e2000d67c881)

Video demo: (onedrive mp4 file) https://1drv.ms/v/s!AuIL2jCvMCqRiIR8QJMjqO8AvX-dfA?e=YQp5hG


## Hardware

### Firmware

There are multiple firemware options (at least 3-4) possible.  The basic "CameraWebServer" example is bundled in this repository in the directory under Concept2.  Additional firmware is found here:

- (For M5Stacks base, ESP-IDF) https://github.com/m5stack/M5Stack-Camera/tree/master
- (Arduino Based, recommended) https://github.com/easytarget/esp32-cam-webserver

### Builds

DK (DevKit) Features:

- Research grade / Maker Grade
- USB-micro power: you will need to work out how you get power to the unit.  Any long cable is feasible.
- ESP32 based, so not super low power, and camera will probably be an OV2640 or similar
- Either: 3D Printed Case with notches for zip ties, through hole for camera mount, No case ... just a PCB, or a nice case that is manufactured
- Firmware Rev1 installed, with source available for improvements
- Support through OpenWR wiki and github issues
- The RearViewsion VisionPro app will be available to build and install with a developer license (not yet in the app store).  
Target price $75 ... TBD.  Early buyers will get a 30% discount on the next rev released, and friends/family coupons to share for 20%.

Please read description of the Kits carefully!  Some kits are great for makers, others are perfect for a non-power user that just wants to plug in and go. Some have DC power options only.  Most have a USB power option.

** Timeline ** : ASAP.   These will be selling on tindie.com as soon as I have at least 10 units assembled.  Working on the 3D design for a case that is acceptable for use.  Estimate by mid to late april 2024 depending on sourcing of parts.

#### DK Rev 1 (ESP32-EYE) EOL

- [Buy on Tindie.com](https://www.tindie.com/products/iotoneheart/iotone-shashingo-c2-ai-camera-for-vr-esp32-eye/)
- Hardware Details: https://wiki.dfrobot.com/ESP-EYE%20Development%20Board%20SKU:%20DFR0620
- Only One Available in this configuration.  Unfortunately these are no longer produced by Espressif.
- You can find these on ebay, and make your own.
- USB Micro Power
- No hardware case, PCB only
- Image Quality: average/low 5FPS
- Include a Microphone built in
- Only runs on 192.168.4.1, you need to join it's WIFI network "ESP32-EYE"
- Only accepts a single Wifi client
- Insecure host, so exception is required
- Web HTML UI has full set of camera configuration options available.  It does require you to first start your stream before you can see a camera image.
- Default application supports facetracking on the camera
- No known issues with the VisionOS app. 

#### DK Rev 1 (ESP32-CAM)

- Buy: TODO Add link
- Hardware Details: https://www.arducam.com/esp32-machine-vision-learning-guide/
- Schematics: https://raw.githubusercontent.com/SeeedDocument/forum_doc/master/reg/ESP32_CAM_V1.6.pdf
- This is a prevalant option on Amazon and Ebay and you can source these in volume for very cheap.
- USB Micro Power, but recommeded to power directly via 3.3V or 5V + GND pins (remove the "MD" board if programming or debugging isn't needed)
- Includes controllable front side LED that can be controlled
- There are a lot of cases available for 3D printing, for example: https://www.thingiverse.com/thing:3463679 or https://www.printables.com/model/456819-case-for-esp32cam
- Includes an SDCard Reader!
- Image Quality: average/low 5FPS, arguably these boards have the worst EMI sensitivty, and it isn't recommended to use with the USB power.
- Only runs on 192.168.4.1, you need to join it's WIFI network "ESP32-CAM"
- Only accepts a single Wifi client
- Insecure host, so exception is required
- Web HTML UI has full set of camera configuration options available.  It does require you to first start your stream before you can see a camera image.
- Default application supports facetracking on the camera
- No known issues with the VisionOS app. 

#### DK Rev 1 (M5CameraX Unit)

- [Buy on Tindie.com](https://www.tindie.com/products/iotoneheart/iotone-shashingo-c2-ai-camera-for-vr-m5camerax/)
- In terms of inventory, these seem to be in good supply, but I would expect these to go EOL at some point in the near future.
- Hardware Details: https://docs.m5stack.com/en/unit/m5camera_x
- These are extremely nice package, and can be easily mounted.
- USB-C Power
- Image Quality: average 5-8FPS
- Only runs on 192.168.4.1, you need to join it's WIFI network "M5FishEyeCam"
- Only accepts a single Wifi client
- Insecure host, so exception is required
- This UI lacks any controls, which has advantages for simplicity.
- Default application supports facetracking on the camera
- No known issues with the VisionOS app. 

#### DK Rev 1 (ESP32-FISHEYE with PSRAM)

- [Buy on Tindie.com](https://www.tindie.com/products/iotoneheart/iotone-shashingo-c2-ai-camera-for-vr-fisheye/)
- In terms of inventory, these seem to be in good supply, but I would expect these to go EOL at some point in the near future.
- Hardware Details: https://docs.m5stack.com/en/unit/ESP32CAM-PSRAM
- USB-C Power
- No hardware case, PCB only
- Image Quality: average 5-8FPS
- Only runs on 192.168.4.1, you need to join it's WIFI network "M5FishEyeCam"
- Only accepts a single Wifi client
- Insecure host, so exception is required
- This UI lacks any controls, which has advantages for simplicity.
- Default application supports facetracking on the camera
- No known issues with the VisionOS app. 

#### DK Rev 1 (CameraS3 Unit)

- Buy: TODO Add link
- In terms of inventory, these seem to be in good supply, and are using a newer chip set.
- Hardware Details: https://docs.m5stack.com/en/unit/Unit-CamS3
- These are extremely nice package, and can be easily mounted.
- Includes an SDCard Reader!
- USB-C Power
- Image Quality: average/good 8-12FPS
- Only runs on 192.168.4.1, you need to join it's WIFI network "UnitCamS3-WIFI"
- Only accepts a single Wifi client
- Insecure host, so exception is required
- This UI has a few controls and requires a first effort to turn on the stream 
- No known issues with the VisionOS app. 

##### DK Rev 2

TBD ... possibly a different a different camera with an SDCard slot, battery options.  Looking to create a BLE configuration interface to allow easy set up of features and connect it to WiFi.  How to make this a remote server for simple low res camera stream and integrate via native APIs instead of HTML5.  Capture stills?  Remote trigger?  Wearable trigger?

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

## 
## Known Issues

- This is running on a private network at the moment.  We have no way without bonjour to discover the camera on the local network
- There should be a way to put this device onto infrastructure wifi easily
- BLE is too slow to send picture updates, so it has to be Wifi
- Framerate of the ESP32-EYE isn't fantastic.  You can change the configuration, however, that may affect other aspects of performance.
- Image quality is below average, not at Apple standards.
- The usability of the initial set up isn't great.  You have to scroll a bit.  It would be better if the camera was visible right away
- Ideally the camera stream is available in a more VR friendly window
