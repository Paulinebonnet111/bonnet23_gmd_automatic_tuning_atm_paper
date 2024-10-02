In this folder, three jupyter notebooks are available:

- `0_Plotting_PPEs_parameters_and_outputs.ipynb` plots the parameters and outputs of the PPEs.
- `1_Hyperparameter_tuning_SobolAnalysis.ipynb` conducts a hyperparameter tuning and the Sobol Analysis.
- `2_Implausibility.ipynb` runs the History Matching technique: emulator training, hyperparameter tuning, 
implausibility metrics estimation and selection of the next sampling


### What the user has to do:

The user should successively run the three notebooks in the numbering order.
The user can update: the name of the table files to be read (in `0_Plotting_PPEs_parameters_and_outputs.ipynb` ), the implausilibility metrics threshold (in `2_Implausibility.ipynb`) so that the new selected sampling is large enough to explore the parameter space and small enough to focus on the are of interest of the parameter-to-output map.
