This 2016.1 release is based on Anaconda/Miniconda, Python 3.5

## HSTCAL 1.0.1

This release is to accommodate CALACS processing for new ACS subarrays added by FSW change done in May 2016. Particularly, BLEVCORR is modified to trim virtual overscans off the new subarrays (old subarrays do not have virtual overscans). No changes are made for CALWF3 and CALSTIS.

## CRDS 7.0.1

Includes ACS BIASFILE substitution and certify changes. Critical changes to jwst cal-code repacking.

## CALCOS 3.1.3 (erroneously labeled 3.1.8 in this release)

Calcos 3.1 includes the following bug fixes and features:

### Allow flux extraction from 0 to 100%

The latest version of calcos (3.0) throws an IndexError when the range of the 2zxtab is 0 to 100%. Handle this case separately, always integrating over the whole height of the extraction box to duplicate the behavior of the boxcar
option.

### Ignore DQ flag DQ_GAIN_SAG_HOLE in background regions in profile alignment step

CALCOS uses DQ flags in the profile alignment step, omitting columns that have a pixel DQ value that contains any value in SDQFLAGS (read from science data header). The flagging of large areas with gain sag holes after the move to LP3 has made it very difficult to find background regions that won't cause whole columns be omitted from the alignment step, possibly resulting in not enough good columns to do the alignment correction.

To alleviate this, pixels in the background region should be able to test against a different DQ value (e.g. one without the DQ_GAIN_SAG_HOLE value) from pixels in the target region.

### Shift DQ data array the same as data array in TRCECORR and ALGNCORR steps of calcos

The data arrays are shifted in the Y direction in the TRCECORR and ALGNCORR steps of calcos, but the DQ arrays are not currently shifted. The DQ arrays should be shifted in the same way that the data arrays are in the ALGNCORR and TRCECORR steps.

### Fix up x1d output for boxcar option

There are a number of shortcomings in the x1d output of calcos if the XTRCTALG keyword is set to 'BOXCAR'.

  1. The BACKGROUND_PER_ROW column is calculated incorrectly (total background is divided by the wrong number of rows) and should be renamed to "BACKGROUND PER PIXEL"

    2. The NUM_EXTRACT_ROWS column is calculated incorrectly (off by 1).

      3. The Y_LOWER_OUTER, Y_LOWER_INNER, Y_UPPER_INNER and Y_UPPER_OUTER columns are calculated incorrectly - they are constants whereas they should follow the linear relation using the SLOPE and INTERCEPT from the reference file.

### Restore display format for x1d columns

In the 3.0 update to CALCOS, the display formats for the columns in the .x1d output table were removed. They should be restored.

### CalCOS should print warnings for certain conditions of HOTSPOT calibration

The new code to support hot spot flagging with the associated reference file will need to output warnings to the user in a couple select cases.

  1. If a DQ bit in SDQOUTER is not also in SDQFLAGS, a warning should be printed.

    2. If the PHAMIN/PHAMAX header keywords of the applied SPOTTAB are more inclusive that what is applied to the data itself, a warning should be printed.

### Change DQ array handling in x1d with hotspot treatment

With the CalCOS change to handle the hot spots and the SPOTTAB reference file, the DQ array in the output x1d files will change slightly.

   1. The data quality value for each pixel should be given by: (DQ_INNER) | (DQ_OUTER & SDQOUTER)

   An additional check should be done to verify that the DQ_WGT in the x1dsum is still calculated correctly after this modification.

### Events in COS data should now be flagged using the SPOTTAB

To handle the hot spots in COS data, a new reference file is being delivered (SPOTTAB) that will specify physical regions on the detector that should be flagged if they occur during any given dataset.  CalCOS needs to flag each region given in a SPOTTAB if the time of the event (given by START, STOP in each row) overlaps with any good-time-interval (GTI) in the observation.

Modules changed:

#### Setup.cfg:

Version changed.

##### lib/calcos/timetag.py

Added code to shift the DQ arrays by the amount of the trace correction and alignment correction before doppler blurring. Added code to pass the good time intervals to modules that need it to check for active hotspots. Added
code to make sure that events that get shifted into the active area after their doppler correction is applied don't cause the minimum and maximum X shifts to be drastically wrong.

##### lib/calcos/cosutil.py

Added code to check SPOTTAB keywords, and to add active hotspots to the DQ flags for events and the DQ arrays. Added code to shift the DQ values of events by the amount in the trace and alignment corrections.

##### lib/calcos/calcos.py

Added code to enable use of SPOTTAB reference file

##### lib/calcos/concurrent.py

Updated interface to cosutil.updateDQArray

##### lib/calcos/extract.py

Renamed BACKGROUND_PER_ROW table column to BACKGROUND_PER_PIXEL. Restored display formet to table columns. Treat DQ flags in the outer regions if affected by a hotspot by setting DQ_WGT to 0. DQ_ALL column is now the OR of the DQ flags of all pixels in the extraction region. Fixed an indexing bug in how the extraction regions were specified.

##### lib/calcos/getinfo.py

Added SPOTTAB capability.

##### lib/calcos/trace.py

Added code to make sure that gain sag holes don't affect the background DQ values.

##### lib/calcos/x1d.py

Added code to pass brftab reference file to timetag.getWavecalOffsets so that the Active Area can be determined at the time the offsets are calculated.


