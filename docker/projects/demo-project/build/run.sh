#!/bin/bash
cp -a /home/resource/hiring_solutions/latest/web-advertisementorder-callcenter/* web-advertisementorder-callcenter/src/main/resources/
cp -a /home/resource/hiring_solutions/latest/web-entry-callcenter/* web-entry-callcenter/src/main/resources/
cd build/package
ant -f build_test.xml
