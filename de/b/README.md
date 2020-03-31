# Installing

A fresh installation of Anaconda3 or Miniconda3 is not required for each DE release. The method described here allows for multiple, entirely segregated, pipeline installations.

For existing Anaconda3 or Miniconda3 installations:

```
$ conda create -n de-b --file http://ssb.stsci.edu/releases/de/b/latest-linux
```

As bugfixes are announced your current pipeline software may be updated by issuing the command:

```
$ conda update -n de-b --file http://ssb.stsci.edu/releases/de/b/latest-linux
```

# Installing From Scratch

For detailed instructions of this step, please visit: http://docs.continuum.io/anaconda/install#linux-install

**For Anaconda:**

```
$ wget https://repo.continuum.io/archive/Anaconda3-2019.07-Linux-x86_64.sh
$ bash Anaconda3-2019.07-Linux-x86_64.sh
$ export PATH=$HOME/anaconda3/bin:$PATH
```

**For Miniconda (if preferred):**

```
$ wget https://repo.continuum.io/miniconda/Miniconda3-4.7.10-Linux-x86_64.sh
$ bash Miniconda3-4.7.10-Linux-x86_64.sh
$ export PATH=$HOME/miniconda3/bin:$PATH
```

## Install the environment

```
$ conda create -n de-b --file http://ssb.stsci.edu/releases/de/b/latest-linux
```

## Enter a BASH shell

```
$ bash
```

## Activate the environment

```
$ source activate de-b
```
