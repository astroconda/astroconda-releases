# Installing

A fresh installation of Anaconda3 or Miniconda3 is not required for each DE release. The method described here allows for multiple, entirely segregated, pipeline installations.

For existing Anaconda3 or Miniconda3 installations:

```
$ conda env create -n de-f --file http://ssb.stsci.edu/releases/de/f/latest-linux.yml
```

# Installing From Scratch

For detailed instructions of this step, please visit: http://docs.continuum.io/anaconda/install#linux-install

**For Miniconda:**

```
$ curl https://repo.anaconda.com/miniconda/Miniconda3-py39_4.11.0-MacOSX-x86_64.sh --output miniconda.sh
$ bash miniconda.sh -b -p $HOME/miniconda
$ bash
$ export PATH="$HOME/miniconda/bin:$PATH"
```

**For Anaconda (if preferred):**

```
# wget https://repo.anaconda.com/archive/Anaconda3-2021.11-MacOSX-x86_64.sh
$ bash Anaconda3-2019.10-Linux-x86_64.sh
$ export PATH=$HOME/anaconda3/bin:$PATH
```

## Install the environment

```
$ conda env create -n de-f --file http://ssb.stsci.edu/releases/de/e/latest-macosx.yml
```

## Enter a BASH shell

```
$ bash
```

## Activate the environment

```
$ source activate de-f
```
