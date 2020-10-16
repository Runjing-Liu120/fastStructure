#!/bin/bash

downloads_folder='./hgdp_data/HuangEtAl_2011-GenetEpi/'
processed_folder='./hgdp_data/huang2011_plink_files/'
filename='phased_HGDP+India+Africa_2810SNPs-regions1to36'

# convert from .stru to .ped
echo 'structure to ped'
python structure_to_plink.py \
        --input_file=${downloads_folder}${filename}.stru \
        --output_file=${processed_folder}${filename}


# convert from .ped to .bed
echo 'ped to bed'
./plink --file ${processed_folder}${filename} \
	--make-bed \
	--out ${processed_folder}${filename}

# convert .bed files to numpy
echo 'bed to np array'
python plink_to_numpy.py \
	--input ${processed_folder}${filename} \
	--output ${processed_folder}${filename}

echo 'done.'
echo 'check '${processed_folder}' for output'
