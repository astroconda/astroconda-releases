# 2017.3

For existing Anaconda3 or Miniconda3 installations:

```
$ conda create -n hstdp-2017.3 --file http://ssb.stsci.edu/releases/hstdp/2017.3/dev/hstdp-2017.3-linux-py35.0.txt
```

As bugfixes are announced your existing pipeline software may be updated by issuing the command:

```
$ conda update -n hstdp-2017.3 --file http://ssb.stsci.edu/releases/hstdp/2017.3/dev/hstdp-2017.3-linux-py35.%ITERATION.txt
```

Where `%ITERATION` is the next incremental version of the environment specification file served from that URL.
For example, this release's next bugfix update procedure would be:

```
$ conda update -n hstdp-2017.3 --file http://ssb.stsci.edu/releases/hstdp/2017.3/dev/hstdp-2017.3-linux-py35.1.txt
```

A fresh installation of Anaconda3 or Miniconda3 is not required for each HSTDP release. The method described here allows for multiple, entirely segregated pipeline installations.

---

If you do need to install conda from scratch:

## Install Anaconda3 or Miniconda3

For detailed instructions of this step, please visit: http://docs.continuum.io/anaconda/install#linux-install

**For Anaconda:**

```
$ wget https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh
$ bash Anaconda3-4.3.1-Linux-x86_64.sh
$ export PATH=$HOME/anaconda3/bin:$PATH
```

**For Miniconda (if preferred):**

```
$ wget https://repo.continuum.io/miniconda/Miniconda3-4.3.11-Linux-x86_64.sh
$ bash Miniconda3-4.3.11-Linux-x86_64.sh
$ export PATH=$HOME/miniconda3/bin:$PATH
```

## Install the pipeline

```
$ conda create -n hstdp-2017.3 --file http://ssb.stsci.edu/releases/hstdp/2017.3/dev/hstdp-2017.3-linux-py35.0.txt
```

## Enter a BASH shell

```
$ bash
```

## Activate the pipeline environment

```
$ source activate hstdp-2017.3
```
