###############################################################
# ***********  Ravinder_Assign_1_1_17th_Mar.R    *********** #
#--------------------------------------------------------------
###############################################################

# clear all existing variables from console
cat("\014") 
# clear all data variables 
rm(list=ls())

#Questions

#Import Telecom_Weekly data and name the object as tele_weekly
tele_weekly <- read.csv(file="Telecom_Weekly.csv",header=TRUE,row.names = NULL, sep= ",")

tele_weekly



#Check number of rows, columns and customers in the data

No.OfRows <- nrow(tele_weekly)
No.OfRows

No.OfColumns <- ncol(tele_weekly)
No.OfColumns

No.OfCustomers <- length(unique(tele_weekly$CustID[!is.na(tele_weekly$CustID)]))
No.OfCustomers

RCC=data.frame(No.OfRows,No.OfColumns,No.OfCustomers)
RCC

#Display first 10 rows

FirstTenRows<-head(tele_weekly, n=10)
FirstTenRows

#Display last 5 rows

LastFiveRow<-tail(tele_weekly, n=5)
LastFiveRow

#Describe(summarize) all variables


tele_weekly_Summary<- summarise(tele_weekly,No.OfCustomers,
                                TotalWeeks=length(unique(tele_weekly$Week[!is.na(tele_weekly$Week)])),
                                Min_CallsPerWeek=min(Calls,na.rm=TRUE),
                                Max_CallsPerWeek=max(Calls,na.rm=TRUE),
                                Avg_AmtPerWeek=mean(Amt,na.rm=TRUE))

tele_weekly_Summary

#Display Structure of the data
str(tele_weekly)
