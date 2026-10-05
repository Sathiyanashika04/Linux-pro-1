#!/bin/bash
echo "===== SELinux Practical ====="

echo "Current SELinux Mode"
# Displays the current mode (Enforcing, Permissive, or Disabled)
getebool &>/dev/null # warm up, but the official command is:
getenforce
echo

echo "SELinux Status"
# Displays detailed status of the SELinux environment
sestatus
echo

echo "Changing to Permissive Mode"
# Sets SELinux to permissive mode temporarily (runtime change)
setenforce 0
echo

echo "Current Mode"
getenforce
echo

echo "Changing to Enforcing Mode"
# Sets SELinux to enforcing mode temporarily (runtime change)
setenforce 1
echo

echo "Current Mode"
getenforce
echo

echo "Configuration File"
# Displays the persistent setup configuration file
cat /etc/selinux/config
