# HSTCAL Version 2.3.2

The following updates, specified in separate sections for each instrument,  have been included with this release. This release is presented as [HSTDP-2020.6.2 milestones].

## HSTCAL package updates

## ACS
 
- CALACS updated to Version 10.2.2

- In the DARKCORR step of CALACS, the value of the DARKTIME keyword is used to account for time that dark current accumulates. It has been determined that depending upon the type of WFC observation (i.e., full frame or subarray, post-flash or no post-flash) there is an additional correction needed. The additional correction values need to be read from updated CCDTAB reference files, and correspondingly, the DARKCORR algorithm has been updated to accommodate new logic for applying the correction.
Issue #326/PR #467.


- [x] Affects old data
- [x] Users should re-retrieve affected datasets from the archive
- [x] Updated reference files delivered by science team
