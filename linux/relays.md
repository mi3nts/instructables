# Realys for Mints Devices

## Central Node V2

Some useful options- >
https://www.sparkfun.com/products/16566  --> Ratings  :(
https://www.adafruit.com/product/3191 --> Only works with 3V arduinos --> Like featherwings 
https://www.sparkfun.com/products/15093 --> Can used but 3V 


Central nodes will have multiple sbc typically requiring either 5 or 12 v inputs intended to be controlled via multiple relays. The relays need to be focused on resistive loads that are work on 5/3.3 microcontrollers with line voltage power handling capabilities of atleast 12v/5v with 5amp inputs. And further they need to be normally closed.

Latichg relays are used to keep current energy without waisting energy.
On solid state relays there are no mechanical parts Typically normally closed and use opto electronics.

Multiple poles means multiple circuits that a relay can control. Eg: a light and a fan. 
Double throw relay gives you alernative open/closed pins. when one is on the other one is off. 

Delayed circuits often does the action after a se amount of time. 

Operational Power Rating: This rating specifies the maximum continuous power or current that a relay can handle while in its normal, closed (NC) or open (NO) state. It represents the power that can flow through the relay's contacts when it's not in the process of switching (changing from open to closed or vice versa). The operational power rating is important to ensure that the relay can handle the load it will be controlling without overheating or suffering damage during normal, steady-state operation.

Switching Power Rating: This rating refers to the maximum power or current that a relay can handle while actively switching between its open and closed states. When a relay switches, there is a momentary period of increased resistance and potentially higher power dissipation due to the arcing and contact bounce that occurs during the transition. The switching power rating is crucial to ensure that the relay can safely handle the transient conditions during switching without causing excessive wear on the contacts or other issues.

In summary, the key difference is that the operational power rating pertains to the relay's capacity during steady-state operation, while the switching power rating is concerned with the relay's capability to handle transient conditions during the act of switching. It's essential to choose a relay with ratings that match the requirements of the specific application to ensure reliable and safe operation. Using a relay with insufficient operational or switching power ratings can lead to premature failure or unreliable performance.


## references
- https://www.youtube.com/watch?v=7DcCwGuP-eI&themeRefresh=1
- youtube.com/watch?v=n594CkrP6xE&t=634s

