#!/bin/usr/env bash
# this script creates the ensemble of ICON run files
# each run file from that ensemble has a different set of value of the parameters (created in the previous step) 

simu_grid_year=atm_amip_R2B5_1979-1980 #change if needed
templatefilename=template_${simu_grid_year}_test.run #change if needed
echo 'check on which project you are using the resources'
echo 'the simu, grid and years are :' ${simu_grid_year}
echo 'the template used for creating the run files is :' ${templatefilename}

#set the values of the parameters for the 2nd tuning step here, for the whole ppe:
filename=PARAMETER_SAMPLES/sample_PAPEREXAMPLE_Emid_Epen_Edd_Taumf_Pr_R0top #change for each PPE
nrun=0 #number of the first run of the PPE
increm=1 #for the bash loop below
file1=${filename}-Epen.txt #change with the name of one of the parameter used
endjobname=PaperExample #name of the PPE added to the name of the run files

#this loop will create a run file for each of the runs of the PPE and it will replace the values of one parameter
while read -r line; do
    JOBNAME=${simu_grid_year}_nrun_${nrun}-${endjobname}
    echo ${JOBNAME}
    echo -e "$line\n"
    cp ${templatefilename} exp.${JOBNAME}.run
    sed -i 's/JOBNAME/'${JOBNAME}'/' exp.${JOBNAME}.run
    sed -i 's/EpenEpenEpen/'$line'/' exp.${JOBNAME}.run
    nrun=$(expr $nrun + $increm)
done < $file1


#the lines bellow are doing: one loop per parameter (except the one already done above) and replaces in each run files of the PPE the values of each parameters
parameters=("Emid" "Edd" "Taumf" "Pr" "R0top")
for param in ${parameters[@]}
do
	nrun=0
	file2=${filename}-${param}.txt
	while read -r line; do
		JOBNAME=${simu_grid_year}_nrun_${nrun}-${endjobname}
    		echo ${JOBNAME}
	      	echo -e "$line\n"
		sed -i 's/'${param}${param}${param}'/'$line'/' exp.${JOBNAME}.run
		nrun=$(expr $nrun + $increm)
	done < $file2
done

