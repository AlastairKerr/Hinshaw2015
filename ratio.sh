#!/bin/bash 

R --no-save  <<EOF
a<- t(read.table("$1", fill=T, row.names=NULL, header=F))
b<- t(read.table("$2", fill=T, row.names=NULL, header=F))
c <- b/a
write.table(c, file="$3", col.names=F, row.names=F)
EOF
