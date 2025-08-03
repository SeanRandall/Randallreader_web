--- 
layout: post 
title:  "after first parts come first steps" 
--- 
Delivery 2 appeared late last night.

![A collection of breadboards and jumper cables](/assets/images/2025-08-03-02.png) 

My wife kept telling me I could pick up a breadboard from the supermarket. She'd never seen anything like one of these before. Her verdict?

>" It's full of holes."

That's about as much as I can get out of her.

Me, meanwhile?
I've been writing software for over a quarter of a century. Languages come and go, methodologies change, but it's always been the same basic process. Turn an idea into an effect. But that process has been bounded by keyboard and screen. Everything I've done has required me to type to the computer, and every output I've had has required computer operation. I've not really had to deal with the physical equipment beyond the buttons. I've prototyped hardware before, but always mentally or on paper, passed along to others more capable than myself to make it real.

So, as I sit here, taking great care to carefully count tiny holes a couple of millimeters apart then work out how long a wire I need to connect A to B, it's fair to say I'm absolutely out of my comfort zone here. I know it's all completely safe, of course - I have zero fear of electrocuting myself or anything like that. There's no possibility of danger, and yet I find myself baffled at people who can so nimbly do this in their sleep.

The *this* in question is a basic task in electronics: take the 7 pins from the keypad, and wire them to 7 pins on the microcontroller.

![Diagram showing a connection between an ESP32-S3 board and a 3x4 matrix keypad using 7 GPIO pins.](/assets/images/2025-08-03-01.png)

Obviously, the biggest difference here for me is that I'm not just writing code. well I am - that [diagram](/assets/diagrams/2025-08-03-01.d2) was code. I literally wrote "ESP32.G13 -- Keypad.P1" to get the line in the diagram showing the connection between the G13 Pin on the microcontroller and the pin 1 on the keypad. But then, I move my hands away from the computer, pick up a wire, and actually run it between those points on the board.  And that's ... weird. The diagram is simply an abstraction of the real. Taking what's been a software circuit out of my head.  I'm not sure I altogether approve.

There's no possibility of making this thing talk yet, but there's a certain serenity in sitting here in the quiet, learning about the breadboard's layout, counting holes, and poking little wires into them. It's a small, tiny step.  But it is a step.