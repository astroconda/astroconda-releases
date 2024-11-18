# Installing the tested pipeline stack

Conda (miniconda3 or anaconda3) must already be installed, if it is not,
'Advance Setup' below.
All steps must be performed in bash or a compatible shell.

A fresh installation of Anaconda3 or Miniconda3 is not required for each JWSTDP
release. The method described here allows for multiple, entirely segregated,
pipeline installations.

# Advance setup
 
If conda has not yet been installed, use the following steps to obtain
it, then use the procedure above to install the pipeline software.

For detailed instructions of this step, please visit: http://docs.continuum.io/anaconda/install#linux-install

**For Miniconda:**

```
$ wget
https://repo.continuum.io/miniconda/Miniconda3-Latest-Linux-x86_64.sh
$ bash Miniconda3-Latest-Linux-x86_64.sh
$ export PATH=$HOME/miniconda3/bin:$PATH
```

**For Anaconda (if preferred):**

```
$ wget
https://repo.continuum.io/archive/Anaconda3-2019.10-Linux-x86_64.sh
$ bash Anaconda3-2019.10-Linux-x86_64.sh
$ export PATH=$HOME/anaconda3/bin:$PATH
```
