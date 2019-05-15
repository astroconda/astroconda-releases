
# Installing

A fresh installation of Anaconda3 or Miniconda3 is not required for each JWSTDP release. The method described here allows for multiple, entirely segregated, pipeline installations.

For existing Anaconda3 or Miniconda3 installations:

```
$ conda create -n jwstdp-0.13.2 --file http://ssb.stsci.edu/releases/jwstdp/0.13.2/latest-linux
```

As bugfixes are announced your current pipeline software may be updated by issuing the command:

```
$ conda update -n jwstdp-0.13.2 --file http://ssb.stsci.edu/releases/jwstdp/0.13.2/latest-linux
```

# Installing From Scratch

For detailed instructions of this step, please visit: http://docs.continuum.io/anaconda/install#linux-install

**For Anaconda:**

```
$ wget https://repo.continuum.io/archive/Anaconda3-2019.03-Linux-x86_64.sh
$ bash Anaconda3-2019.03-Linux-x86_64.sh
$ export PATH=$HOME/anaconda3/bin:$PATH
```

**For Miniconda (if preferred):**

```
$ wget https://repo.continuum.io/miniconda/Miniconda3-4.6.14-Linux-x86_64.sh
$ bash Miniconda3-4.6.14-Linux-x86_64.sh
$ export PATH=$HOME/miniconda3/bin:$PATH
```

## Install the pipeline

```
$ conda create -n jwstdp-0.13.2 --file http://ssb.stsci.edu/releases/jwstdp/0.13.2/latest-linux
```

## Enter a BASH shell

```
$ bash
```

## Activate the pipeline environment

```
$ source activate jwstdp-0.13.2
```
