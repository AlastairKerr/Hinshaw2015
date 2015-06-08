#Load data 
am15540 <- read.table("AM15540_Scc1-6HA_2hrNocodazole_SCC4-HIS3-rDNA-all.50k")
am15537 <- read.table("AM15537_Scc1-6HA_2hrNocodazole_scc4-m35-rDNA-all.50k")

library(dplyr)

#calculate the median per region 
am40_median <- as.data.frame(am15540) %>% summarise_each(funs(median(., na.rm=TRUE) )) 
am37_median <- as.data.frame(am15537) %>% summarise_each(funs(median(., na.rm=TRUE) )) 

#set the coordinates 
Coords <- (1:499 * 100) -25000

#Plot used in figure 4 
svg("cenmedian_15537v15540.svg", width=15)
plot(Coords, log2(am40_median), pch='.', col="darkblue")
lines (Coords, log2(am40_median), pch='.', col="darkblue", lw=3)
lines (Coords, log2(am37_median), pch='.', col="red", lw=3)
