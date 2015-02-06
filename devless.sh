#!/bin/bash
while true; do
    inotifywait -e modify css/*.less;
    lessc css/main.less > css/main.css
    echo "Compiled..."
    sleep 1
done
