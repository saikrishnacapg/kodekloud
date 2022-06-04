#!/bin/bash

/usr/local/bin/startup.sh &
service apparmor start
tail -f /dev/null
