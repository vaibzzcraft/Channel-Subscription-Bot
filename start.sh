#!/bin/bash
# Find where pip installed the packages and add to PYTHONPATH
SITE=$(python3 -c "import site; print(site.getsitepackages()[0])")
export PYTHONPATH="$SITE:$PYTHONPATH"
echo "Using PYTHONPATH: $PYTHONPATH"
python3 bot.py
