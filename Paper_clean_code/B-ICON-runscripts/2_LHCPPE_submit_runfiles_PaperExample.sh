#!/bin/usr/env bash

# This file submits the ICON runs
# This file should be located in the \run folder of the ICON repository

simu_grid_year=atm_amip_R2B5_1979-1980 #change if needed
templatefilename=template_${simu_grid_year}_test.run #change if needed
echo 'check on which project you are using the resources'
echo 'the simu, grid and years are :' ${simu_grid_year}
echo 'the template used for creating the run files is :' ${templatefilename}

#set the values of the parameters for the 2nd tuning step here, for the whole ppe:
filename=PaperExample/PARAMETER_SAMPLES/sample_PAPEREXAMPLE_Emid_Epen_Edd_Taumf_Pr_R0top #change for each PPE
nrun=0
increm=1
file1=${filename}-Epen.txt
endjobname=PaperExample #name of the PPE added to the name of the run files

# below: loop on all of the runs of the PPE to submit each of the runs 
while read -r line; do
    JOBNAME=${simu_grid_year}_nrun_${nrun}-${endjobname}
    echo ${JOBNAME}
    sbatch PaperExample/exp.${JOBNAME}.run
    nrun=$(expr $nrun + $increm)
done < $file1
