This 2016.2 release is based on Anaconda/Miniconda, Python 3.5


HSTCAL 1.1.0 Release Notes
==========================
The following changes were made to the HST calibration software sent to HST Data Processing for build 2016.2:

General
-------
- waf upgraded to 1.9.4, which enables building HSTCAL in Python 3, as well as Python 2.

Packages
--------
- WFC3 (increases to version 3.4)
    - CTE subarrays are now enabled for subarrays which include physical overscan pixels.
    - Sink Pixel flagging for all subarray images has been enabled.


Install the pipeline
====================
```
    $ conda create -n hstdp-2016.2 --file http://ssb.stsci.edu/conda/hstdp-2016.2/hstdp-2016.2-linux-py35.0.txt
```
Enter a BASH shell
```
    $ bash
```
Activate the pipeline environment
```
    $ source activate hstdp-2016.2
```

INSTALLING to an existing Anaconda/Miniconda
--------------------------------------------
```
$ conda create -n hstdp-2016.2 --file http://ssb.stsci.edu/conda/hstdp-2016.2/hstdp-2016.2-linux-py35.0.txt
```

UPGRADING an existing pipeline environment
------------------------------------------
Use this method to apply an iterative spec file release to an existing pipeline environment.
```
$ conda update -n <original_env> --file http://ssb.stsci.edu/conda/hstdp-2016.2/hstdp-2016.2-linux-py35.XXX.txt
```

