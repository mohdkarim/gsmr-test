#!/bin/bash

for url in $(cat listofoutcomecovid_tocompose.txt); do
     wd=$(pwd)
     prot=$(sed 's/\*//g' <<< "$url")
     gsutil compose gs://genetics-portal-analysis/mohd/covid2-sep2020-gsmr-formatted/${url} gs://genetics-portal-analysis/mohd/covid2-sep2020-gsmr-formatted/${prot}
 done