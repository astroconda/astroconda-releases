# Installing

A fresh installation of Anaconda3 or Miniconda3 is not required for each DE release. The method described here allows for multiple, entirely segregated, pipeline installations.

For existing Anaconda3 or Miniconda3 installations:

```
$ conda env create -n de-d --file http://ssb.stsci.edu/releases/de/d/latest-linux.yml
```

As bugfixes are announced your current pipeline software may be updated by issuing the command:

```
$ conda env update -n de-d --file http://ssb.stsci.edu/releases/de/d/latest-linux.yml
```

# Installing From Scratch

For detailed instructions of this step, please visit: http://docs.continuum.io/anaconda/install#linux-install

**For Miniconda:**

```
$ wget https://repo.continuum.io/miniconda/Miniconda3-py37_4.8.3-Linux-x86_64.sh
$ bash Miniconda3-py37_4.8.3-Linux-x86_64.sh
$ export PATH=$HOME/miniconda3/bin:$PATH
```

**For Anaconda (if preferred):**

```
$ wget https://repo.continuum.io/archive/Anaconda3-2019.10-Linux-x86_64.sh
$ bash Anaconda3-2019.10-Linux-x86_64.sh
$ export PATH=$HOME/anaconda3/bin:$PATH
```

## Install the environment

```
$ conda env create -n de-d --file http://ssb.stsci.edu/releases/de/d/latest-linux.yml
```

## Enter a BASH shell

```
$ bash
```

## Activate the environment

```
$ source activate de-d
```
