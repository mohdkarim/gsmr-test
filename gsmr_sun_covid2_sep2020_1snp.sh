#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

$DIR/gcta_1.93.2beta/gcta64 \
--mbfile $DIR/ukb_v3_downsampled10k_plink.txt \
--gsmr-file $DIR/prot.txt $DIR/covid_gsmr.txt \
--gsmr-direction 0 --clump-r2 0.05 --gwas-thresh 1e-5 --gsmr-snp-min 1 --effect-plot --out sun_outcomes_covid2_sep2020_gsmr_results_1snp