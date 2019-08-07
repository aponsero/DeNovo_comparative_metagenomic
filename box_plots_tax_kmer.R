library(vegan)
library(gplots)
library(ggplot2)
library(RColorBrewer)
library(tidyr)

## boxplot for Jaccard distances
file <- "/Users/aponsero/Documents/UA_POSTDOC/projects/LIBRA_review/Exp1/Analysis_Exp1B/delta_Jacc_list.csv"
JacList <- readr::read_csv(file)

JacData <- JacList %>% gather("dataset","delta",- replicate)
JacData
p <- ggplot(JacData, aes(x=dataset, y=delta)) + 
  geom_boxplot()
p

## Boxplot for BC distances

file <- "/Users/aponsero/Documents/UA_POSTDOC/projects/LIBRA_review/Exp1/Analysis_Exp1B/delta_bc_list.csv"
bcList <- readr::read_csv(file)

bcData <- bcList %>% gather("dataset","delta",- replicate)
bcData
p2 <- ggplot(bcData, aes(x=dataset, y=delta)) + 
  geom_boxplot()
p2
