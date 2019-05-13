#!/bin/bash

#visualisation
#cd 03_Visualisation
#mkdir bin data results 
##verlinkung auf results vom vorhigen
#cd
#cd 2019_protein_structure1
ln -s 02_parse_pdb_files/results/results.txt 03_Visualisation/data/

mkdir results
python plot_multibar.cpython-37.pyc 02_parse_pdb_files/results/results.txt
mv results/AA_frequencies.pdf 03_Visualisation/results
rmdir results

rmdir obsolete

