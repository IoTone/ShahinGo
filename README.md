# Overview

The Shashin Go series of platforms is based around the idea of a wearable camera.  It is intended to augment existing devices (phone, computer, etc.).

Guiding principles:
- Open Source Design
- Can be built from available parts (on the market today)
- Geared towards personal data capture and local AI applications


## Platforms

### Concept 1

The Shashin Go Concept 1 is an Open Source Hardware design for AI data capture.
· Open Source software provided gives the user complete control over the camera resolution and data format
· Software is available on Github and can be reflashed with alternative firmware using either Arduino or the Sony Spresense SDK
· Ships in camera mode, able to capture photo streams and save data to an SD card
· Alternative firmware provides Tensor Flow Lite based Person Detection

Sony Spresense platform 
This platform features a 6-core MCU and a 5MP camera.  It is well suited for IoT and AI applications, yet has the simplicity of the Arduino ecosystem.

### Concept 2

Concept 2 is known as RearViewsion, features a wearable Wifi Camera with a companion application for the VisionPro.   It gives the visionpro the missing external camera, in this case, geared towards rear facing vision.
It was a winner of the "Best Hardware" category at VisionDevCamp: https://visiondevcamp.org/visiondevcamp-winners/

The plan for this hardware is to get it for sale on tindie in several variations as I try out different design concepts.  There are hundreds of possible features.  
I would like to test the market to see what is the most useful and cost offective to build.  I expect different offerings in the $30-$100 range, based on enclosure,
memory, SD storage, applications, etc.

## References

- Buy it: https://www.tindie.com/products/iotoneheart/iotone-shashin-go-concept-1/
- Datasheet: [ShashinGo Concept1 PDF](https://d3s5r33r268y59.cloudfront.net/datasheets/33639/2024-02-07-10-08-35/IoTone_Datasheet_ShashinGo_Concept1.pdf)
- Concept1 case design attribution: AnshumanFauzdar https://www.thingiverse.com/thing:5078411 

## Code

- Concept1: https://github.com/IoTone/ShashinGo/tree/main/Concept1
- Concept2: Vision Pro 写真*RearView Camera

## Buy Hardware

- The Concept1 : https://www.tindie.com/products/iotoneheart/iotone-shashin-go-concept-1/ based on a Sony Spresense.

