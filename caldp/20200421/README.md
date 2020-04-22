During testing, the codename of this environment delivery was 'darktime'.

# Installing

Currently, conda is required to manage installation of the enviornment. A fresh
installation of Anaconda3 or Miniconda3 is not required for each HCALDP release,
however.  An existing conda installation may be used. The method described here
allows for multiple, entirely segregated, pipeline installations.

A `bash`-compatible shell is required for all steps below.

Python dependencies are now taken directly from PyPI or development repositories as
needed, so conda's ability to install hybrid conda/pip environments from a YAML
specification is used. This requires first downloading the specification file
and then creating the environment with it.

## For existing conda installations:

### Install the pipeline environment

```
$ curl -O https://ssb.stsci.edu/releases/caldp/20200421/latest-linux.yml
$ conda env create -n caldp_20200421 --file latest-linux.yml
```


### Activate the pipeline environment

```
$ source activate caldp_20200421
```

Each new delivery iteration of the calibration environment will need to be
installed using the above commands.

------

## If conda is not yet installed

If the conda tool is not available on the target system, it will need to be
installed before the calibration environment can be installed.

### Installing conda

For detailed instructions of this step, please visit: http://docs.continuum.io/anaconda/install#linux-install

**Miniconda:**

```
$ wget https://repo.anaconda.com/miniconda/Miniconda3-py37_4.8.2-Linux-x86_64.sh
$ bash Miniconda3-py37_4.8.2-Linux-x86_64.sh
$ export PATH=$HOME/miniconda3/bin:$PATH
```

**Anaconda (if preferred):**

```
$ wget https://repo.continuum.io/archive/Anaconda3-2019.10-Linux-x86_64.sh
$ bash Anaconda3-2019.10-Linux-x86_64.sh
$ export PATH=$HOME/anaconda3/bin:$PATH
```

