#!/bin/bash

#parse
#cd 02_parse_pdb_files
#mkdir bin data results
##verlinkung auf results und .ent files vom Download 
ln -s 01_download/results/results.txt 02_parse_pdb_files/data/
ln -s 01_download/data/* 02_parse_pdb_files/data/
##directory wo die pdb files sind
python parse_pdb_files.cpython-37.pyc 01_download/data > 02_parse_pdb_files/results/results.txt

