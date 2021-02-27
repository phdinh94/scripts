#!/bin/bash 

 git clone https://gitlab.com/nsnam/bake
 export BAKE_HOME=`pwd`/bake
 export PATH=$PATH:$BAKE_HOME
 export PYTHONPATH=$PYTHONPATH:$BAKE_HOME
 cd ~/bake
 bake.py check
 bake.py configure -e ns-3.29
 bake.py download
 bake.py build


