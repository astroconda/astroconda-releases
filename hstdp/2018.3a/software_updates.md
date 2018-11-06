# HSTCAL Version 2.2.0

The following updates, specified in separate sections for each instrument,  have been included with this release. This release is presented as [HSTDP-2018.3a milestones](https://github.com/spacetelescope/hstcal/issues?utf8=%E2%9C%93&q=is%3Aclosed+milestone%3AHSTDP-2018.3a).

## HSTCAL package updates
- Regression testing has been implemented via pytest and Jenkins. (PR #349)

## WFC3

- CALWF3 bumped to Version 3.5.0 for this release.

 * Bug fixes to CTE correction in``wf3cte.e``
    * PR #366 - Fix out of bounds memory access: changes data

* Code tidy up to CTE correction in``wf3cte.e``
    * PR #367 - Remove unnecessary critical section. 

- [x] Affects old data
- [x] Users should re-retrieve affected datasets from the archive
- [ ] Updated reference files delivered by science team
