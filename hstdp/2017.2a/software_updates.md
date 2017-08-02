# HSTCAL Version 1.3.0

The following updates have been included with this release.

## ACS
- CALACS updates to version 9.2.0 with this release.
- New BLEVCORR algorithm that uses new OSCNTAB, which now correctly calculates bias level for AMP B and D in subarrays.
- New SINKCORR step to apply new SNKCFILE in order to flag sink pixels. See [ACS ISR 2017-01](http://www.stsci.edu/hst/acs/documents/isrs/isr1701.pdf).
- New pixel based PCTECORR algorithm implemented (``CTE_NAME= 'PixelCTE 2017'``).
  * The code defaults to this new algorithm, however, the old one can still be executed using the command line option  ``--ctegen <1|2>``. _Note: The correct accompanying PCTETAB file must also be used._
  * The user can now override the PCTETAB file used (normally specified in the image header) with the command line option ``--pctetab <file path>``.
  * The number of threads used for computing the PCTECORR can now be specified with the command line option ``--nthreads <N>``. _Note: OPENMP is required for N > 1._
- Fixed uninitialized variable in `prinfo.c`.
- Corrected `--version` reporting and added `-r` to report version string that was previously reported by `--version`.

- [x] Affects old data.
- [x] Users should re-retrieve affected datasets from the archive.
- [x] Updated reference files delivered by science team.

# Notes

 * Due to the quick succession of this release from [1.2.0](https://github.com/spacetelescope/hstcal/tree/1.2.0), please refer to the following [release notes](https://github.com/spacetelescope/hstcal/releases/tag/1.2.0) for other recent updates.


# Additional software included in this update

* nictools 1.1.3
* stistools 1.1
* stsci.distutils-0.3.8
* stsci.image-2.2.0
* stsci.imagemanip-1.1.2
* stsci.imagestats-1.4.1
* stsci.ndimage-0.10.1
* stsci.numdisplay-1.6.1
* stsci.skypac-0.9.4
* stsci.sphere-0.2
* stsci.sphinxext-1.2.2
* stsci.stimage-0.2.1
* stwcs 1.3.2
