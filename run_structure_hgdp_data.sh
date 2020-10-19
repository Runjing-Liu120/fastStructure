#!/bin/bash

python structure.py -K 15 \
      --input=./hgdp_data/huang2011_plink_files/phased_HGDP+India+Africa_2810SNPs-regions1to36 \
      --output=./fits/huang2011/phased_regions1to26 \
      --full \
      --seed 100 

