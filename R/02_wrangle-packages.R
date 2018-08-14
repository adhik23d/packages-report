library("dplyr")
## create a data frame from data/installed-packages.csv
## with, e.g., readr::read_csv() or read.csv()
ipt <- read.csv(here("data", "installed-packages.csv"))
## filter out packages in the default library
filtered_ipt <- ipt%>%
                filter(LibPath== "/Users/mm09532/Library/R/3.4/library")
## keep variables Package and Built
## if you use dplyr, code like this will work:
apt <- ipt %>%
  filter(LibPath == .libPaths()[1]) %>%
  select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
write.csv(filtered_ipt, here("data", "add-on-packages.csv"))

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
apt_freqtable <- apt %>%
  count(Built) %>%
  mutate(prop = n / sum(n))

frequency_tbl <- filtered_ipt%>%
                count(Built)%>%
                mutate(proportion= n/sum(n))


## write this data frame to data/add-on-packages-freqtable.csv

write.csv(frequency_tbl, here( "data", "add-on-packages-freqtable.csv"))
## YES overwrite the files that are there now
## they came from me (Jenny)
## they are just examples

## when this script works, stage & commit it and the csv files
## PUSH!
