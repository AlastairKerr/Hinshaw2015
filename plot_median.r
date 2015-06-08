#Load data 
# data has been processed,
# ChIP over input, and 1 row per chromosome, 1 column = 100bp  window
# No header or row coordinates 

am15540 <- read.table("AM15540_Scc1-6HA_2hrNocodazole_SCC4-HIS3-rDNA-all.50k")
am15537 <- read.table("AM15537_Scc1-6HA_2hrNocodazole_scc4-m35-rDNA-all.50k")

#calculate the median per window
am40_median <- t(as.data.frame(am15540) %>% summarise_each(funs(median(., na.rm=TRUE) )) )
am37_median <- t(as.data.frame(am15537) %>% summarise_each(funs(median(., na.rm=TRUE) )) )

#Plot used in figure 4 
svg("cenmedian_15537v15540.svg", width=15)
plot(Coords, log2(am40_median), pch='.', col="darkblue")
lines (Coords, log2(am40_median), pch='.', col="darkblue", lw=3)
lines (Coords, log2(am37_median), pch='.', col="red", lw=3)
