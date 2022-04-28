#!/bin/bash
intern=eDP-1
extern=DP-1
 
if xrandr | grep "$extern disconnected"; then
   wlr-randr --output $intern --preferred --mode 1920x1080 --pos 0,0 --transform normal --output $extern --off                                                                     
else
   wlr-randr --output $intern --preferred --mode 1920x1080 --pos 760,1440 --transform normal --output $extern --mode 3440x1440 --pos 0,0 --transform normal
fi

