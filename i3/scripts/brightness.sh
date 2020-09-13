#!/bin/bash
i=$(xbacklight);
val=${i%.*};
echo "  $val% "

