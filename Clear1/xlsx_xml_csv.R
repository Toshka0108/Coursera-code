setwd("C:/Users/Ольга/Desktop/майн/git")
download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv ",
              destfile = "./clear")
data <- read.csv("clear")
sum(  data$VAL[data$VAL == 24]   , na.rm = TRUE)/24

download.file(url="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx",
              destfile = "./clearx.xlsx")
dat <- read.xlsx("clearx2.xlsx", sheetIndex = 1, colIndex = 7:15, rowIndex = 18:23)
sum(dat$Zip*dat$Ext,na.rm=T) 
install.packages("XML")
library(XML)
url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
dox <- xmlInternalTreeParse(url)
root <- xmlRoot(dox)
table(xpathSApply(root,"//zipcode",xmlValue))
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", destfile = "./cl")
DT <- fread("cl")
install.packages("data.table")
library("data.table")

