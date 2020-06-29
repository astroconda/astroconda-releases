#!/usr/bin/env bash

# A tool for generating a JWST CAL software tarball and the associated
# project code linecount summary and depositing it into the provided
# archival area.

if [[ $# -eq 0 ]];
then
    printf "\nUsage:\n"
    printf "$(basename $0) <jwst-tag> <destination-base-path>\n\n"
    exit 0
fi

if [[ $1 == '' ]];
then
    echo "JWST repository tag is required"
    exit 1
fi
tag=$1

if [[ $2 == '' ]];
then
    echo "Destination root directory is required"
    exit 1
fi
dest_root=$2    # dms_x.y(.z)

code_dest_path=${dest_root}/software_bundles
doc_dest_path=${dest_root}/code_counts
if [[ ! -d $code_dest_path ]];
then
    echo "${code_dest_path} does not exist!"
    exit 1
fi
if [[ ! -d $doc_dest_path ]];
then
    echo "${doc_dest_path} does not exist!"
    exit 1
fi

which sloccount
if [[ $? -ne 0 ]];
then
    echo "'sloccount' not found. Install before attempting again."
    exit 1
fi
which csplit 
if [[ $? -ne 0 ]];
then
    echo "'csplit' not found. Install before attempting again."
    exit 1
fi

set -e

local_checkout_dir=jwst-cal-archive
git clone https://github.com/stsci-jwst/jwst.git $local_checkout_dir
pushd $local_checkout_dir
git checkout $tag

# Create the line count summary. Strip off any superfluous leading text to
# leave only the report data itself.
countname="jwst-${tag}-sloccount.txt"
sloccount . > temp.txt 2>&1
csplit --digits=0 --prefix $countname temp.txt %SLOC%
mv ${countname}0 ${countname}

python setup.py sdist

cp -a dist/jwst-${tag}.tar.gz ${code_dest_path}
cp -a $countname ${doc_dest_path}
