### This folder gathers all the scripts to conduct the automatic tuning routine presented in Bonnet, Pastori et al 2024.

The routine is split into the following steps:

	1. #### A-Generate_a_LHC_sampling: 
		run the notebook: `0_generate_a_LHC_sampling_and_save_parameter_values.ipynb`
		This notebook generates a sampling, creates files that contain the values of the parameter sampling and saves them in `B-ICON_runscripts\PARAMETER_SAMPLES\`

	2. #### B-ICON_runscripts:
		Use the sampling created above to create an ensemble of ICON runs:
		In your ICON repository `Path-to-your-ICON-repository\`, in the `run\` folder, copy the following script:

	        > cp A-ICON_runscripts\1_LHCPPE_make_runfile_PaperExample.sh Path-to-your-ICON-repository\run

		/!\ You will need to modify the path in the template file: at each line where the following comment is written : 
		`[here_a_path_is_defined_and_should_be_changed_by_the_user]` **#TODO: update that path**  

		and then run that script in `Path-to-your-ICON-repository\run`:

		> $ bash 1_LHCPPE_make_runfile_PaperExample.sh

		Run the ICON runs:
		In the ICON repository, in the `run\` folder (not in a subfolder), run the following script: 

		> $ bash 2_LHCPPE_submit_runfiles_PaperExample

		This step produces the log and error files, as well as the outputs of the ICON run in the folder `..\experiments`.

	3. #### C-Postprocessing_PaperExample
		Run Postprocessing scripts:

		> $ bash run\1_LHCPPE_create_analysis_runfiles_PaperExample.sh
		> $ bash run\2_LHCPPE_submit_analysis_runfiles_PaperExample.sh

		This step produces *.ps* tables with all the output metrics for each runs in the folder `\table`. See the `README.md` file in `C-Postprocessing_PaperExample` for more info.

	4. #### D-read_and_analyze_output_data
		* run the notebook: `0_Plotting_PPEs_parameters_and_outputs.ipynb` to plot the parameters and outputs of the PPEs.

		* run the notebook: `1_Hyperparameter_tuning_SobolAnalysis.ipynb` to conduct a hyperparameter tuning and the Sobol Analysis.

		* run the notebook: `2_Implausibility.ipynb` to run the History Matching technic: emulator training, hyperparameter tuning, implausibility metrics estimation and selection of the next sampling 

	5. #### Start again at step 1-



