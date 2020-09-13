#!/bin/bash
val=$(df -h --output=pcent / | grep -E -o '[0-9][0-9]')
echo "  $val% "
