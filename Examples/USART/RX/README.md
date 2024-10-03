# USART RX Example

![USART RX Example](../../Images/RX1.jpg) <!-- Replace with the correct image path if necessary -->

## Description
This application controls the state of an LED (on/off) depending on the message received via UART:
- Sending `'Y'` turns the LED on.
- Sending any other character turns the LED off.

### Wiring:
- **Pin 1 (PB7 : USART1_RX)**: Connected to the TX pin of the Bluetooth/USART module.
- **Power**: The Bluetooth module is powered by a 5V supply (from another board, as the STM32G0 only provides 3.3V output).
  - In this case, the ground of both boards should be connected.
- **Pin 6 (PA15)**: Connected to the LED (optional).

---

## Video Demonstration

![Video Demonstration](../../Images/RX2.jpg)

<div style="padding:177.78% 0 0 0;position:relative;">
  <iframe src="https://player.vimeo.com/video/1015182859?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="USART_RX_Example"></iframe>
</div>
<script src="https://player.vimeo.com/api/player.js"></script>

Click the image above to watch the video demonstration of this example.

