Shiny Application Project Sales Pitch
========================================================
author: WPMcdonald
date: 25 October, 2014

Background
========================================================

When I was a child (far too long ago!) I was given a gift one Christmas of a toy that was all the rage at the time ... a Spirograph. 

I was a nerd in heaven! Especially since no one else in the family ever seemed to want to play with it. This is a very important point when you are the smallest in the family and claiming something as your own can be a battle

As I have been exploring the World of R I came across a wonderful blog by another user as he explores this world as well and introduced me to a very similar mathematical construct called a "Harmonograph". You can read about about it here. [Ripples: Very Small Waves in R](http://aschinchon.wordpress.com/2014/10/13/beautiful-curves-the-harmonograph/)


Harmonograph Mathematics
========================================================

Mathematically a Harmonograph creates its images based on the movement of one or more damped pendulums with the following formulae: 

$$
x(t) = A_1\sin(tf_1 + p_1) e^{-d_1t}) + A_2\sin(tf_2 + p_2) e^{-d_2t}\\
\\
y(t) = A_3\sin(tf_3 + p_3) e^{-d_3t}) + A_4\sin(tf_4 + p_4) e^{-d_4t}
$$
where
$$
f = frequency, \\
p = phase, \\
A = amplitude, \\
d = damping, 
\\t = time$$


Sample Plot
========================================================
So what does this look like with a few random variables

![plot of chunk unnamed-chunk-1](Project Presentation-figure/unnamed-chunk-1.png) 


Play 
========================================================

Simply go to my shiny.io account site

[ShinyApps:wpmcdonald](https://wpmcdonald.shinyapps.io/ProjectFiles/)

and play with moidfying a few of the variables

Next we'll try working out the formula for the classic Spirograph which describes a similar sinusoidal path though based more on the relative size of two circles.



