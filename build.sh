#!/bin/bash

cd `dirname "$0"`
python  setup.py bdist_egg
sudo cp dist/* /var/lib/deluged/config/plugins
sudo service deluged restart
