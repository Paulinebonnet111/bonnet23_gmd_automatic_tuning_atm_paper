This folder gathers all the scripts to conduct the automatic tuning routine presented in Bonnet, Pastori et al 2024.

The routine is split into the following steps:

A-Generate_a_LHC_sampling: 
run the notebook: 0_generate_a_LHC_sampling_and_save_parameter_values.ipynb
This notebook creates the files "sample_*" that contain the values of the parameter samples and saves them in the PARAMETER_SAMPLES folder

B-ICON-runscripts:
Use this sampling to create an ensemble of ICON runs:
In your ICON repository Path-to-your-ICON-repository\ , in the run\ folder, copy the following script:
cp A-ICON-runscripts\1_LHCPPE_make_runfile_PaperExample.sh Path-to-your-ICON-repository\run\Paper_example

and then run that script in that repository:
$ bash 1_LHCPPE_make_runfile_PaperExample.sh

This step uses:
the template template_atm_amip_R2B5_1979-1980_test.run
the PARAMETER_SAMPLES folder and the parameter values files "sample_*"

Run the ICON runs:
In the ICON repository, in the run\ folder (not in a subfolder), run the following script: 
$ bash 2_LHCPPE_submit_runfiles_PaperExample

C-Postprocessing_PaperExample
Run Postprocessing scripts
bash run\1_LHCPPE_create_analysis_runfiles_PaperExample.sh
bash run\2_LHCPPE_submit_analysis_runfiles_PaperExample.sh

D-    Read Postprocessing and upload data (python)
run the notebook: 2_Implausibility.ipynb 
This will run the History Matching technic: emulator training, hyperparameter tuning, implausibility metrics estimation and selection of the next sampling 

E-    Start again at step 1-



