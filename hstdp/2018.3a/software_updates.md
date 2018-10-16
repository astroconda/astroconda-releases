# HSTCAL Version 2.2.0rc2

The following updates, specified in separate sections for each instrument,  have been included with this release. This release is presented as [HSTDP-2018.3 milestones](https://github.com/spacetelescope/hstcal/issues?utf8=%E2%9C%93&q=is%3Aclosed+milestone%3AHSTDP-2018.3)


## HSTCAL package updates
- Regression testing has been implemented via pytest and Jenkins.
- The CFITSIO library is no longer built as a static library incorporated into the HSTCAL executables.

## HSTIO
[HSTDP-2018.3 Milestones](https://github.com/spacetelescope/hstcal/issues?utf8=%E2%9C%93&q=is%3Aclosed+label%3Ahstio+milestone%3AHSTDP-2018.3)

- HSTIO updates to Version 2.7.
- Functionality has been added to determine the number of HST IMSETS in a FITS file in a robust fashion [PR#330](https://github.com/spacetelescope/hstcal/pull/330).

## ACS
[HSTDP-2018.3 Milestones](https://github.com/spacetelescope/hstcal/issues?q=label%3AACS+milestone%3AHSTDP-2018.3+is%3Aclosed), [Data Changes](https://github.com/spacetelescope/hstcal/issues?utf8=%E2%9C%93&q=label%3AACS+milestone%3AHSTDP-2018.3+is%3Aclosed+label%3Achanges-data)

- CALACS updates to Version 10.1.0 due to updates in the ACSCCD and ACS2D algorithms.
- The dark correction, DARKCORR step of the ACS2D algorithm, has been modified to work directly on the full 2D data rather than on a line-by-line basis [PR#315](https://github.com/spacetelescope/hstcal/pull/315).
- The bias shift correction, BLEVCORR step of the ACSCCD algorithm, has been upgraded to accommodate the new supported subarrays which have both physical and virtual overscan [PR#312](https://github.com/spacetelescope/hstcal/pull/312).  This is the same algorithm which applies to full frame data.
- Forward model functionality was implemented which exploits the existing CTE code and usage (Generation 2 only).  Instead of correcting the CTE trails, the forward model functionality simulates (adds) the trails [PR#313](https://github.com/spacetelescope/hstcal/pull/313).  This functionality should be accessed via the new ACSTOOLS function, acscteforwardmodel.py
- Updated ACS library routine, getacskeys, updated to call the new HSTIO function which robustly determines the number of IMSETS in a FITS file [PR#330](https://github.com/spacetelescope/hstcal/pull/330).

- [x] Affects old data
- [x] Users should re-retrieve affected datasets from the archive
- [x] Updated reference files delivered by science team

## STIS

- CALSTIS remains at Version 3.4.2 for this release.

- [ ] Affects old data
- [ ] Users should re-retrieve affected datasets from the archive
- [ ] Updated reference files delivered by science team

## WFC3

- CALWF3 bumped to Version 3.5.0 for this release.

 * Bug fixes to CTE correction in``wf3cte.e``
    * #366 - Fix out of bounds memory access: changes data.
    * #93 - Remove unessacary re-computation of cte correction due to over-subtracted tails: no change to data.

* Code tidy up to CTE correction in``wf3cte.e``
    * #367 - Remove unnecessary critical section. 

- [x] Affects old data
- [x] Users should re-retrieve affected datasets from the archive
- [ ] Updated reference files delivered by science team
