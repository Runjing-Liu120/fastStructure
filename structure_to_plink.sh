#!/bin/bash

# convert from .stru to .ped
python structure_to_plink.py \
        --input_file=./hgdp_data/HuangEtAl_2011-GenetEpi/phased_HGDP+India+Africa_2810SNPs-regions1to36.stru \
        --output_file=./hgdp_data/huang2011_plink_files/phased_HGDP+India+Africa_2810SNPs-regions1to36


# convert from .ped to .bed
./plink --file ./hgdp_data/huang2011_plink_files/phased_HGDP+India+Africa_2810SNPs-regions1to36 \
	--make-bed \
	--out ./hgdp_data/huang2011_plink_files/phased_HGDP+India+Africa_2810SNPs-regions1to36 

