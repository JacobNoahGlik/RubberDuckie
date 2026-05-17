#!/bin/bash
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    osascript -e 'tell application "Terminal" to do script "/catch jacob.glik \"in-person physical catch - rubber duckie\" && exit"'
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    /catch jacob.glik "in-person physical catch - rubber duckie" || true
fi
