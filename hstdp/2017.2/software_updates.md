acstools 2.0.8
==============
* Minor fix for compatibility with Numpy 1.12 or later.

calcos 3.2.1
============

- Updated code to be compatible with latest version of astropy and numpy
    - Replaced astropy.io.fits new_table() calls with BinTableHDU.from_columns()
    - Checked that numpy indices are integers

- Added DGEOCORR step
    - Applies delta geometric correction
    - Uses new DGEOFILE reference file
    - Requires DGEOCORR header keyword

- Added XWLKCORR and YWLKCORR steps, removed WALKCORR step
    - Applies X and Y walk corrections separately, using a lookup table reference file instead
      of a polynomial calculation
    - Uses XWLKFILE and YWLKFILE reference files
    - Requires XWLKCORR and YWLKCORR header keywords
    - WALKCORR and WALKTAB keywords now obsolete

- Added capability to set N_SIGMA for wavelength calibration in wcptab reference file
    - wcptab reference file has new column N_SIGMA

- Fixed bug in DQ calculation when twozone extraction is used
    - Affected ends of the spectrum when multiple fp-pos positions used

crds 7.1.1
==========
* JWST B7.1 first quarter, HSTDP-2017.2, new HST + JWST types

drizzlepac 2.1.17
=================
* Supressing aggravating astropy.wcs INFO messages

fitsblender 0.3.2
=================
* bugfix release

HSTCAL 1.2.0
============
The following updates, specified in separate sections for each instrument,  have been included with this release.

## HSTCAL package updates
- `waf` installer upgraded to 1.9.9 to support Python 3.6.
- Added `--O3` and `--release-with-symbols` options in build configuration.
- Enhanced platform check by installer.
- HSTCAL error codes were consolidated into a single global include file.

## ACS
- Fixed uninitialized variable in `prinfo.c`.
- Corrected `--version` reporting and added `-r` to report version string that was previously reported by `--version`.

## STIS
- calstis version 3.4.1
- fixed a bug that garbled some FITS HISTORY keywords
- fixed a bug in the bar finding algorithm
- fixed a bug in processing highres echelle data in which the error and dq arrays were incorrectly calculated

  No keyword changes.

  The only science changes will be to longslit spectroscopic data and high resolution echelle data.

- [x] Affects old data
- [x] Users should re-retrieve affected datasets from the archive
- [x] updated reference files delivered by science team


## WFC3
- calwf3 updates to version 3.4.1 with this release

### Photometry Keyword Updates
- There are default description strings in calwf3 which are used when the keyword is being added to a header where it doesn't already exist. This update makes the text consistent among all UVIS headers, including the global header keywords that ``calwf3`` adds for user convenience that are not populated in the raw headers during conversion. See issue #67 for more details. The table below details the changes to the photometry header keywords:

|Detector | Extension |Keyword | Previous  | Updated |
|----------|--------------|-----------|------------|------------|
|UVIS |0,1,4| PHOTCORR | populate photometric header keywords | NO CHANGE |
|UVIS |0,1,4| FLUXCORR | convert to absolute flux units | Scale UVIS2 to match UVIS1 using PHTRATIO|
|UVIS |0 |PHOTFLAM| inverse sensitivity | Inverse sensitivity, ergs/cm2/A/e-|
|UVIS|1,4| PHOTFLAM |  Inverse sensitivity, ergs/cm2/A/e-| NO CHANGE |
|UVIS|0 | PHOTZPT | zero point | ST magnitude zero point|
|UVIS|1, 4| PHOTZPT | zero point |  ST magnitude zero point|
|UVIS| 0 |PHTFLAM1| photometry scaling for chip 1| Ch1 Inv Sens, use PHOTFLAM for UV filters|
|UVIS|1,4| PHTFLAM1|PHOTFLAM on chip1 when scales are not uniform | Ch1 Inv Sens, use PHOTFLAM for UV filters|
|UVIS|0 | PHTFLAM2| photometry scaling for chip 2| Ch2 Inv Sens, use PHOTFLAM if FLUXCORR=COMPLETE|
|UVIS|1,4 |PHTFLAM2|  PHOTFLAM on chip2 when scales are not uniform |Ch2 Inv Sens, use PHOTFLAM if FLUXCORR=COMPLETE |
|UVIS|0 |PHTRATIO| photometry scaling for chip2 to chip 1| PHTFLAM2/PHTFLAM1 ratio|
|UVIS|1,4|PHTRATIO|Ratio of PHTFLAM1/PHTFLAM2 | PHTFLAM2/PHTFLAM1 ratio |
|UVIS|1,4 |PHOTMODE| observation con | Observing configuration |
|UVIS|1,4 | PHOTFNU| inverse sensitivity, Jy\*Sec/electron |   Inverse sensitivity, Jy\*sec/e-  |
|UVIS|1,4 | PHOTPLAM | pivot wavelength | NO CHANGE |
|UVIS|1,4| PHOTBW | RMS bandwidth | NO CHANGE|

- [x] Affects old data, all UVIS data will be affected since the keywords are commonly populated
- [x] Users should re-retrieve affected datasets from the archive for updated header keywords
- [x] Affects full-frame and subarray UVIS datasets for all filters

- Code cleanup specific to issue #55 and issue #63; these do not change any data results

### Updated reference files which will be part of the reprocessing
This software update itself does not affect data values, just header keyword descriptions.  However, the team will be delivering updated reference files at the same time which will be used during reprocessing with calwf3 version 3.4.1.  The following reference files will be delivered and used by the archive for reprocessing after this software change has been installed.

|Keyword | Description | Applied Date Range for the new file (USEAFTER)| selection keywords | Content update or format change? |
|-----------|--------------|------------------------------------------|-----------------------|----------------|
| IMPHTTAB | photometry table used by calwf3 | All UVIS data | DETECTOR = UVIS,  PHOTCORR = PERFORM|  Update |
| BIASFILE | bias reference file |  All UVIS data | DETECTOR = UVIS,  BIASCORR = PERFORM| Update |
|FLSHFILE | post-flash reference file | July  2012 - present | DETECTOR = UVIS  | Update |

Reprocessing will begin after the delivery of the reference files and those will affect header keyword values and data for the following:

* IMPHTTAB: only affects UVIS data which has PHOTCORR = PERFORM, this excludes calibration files like darks and biases
* BIASFILE: only affects UVIS data which is corrected for bias, including subarrays, except for charge injected data,  data which has been read out using a single amplifier, or data from modes which are no longer supported. The science team also plans to begin delivering one bias per year.
* FLSHFILE:  applies to all data taken with post-flash

pysynphot 0.9.8.7
=================
 * Fixed tagging issue for "git describe" and failed tests.
 * No change to user-facing interface otherwise.

reftools 1.7.4
==============
* bugfix release

stsci.tools 3.4.11
==================
* Multiple compatibility improvements

stsci.convolve 2.2.1
====================
* bugfix release


Additional software included in this update
===========================================
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
