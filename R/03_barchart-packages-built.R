## make a barchart from the frequency table in data/add-on-packages-freqtable.csv
library(ggplot2)

table_bar<- read.csv(here("data", "add-on-packages-freqtable.csv"))
## read that csv into a data frame, then ...

## if you use ggplot2, code like this will work:
ggplot(table_bar, aes(x = Built, y = n)) +
  geom_bar(stat = "identity")

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
ggsave(here ("figs","built-barchart.png" ))

## YES overwrite the file that is there now
## that came from me (Jenny)
#We have done all the changs that we needed to :D :D 
#Adding stuff to have merge conflit in the branch :)
#This is the only way you learn things. wooowwww

## when this script works, stage & commit it and the png file
## PUSH!

