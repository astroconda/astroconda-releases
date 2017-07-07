**This repository is used for preparing and recording deliveries.**

The release notes for each build are tracked and stored with the AstroConda environment spec file used to recreate environments delivered to various pipeline teams.


## Installing a fresh pipeline environment

- Install Miniconda3
```
    $ wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
    $ bash Miniconda3-latest-Linux-x86_64.sh
    $ export PATH=$HOME/miniconda3/bin:$PATH
```

- Installing via our servers:
```
$ conda create -n %NAME_%BUILD --file http://ssb.stsci.edu/releases/%NAME/%BUILD/%NAME%-BUILD-%PLATFORM-%PYTHON_VERSION.%ITERATION.txt
```

- Installing via local filesystem:
```
$ git clone https://github.com/astroconda/astroconda-releases
$ conda create -n %NAME_%BUILD --file astroconda-releases/%NAME/%BUILD/%NAME-%BUILD-%PLATFORM-%PYTHON_VERSION.%ITERATION.txt
```

## Note

A fresh installation of Miniconda3 is not required for each release. The method described above allows for multiple, entirely segregated pipeline installations.
