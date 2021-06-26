#!/bin/bash
#amixer get Master | awk -F'[]%[]' '/%/ {if ($5 == "off") { print "Muted";exit } else { print $2"%";exit }}'
mpc | sed 's/:/ /g' | awk '/volume/ {if ($2 == "0%") { print "Muted";exit } else { print $2;exit }}'
