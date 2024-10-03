# ADC Application

![ADC Application](Images/ADC_Example.jpg) <!-- Replace with the actual path to your image -->

## Description of the ADC Application
The goal of this application is to control the state of an LED (PA15) by reading the ADC value from a potentiometer. A threshold value is set (0x7FF, approximately 2V), beyond which the LED's state changes.

### Operation:
- **LED**: PA15 (or external LED connected).
- **Threshold**: 0x7FF (approximately 2V). When the ADC value exceeds this threshold, the LED's state toggles.

### Wiring:
- **Pin 1**: Potentiometer
- **Pin 6**: External LED (optional, as LD2 is already connected to PA15)

### Explanation:
The ADC (Analog-to-Digital Converter) reads the voltage from the potentiometer and compares it to the threshold value. If the voltage exceeds this threshold, the LED will turn on or off accordingly.

---

## Video Demonstration
[![Video Demonstration](path_to_video_thumbnail.jpg)](https://player.vimeo.com/video/1015183830)

Click the image above to watch the video demonstration of this example.


