# load library

library(foreign)

# get data

part_data <- read.csv("C:/Users/k_glo/Desktop/Kevin/Uni Unterlagen/2_Arbeitsmaterialien/2_Master/1. Fachsemester/1_DataCol_n_Error/10_Hausarbeit/data/ESS1-8e01.csv", sep=",", header=T)

int_data <- read.spss("C:/Users/k_glo/Desktop/Kevin/Uni Unterlagen/2_Arbeitsmaterialien/2_Master/1. Fachsemester/1_DataCol_n_Error/10_Hausarbeit/data/ess1contacts.sav", to.data.frame = T)

# get variable names

variable.names(part_data)

variable.names(int_data)

getOption("max.print") # 1000 var. printed, 303 obmitted; 1000+303= 1303 var. in data + 195 in interviewer survey

options(max.print = 1303)

varlist <- variable.names(part_data)

varlist2 <- variable.names(int_data)

View(varlist)

View(varlist2)

# How many participants?

length(part_data[,"idno"]) #2919 obs.

length(int_data[,"IDNO"]) #68702 respo. intended but 2919 participants in sample frame

show(data[,"cproddat"])

options(max.print = 3000) # all on the same day???
