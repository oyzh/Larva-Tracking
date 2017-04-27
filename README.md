Definitions of parameters:
--------------------------
+ turn_avoid_light:  0 = success in light avoidance, 1 = fail in light avoidance

+ body_edge_angle: angle between the line of midpoint-tail and the line linking the two points on smoothed light spot edge closest to midpoint and tail

+ distance_head_start: distance between head and the closed point on smoothed light spot edge when stop period begins

+ distance_head_finish: distance between head and the closed point on smoothed light spot edge when stop period ends

+ turn_headomega_peaks: peak values of headomega within a stop period

+ prop_turn: number of head casts within a stop period

+ still_starts: the frame number when stop period begins

+ still_ends: the frame number when stop period ends

+ frame_headomega_zero: the frame number that headomega value drops to zero after a peak

+ distance_headomega_zero: the head-to-light_spot_edge distance at the frame that headomega drops to zero (Frame_headomega_zero)

+ distance_headomega_zero_first: the head-to-light_spot_edge distance for the first Frame_headomega_zero within a stop period 

Datas:
------
Raw datas are avalible on [this](https://drive.google.com/open?id=0B7J2ozomY_jiNzlGaTN1MUh6eFE).

Reference:
----------
[SOS-Tracker](https://sourceforge.net/projects/sos-track/)

Gomez-Marin, Alex, et al. "Automated tracking of animal posture and movement during exploration and sensory orientation behaviors." PloS one 7.8 (2012): e41642.
