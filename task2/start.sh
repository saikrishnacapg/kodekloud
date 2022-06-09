#!/bin/bash

service apparmor start
apparmor_parser -r -W /etc/apparmor.d/bin.ping
apparmor_parser -r -W /etc/apparmor.d/aa-disable-write
docker run -it -d --security-opt apparmor:aa-disable-write alpine sh
docker run -it -d --security-opt apparmor:ping debian:jessie bash
