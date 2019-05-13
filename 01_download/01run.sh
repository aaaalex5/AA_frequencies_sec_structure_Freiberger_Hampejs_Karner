#!/bin/bash

#01_download
mkdir bin data results
cd
cd 2019_protein_structure1

##file mit den pdb file entry names
python select_from_pdb.cpython-37.pyc 50 01_download/results/entry_list.txt
##download der zufällig ausgewählten die im txt file stehen, diese dann in results ordner verschieben
python download_from_pdb.cpython-37.pyc 01_download/results/entry_list.txt
mv pdb/*.ent 01_download/data/
rmdir pdb
python download_from_pdb.cpython-37.pyc data/*.txt
mv pdb/*.ent 01_download/data/
rmdir pdb

