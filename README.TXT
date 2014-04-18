Car Physics demo

version 0.8
June 2001
Monstrous Software (C) 2001
===========================================================


Contents
--------
This little program demonstrates acceleration and deceleration using dynamics and how do turns and skidding.  If you have any suggestions or improvements, please contact me.
See also the car physics tutorial at http://home.planet.nl/~monstrous.

Keys
----
Push the pedal to the metal using the cursor up key.  The car will accelerate until the force exerted by the engine matches the resistance force (=rolling resistance + drag).
The cursor down reduces the throttle. Brake using the right Control key.  

Steering is with left and right cursor keys.  The steer does not return to it's original position when you let go of the cursor key.  This is to make it easier to experiment with
various steering angles.

You can let front or rear wheels slip using keys F and A.  A rear wheel slip in a turn
will let the car spin wildly out of control.  A slipping front wheel means you won't make
the turn. Press SPACE to let all wheels slip at the same time.

Zoom in and out with Q and W.

F12 to reset, Esc to quit.


Display
-----
The following information is shown on screen.

small dials (from top to bottom)
-steering angle (also known as delta)
-side slip angle (also known as beta)
-"rotation angle" (due to yaw rate)
-slip angle front wheels
-slip angle rear wheels

vertical bars
-left bar		throttle (0-100%)
-right bar		brakes (0 or 100%)

big dials
-big dial top		velocity vector relative to car reference frame
-big dial bottom	velocity vector in world space


Version history
---------------
0.8	05-06-2001	Largely rewritten.  High speed cornering and skidding seems
			to work now.  Added display dials.  View no longer centres on car
			but car moves across the screen and wraps around at the edges.
 
0.5	12-06-2000	Fixed bug that caused runaway velocities. The last term of the
			resistance force must be DRAG*car->velocity.x*ABS(car->velocity.x).
			Note the ABS to make sure the velocity's sign is not lost.

0.4	10-06-2000	Made compatible for MSVC (#define'd M_PI and made makefile.vc)

0.3	04-06-2000	Added skidding based on dynamics.

0.2	10-05-2000	Fixed curves to look realistic, no skidding yet.

0.1	27-04-2000	First version


Installation
------------
To compile with DJGPP, run make.
To compile under Linux, use make -f MAKEFILE.UNI.
To compile with MSVC, run VCVARS32 and use nmake /f makefile.vc


Marco Monster
monstrous@planet.nl
http://home.planet.nl/~monstrous

