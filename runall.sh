#!/bin/bash

#01_download
##file mit den pdb file entry names
#entry list wird mitgeliefert um Reproduzierbarkeit zu gewährleisten
#python select_from_pdb.cpython-37.pyc 50 01_download/results/entry_list.txt
##download der zufällig ausgewählten die im txt file stehen, diese dann in results ordner verschieben
python download_from_pdb.cpython-37.pyc 01_download/results/entry_list.txt
mv pdb/*.ent 01_download/data/
rmdir pdb
python download_from_pdb.cpython-37.pyc data/*.txt
mv pdb/*.ent 01_download/data/
rmdir pdb

#parse
#cd 02_parse_pdb_files
#mkdir bin data results
##verlinkung auf results und .ent files vom Download 
ln -s 01_download/results/results.txt 02_parse_pdb_files/data/
ln -s 01_download/data/* 02_parse_pdb_files/data/
##directory wo die pdb files sind
python parse_pdb_files.cpython-37.pyc 01_download/data > 02_parse_pdb_files/results/results.txt

#visualisation
##verlinkung auf results vom vorhigen
ln -s 02_parse_pdb_files/results/results.txt 03_Visualisation/data/

mkdir results
python plot_multibar.cpython-37.pyc 02_parse_pdb_files/results/results.txt
mv results/AA_frequencies.pdf 03_Visualisation/results
rmdir results

rmdir obsolete
mkdir bin
mv *.pyc bin/

ln -s bin/select_from_pdb.cpython-37.pyc 01_download/bin/
ln -s bin/download_from_pdb.cpython-37.pyc 01_download/bin/
ln -s bin/parse_pdb_files.cpython-37.pyc 02_parse_pdb_files/bin/
ln -s bin/plot_multibar.cpython-37.pyc 03_Visualisation/bin/





















