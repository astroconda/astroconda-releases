**This repository is used for preparing and recording deliveries.**

The release notes for each build are tracked and stored with the AstroConda environment spec file used to recreate environments delivered to various pipeline teams.


## Installing a fresh pipeline environment

- Install Miniconda3
```
    $ wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
    $ bash Miniconda3-latest-Linux-x86_64.sh
    $ export PATH=$HOME/miniconda3/bin:$PATH
```

## Note

A fresh installation of Miniconda3 is not required for each release. The method described here allows multiple, entirely segregated pipeline installations:

Installing from our servers:
```
$ conda create -n %NAME_%YEAR_%BUILD --file http://ssb.stsci.edu/astroconda-releases/%NAME/%BUILD/%NAME-%YEAR.%BUILD-%PLATFORM-%PYTHON_VERSION.%ITERATION.txt
```

Installing from this directory:
```
$ conda create -n %NAME_%YEAR_%BUILD --file %NAME/%BUILD/%NAME-%YEAR.%BUILD-%PLATFORM-%PYTHON_VERSION.%ITERATION.txt
```
