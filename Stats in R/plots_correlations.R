table <- read.csv(file='C:/Users/carry/BootCamp/project-one/Resources/City_envo_hpi.csv',check.names=F,stringsAsFactors = F)

plt <- ggplot(table,aes(x=PM2.5_ExceedCount,y=Asthma, color = sfcount))

plt + geom_point() 

plt <- ggplot(table,aes(x=stateabbr, y=asthma))
plt +  geom_boxplot()

# Density plots to look at how data are distributed
ggplot(table,aes(x=asthma)) + geom_density()
ggplot(table,aes(x=highbloodpressure)) + geom_density()
ggplot(table,aes(x=cancer)) + geom_density()
ggplot(table,aes(x=heartdisease)) + geom_density()
ggplot(table,aes(x=mentalhealthissues)) + geom_density()

# getting correlation matrix
disease_matrix <- as.matrix(table[,c("asthma","highbloodpressure","cancer", "heartdisease", "mentalhealthissues")])
cor(disease_matrix)

# getting correlation matrix
asthma_matrix <- as.matrix(table[,c("asthma","insurance","smokes", "annualcheckups","TotalCost","hpi")])
cor(na.omit(asthma_matrix))

table$PM2.5_Exceptional <- as.numeric(table$PM2.5_Exceptional)
table$PM2.5_ExceedCount <- as.numeric(table$PM2.5_ExceedCount)
table$sfcount <- as.numeric(table$sfcount)
# getting correlation matrix
pm_matrix <- as.matrix(table[,c("PM2.5_ExceedCount","PM2.5_Max", "sfcount")])
cor(na.omit(pm_matrix))

# getting correlation matrix
ozone_matrix <- as.matrix(table[,c("Ozone_ExceedCount","Ozone_Max", "sfcount")])
cor(na.omit(ozone_matrix))

# getting correlation matrix
disease_matrix <- as.matrix(table[,c("asthma","highbloodpressure","cancer", "heartdisease", "mentalhealthissues","hpi")])
cor(na.omit(disease_matrix))

