#!/usr/bin/env bash
# Designed to be run from within the `jwstdp` directory of the
# astroconda-releases repository (as of 2018-05-30).
#
# Accepts the tag name assigned to a JWSTDP delivery to DMS.
# 1) Creates a subdirectory with the provided tag name
# 2) Copies the generated spec files from the spec_dir to the new release's
#   'dev' subdirectory.
#    (Note: be sure to purge any old spec files that exist in that location
#     prior to running the build and this script.)
# 3) Create symlinks to the latest version
# 3) Generate a README.md 
#
# Example usage:
# jwst_delivery_prep 0.9.4

# Location of generated delivery environment specification files.
spec_dir="/eng/ssb/websites/ssbpublic/astroconda-releases-staging/"

# Conda installer versions to suggest in README.md file.
anaconda_ver="5.1.0"
miniconda_ver="4.4.10"

tagname=$1

# Create new astroconda-releases directory and copy generated spec files
# from the specified directory into it.
mkdir $tagname
pushd $tagname
mkdir dev
cp ${spec_dir}/jwstdp* dev

# Create latest linux link
latest=$(ls -1r dev/*linux*py35* | head -1)
ln -s ${latest} latest-linux

# Create latest osx link
latest=$(ls -1r dev/*osx*py35* | head -1)
ln -s ${latest} latest-osx


# Create README.md to reflect latest versions of release AND conda installer.
#---------------------------------------------
rm_message="
# Installing

A fresh installation of Anaconda3 or Miniconda3 is not required for each JWSTDP release. The method described here allows for multiple, entirely segregated, pipeline installations.

For existing Anaconda3 or Miniconda3 installations:

\`\`\`
$ conda create -n jwstdp-${tagname} --file http://ssb.stsci.edu/releases/jwstdp/${tagname}/latest-linux
\`\`\`

As bugfixes are announced your current pipeline software may be updated by issuing the command:

\`\`\`
$ conda update -n jwstdp-${tagname} --file http://ssb.stsci.edu/releases/jwstdp/${tagname}/latest-linux
\`\`\`

# Installing From Scratch

For detailed instructions of this step, please visit: http://docs.continuum.io/anaconda/install#linux-install

**For Anaconda:**

\`\`\`
$ wget https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh
$ bash Anaconda3-${anaconda_ver}-Linux-x86_64.sh
$ export PATH=\$HOME/anaconda3/bin:\$PATH
\`\`\`

**For Miniconda (if preferred):**

\`\`\`
$ wget https://repo.continuum.io/miniconda/Miniconda3-4.4.10-Linux-x86_64.sh
$ bash Miniconda3-${miniconda_ver}-Linux-x86_64.sh
$ export PATH=\$HOME/miniconda3/bin:\$PATH
\`\`\`

## Install the pipeline

\`\`\`
$ conda create -n jwstdp-${tagname} --file http://ssb.stsci.edu/releases/jwstdp/${tagname}/latest-linux
\`\`\`

## Enter a BASH shell

\`\`\`
$ bash
\`\`\`

## Activate the pipeline environment

\`\`\`
$ source activate jwstdp-${tagname}
\`\`\`\n"

printf "${rm_message}" > README.md


# Compose message to dms-design mailing list.
#---------------------------------------------
printf "\n   Send the following message body to:  dms-design@stsci.edu\n"
printf "   with subject 'JWSTDP-${tagname} now available'"

mail_message="\n\n
Release Data:

https://github.com/astroconda/astroconda-releases/tree/master/jwstdp/${tagname}


Direct URL(s):\n

Linux: http://ssb.stsci.edu/releases/jwstdp/${tagname}/latest-linux

OS X: http://ssb.stsci.edu/releases/jwstdp/${tagname}/latest-osx


To create a new environment:

conda create -n <ENV_NAME> --file <URL>


To upgrade an existing environment:

conda update -n <ENV_NAME> --file <URL>\n\n"

printf "${mail_message}"
