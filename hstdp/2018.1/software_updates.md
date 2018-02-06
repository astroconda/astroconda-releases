# HSTCAL Version 2.0.0rc3

The following updates, specified in separate sections for each instrument,  have been included with this release. This release is presented as [HSTDP-2018.1 milestones](https://github.com/spacetelescope/hstcal/milestone/6).



## HSTCAL package updates
- The separate trailer file support routines used by ACS, WFC3, and STIS were consolidated into a single file, and are now part of libhstcallib.a.

## HSTIO
[HSTDP-2018.1 Milestones](https://github.com/spacetelescope/hstcal/issues?utf8=%E2%9C%93&q=label%3Ahstio+milestone%3AHSTDP-2018.1+)
- Improvements in robustness and maintainability have been made to the infrastructure software (HSTIO) and libraries which are the foundation for the pipelines.  


## ACS
[HSTDP-2018.1 Milestones](https://github.com/spacetelescope/hstcal/issues?utf8=%E2%9C%93&q=label%3AACS+milestone%3AHSTDP-2018.1+), [Data Changes](https://github.com/spacetelescope/hstcal/pulls?utf8=%E2%9C%93&q=is%3Apr+is%3Aclosed+label%3Aacs+label%3Achanges-data+milestone%3AHSTDP-2018.1+)

- CALACS updates to Version 10.0.0 due to the modifications imposed by the upgraded ACSREJ algorithm.
- An updated ACSREJ algorithm was implemented where all calculations are now done in electrons versus DN.  The threshold computation uses the ERR arrays to account for post-flash noise [PR#2](https://github.com/spacetelescope/hstcal/pull/2).
- CALACS now uses the amp-dependent read noise as the threshold to determine if a pixel has enough signal-to-noise ratio such that a reasonable correction can be applied [PR#258](https://github.com/spacetelescope/hstcal/pull/258).
- A bug fix has been implemented which is only applicable for RAWs with PCTECORR=PERFORM for ASNs used for cosmic ray rejection. In this case the CR rejected output (CRJ) previously used the wrong dark; it used the CTE-corrected dark. This has been addressed, and the CRJ product is now correct utilizing the non-CTE corrected dark [PR#273](https://github.com/spacetelescope/hstcal/pull/273).
- All BIAS files are now processed by CALACS to use only read noise (vs Poisson) for the computation of the ERR array as the date discriminant (pre- and post-SM4) has been removed [PR#288](https://github.com/spacetelescope/hstcal/pull/288).
- The C interface to the ACSREJ standalone component of CALACS was modified for clarity.  The "newbias" option was renamed "readnoise_only".  The functionality associated with this option remains the same.

- [x] Affects old data
- [x] Users should re-retrieve affected datasets from the archive
- [x] Updated reference files delivered by science team

## STIS
[HSTDP-2018.1 Milestones](https://github.com/spacetelescope/hstcal/issues?utf8=%E2%9C%93&q=label%3ASTIS+milestone%3AHSTDP-2018.1+)

- calstis version 3.4.2
- Bugs were addressed: memory leak, added --help option, ensure printing of syntax usage when necessary

- [ ] Affects old data
- [ ] Users should re-retrieve affected datasets from the archive
- [ ] Updated reference files delivered by science team


## WFC3
[HSTDP-2018.1 Milestones](https://github.com/spacetelescope/hstcal/issues?utf8=%E2%9C%93&q=label%3AWFC3+milestone%3AHSTDP-2018.1+)

- CALWF3 updates to Version 3.4.2 for this release.
- A number of code robustness improvements (address memory leaks, fix detected bugs) were implemented.

- [ ] Affects old data
- [ ] Users should re-retrieve affected datasets from the archive
- [ ] Updated reference files delivered by science team

# Additional software included in this update
- drizzlepac 2.1.21
- stwcs 1.4.0
- calcos 3.3.4
- acstools 2.0.10

