#!/bin/bash

for url in $(cat listofoutcomes_to_replace_comma_with_space.txt); do
     wd=$(pwd)
     prot=$(sed 's:.*/::' <<< "$url")
     gsutil cp $url $wd
     sed -i -e 's/,/ /g' $wd/${prot}
     gsutil cp $wd/${prot} gs://genetics-portal-analysis/mohd/covid2-sep2020-gsmr-formatted/
     unlink $wd/${prot}
     unlink $wd/${prot}-e
done