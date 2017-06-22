# This 2017.2a HSTDP release is based on Anaconda/Miniconda, Python 3.5

Perform the following steps in your terminal to install the release:
--------------------------------------------------------------------

For existing Anaconda3 or Miniconda3 installations:

  $ conda create -n hstdp-2017.2a --file http://ssb.stsci.edu/conda/hstdp-2017.2/hstdp-2017.2-linux-py35.3.txt

As bugfixes are announced your existing pipeline software may be updated by issuing the command:

  $ conda update -n hstdp-2017.2a --file http://ssb.stsci.edu/conda/hstdp-2017.2/hstdp-2017.2-linux-py35.%ITERATION.txt

Where %ITERATION is the next incremental version of the environment specification file served from that URL.
For example, this release's next bugfix update procedure would be:

  $ conda update -n hstdp-2017.2a --file http://ssb.stsci.edu/conda/hstdp-2017.2/hstdp-2017.2-linux-py35.4.txt


Updates will not be supplied via external installation add-ons as either tarballs or scripts.
Also, keep in mind that Conda, the package manager, may prompt you automatically to upgrade packages deemed out of date.
Some back-end preparation changes have been implemented with this build to align procedures with those used in the JWST build methodology.

A fresh installation of Anaconda3 or Miniconda3 is not required for each HSTDP release. The method described here allows for multiple, entirely segregated pipeline installations.

--------------

If you do need to install conda from scratch:

1. Install Anaconda3 or Miniconda3

For detailed instructions of this step, please visit: http://docs.continuum.io/anaconda/install#linux-install

For Anaconda:

  $ wget https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh
  $ bash Anaconda3-4.3.1-Linux-x86_64.sh
  $ export PATH=$HOME/anaconda3/bin:$PATH

 For Miniconda (if preferred):

  $ wget https://repo.continuum.io/miniconda/Miniconda3-4.3.11-Linux-x86_64.sh
  $ bash Miniconda3-4.3.11-Linux-x86_64.sh
  $ export PATH=$HOME/miniconda3/bin:$PATH

2. Install the pipeline

  $ conda create -n hstdp-2017.2a --file http://ssb.stsci.edu/conda/hstdp-2017.2/hstdp-2017.2-linux-py35.3.txt

3. Enter a BASH shell

  $ bash

4. Activate the pipeline environment

$ source activate hstdp-2017.2a
