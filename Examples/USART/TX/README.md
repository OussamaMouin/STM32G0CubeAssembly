# USART TX Example

![USART TX Example](../../../Images/TX1.jpg) <!-- Replace with the correct image path if necessary -->

## Description
This application sends two characters, `'Y'` and `'N'`, over the USART2 interface at regular intervals:
- **'Y'** is sent first, followed by a delay.
- **'N'** is sent next, followed by another delay.

This cycle repeats indefinitely, and the characters are transmitted to the connected Bluetooth/USART module.

### Wiring:
- **Pin 4 (PA2 : USART2_TX)**: Connected to the TX pin of the Bluetooth/USART module.
- **Power**: The Bluetooth module is powered by a 5V supply (from another board, as the STM32G0 only provides 3.3V output).
  - The grounds of both boards must be connected together.

---

## Video Demonstration

<a href="https://player.vimeo.com/video/1015182626">
    <img src="../../../Images/TX2.jpg" alt="Video Demonstration" width="300">
</a>

Click the image above to watch the video demonstration of this example.
