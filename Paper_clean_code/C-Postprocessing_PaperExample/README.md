#What the user has to do

copy in /run one of the parameter lists that was created to run the PPE located in the ../B-ICON_runscripts/PARAMETER_SAMPLES/ folder (note that the parameter list is just used here to loop over the number of parameters, i.e. to know the exact length of the PPE on which to run the postprocessing scripts):
$ cp ../B-ICON_runscripts/PARAMETER_SAMPLES/name-of-the-parameter-sample-to-copy run/

edit the lines:
[...] #TODO to update 
in:
1_LHCPPE_create_analysis_runfiles_PaperExample.sh
 and 
2_LHCPPE_submit_analysis_runfiles_PaperExample.sh

Then
run the script to create the postprocessing runfiles: 
$bash 1_LHCPPE_create_analysis_runfiles_PaperExample.sh
run the script to submit the posprocessing runfiles: 
$bash 2_LHCPPE_submit_analysis_runfiles_PaperExample.sh


#In this folder you can find the following structure:

/run
in this folder there are these files:

template_runanalysisR2B5_1980-1990.sh:
this is the template for the analysis run that will calculate global outputs

template_runanalysisR2B5_1980-1990_NAO_SOO.sh:
this is the template for the analysis run that will calculate surface downward eastward stresses on the ocean regionally averaged on NAO (North Atlantic Ocean) or SOO (Southern Ocean)

template_run_analysis_R2B5_1980-1990-2ndtuningstep_60NandS_10and1000hPa.sh:
this is the template for the analysis run that will calculate zonal winds zonally averaged on 60degN or 60degS and at the level 10hPa or 1000hPa

1_LHCPPE_create_analysis_runfiles_PaperExample.sh:
this is the script that will create the analysis scripts: it copies the template scripts listed above, and edits them according to the number of the run of the PPE

2_LHCPPE_submit_analysis_runfiles_PaperExample.sh:
this is the script that will run the analysis scripts created 1_LHCPPE_create_analysis_runfiles_PaperExample.sh

sample_PAPEREXAMPLE_Emid_Epen_Edd_Taumf_Pr_R0top-Epen.txt:
parameter list that was used to create the ICON PPE

/1-postprocessing
make_seasonal:
this sript is called by the run files to make a time average on the selected years of the ICON outputs (the first year of the simulation is usually removed for spinup)

/2-analysis 
this script loads the necessary modules and runs a script located in 3-make-tables

/3-make-tables
TABLE.job:
this scripts defines the output variables

TABLE_3d_ua_60N_10hPa.job, TABLE_3d_ua_60S_10hPa.job, TABLE_tauu_SOO.job and TABLE_tauu_NAO.job: 
remaps the ICON outputs to regions,

table.ncl, table_tauu_region.ncl and table_ua_1level.ncl:
creates table files for with the values of the outputs 

VARS.txt, VARS_3d.txt and VARS_tauu.txt
these files contain the variables that are printed in the table
VARS.txt: all 2d variables
VARS_3d.txt: zonal winds
VARS_tauu.txt: surface downward eastward ocean stresses

/log 
the logs files of each postprocessing script (5 scripts per parameter set: one for the global variables, and 1 per local variable) are saved automatically here

/tables
the tables produced by the postprocessing files are stored here.
These tables contain all the necessary output metrics.

/tables/table_ua_1level.ncl
Here, you can find all the tables containing all the data used in the Paper.
