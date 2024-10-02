Cette application permet de contrôler l'état d'une diode (ouverture/fermeture) dépendament du message reçu à travers l'UART:
* 'Y' allume la diode
* N'importe quelle autre caractère pour l'éteindre
Cablâge : 
Pin 1 (PB7 : USART1_RX) ==> TX du module bleutooth/USART
Module bleutooth alimenté par une alimentation de 5V (une autre carte dans cette exemple puisque STM32G0 ne fournit que 3.3V en output)
Dans le cas cité, les masses des 2 cartes doivent être lié ensemble.
Pin 6 (PA15) ==> Diode (optionelle)