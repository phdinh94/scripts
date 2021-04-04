#!/bin/bash 
 echo "Enter the ns-3 version you want to install (i.e, ns-3.29)"
 read version
 git clone https://gitlab.com/nsnam/bake
 export BAKE_HOME=`pwd`/bake
 export PATH=$PATH:$BAKE_HOME
 export PYTHONPATH=$PYTHONPATH:$BAKE_HOME
 cd ~/bake
 bake.py check
 bake.py configure -e $version
 bake.py show
 bake.py deploy 
 mv -r BAKE_HOME/source/ ~
 

