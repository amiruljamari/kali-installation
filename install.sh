#!/bin/bash
cd ~
apt-get update
apt-get install python-dev python-setuptools libpcap0.8-dev libnetfilter-queue-dev libssl-dev libjpeg-dev libxml2-dev libxslt1-dev libcapstone3 libcapstone-dev libffi-dev file
git clone https://github.com/byt3bl33d3r/mitmf.git
cd mitmf && git submodule init && git submodule update --recursive
./setup.sh
pip2 install --upgrade -r requirements.txt
apt-get install terminator
