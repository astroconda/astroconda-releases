**This repository is used for preparing and recording deliveries.**

The release notes for each build are tracked and stored with the astroconda spec build which recreates the environment that was delivered


## Installing a fresh pipeline environment

- Install Miniconda3
```
    $ wget https://repo.continuum.io/miniconda/Miniconda2-4.1.11-Linux-x86_64.sh
    $ bash Miniconda3-4.0.5-Linux-x86_64.sh
    $ export PATH=$HOME/miniconda3/bin:$PATH
```

## Note

A fresh installation of Miniconda3 is not required for each release. The method described here allows multiple, entirely segregated pipeline installations:

For existing Miniconda3 installations:
```
$ conda create -n %NAME_%YEAR_%BUILD --file http://ssb.stsci.edu/conda/%NAME-%YEAR.$BUILD/%NAME-%YEAR.%BUILD-%PLATFORM-%PYTHON_VERSION.%ITERATION.txt
```

As bug fixes are announced, your pipeline software may be updated by issuing the command:
```
    $ conda update --file http://ssb.stsci.edu/conda/%NAME-%YEAR.$BUILD/%NAME-%YEAR.%BUILD-%PLATFORM-%PYTHON_VERSION.%ITERATION.txt
```
