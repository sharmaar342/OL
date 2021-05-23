###ONE TIME SETUP/PACKAGE INSTALLATION COMMANDS 
  #  install.packages('ipumsr')

###SECOND TIME JUST CALL FROM LIBRARY (FASTER)
  library(ipumsr)


getwd()
setwd("/Users/arvindsharma/Dropbox/OCC/OL")

print("I am about to import data")

# NOTE: To load data, you must download both the extract's data and the DDI
# and also set the working directory to the folder with these files (or change the path below).
if (!require("ipumsr")) stop("Reading IPUMS data into R requires the ipumsr package. It can be installed using the following command: install.packages('ipumsr')")
ddi <- read_ipums_ddi("cps_00028.xml")
data <- read_ipums_micro(ddi)

sapply(data, mean, na.rm=TRUE)

