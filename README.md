# Hindshaw2015
Scripts for the Hinshaw et al 2015 paper

Title: Structural evidence for Scc4-dependent localization of cohesin loading

Authors: Stephen Hinshaw, Vasso Makrantoni, Alastair Kerr, Adèle Marston, Stephen C. Harrison

GEO accession GSE68573



Files: 


workflow1.sh        #details of the mapping process

CENTROMERE.gff      # location of the regions of interest

rDNA.bed           # rDNA regions excluded from analysis

EveryCen-boxplot.pl # perl script for prepping the data for R 

Details: 
In each chromosome a 50kb region is examined with the centromere in
the centre. (i.e. centromere with 25kb flanks) 500 windows, each 100bp
are taken across this region in each chromosome and the ratio of reads
(normalised to RPM) over input is taken. So for each window we have 16
values, (one per chromosome) 

plot-every-cen.r    # create R plots for each centromere 


AM15537_Scc1-6HA_2hrNocodazole_scc4-m35-rDNA-all.50k  # Two processed files, ChIP / input
AM15537_Scc1-6HA_2hrNocodazole_scc4-m35-rDNA-all.50k # Two processed files, ChIP / input

plot_median.r #Plots for figure 4 using these files  
