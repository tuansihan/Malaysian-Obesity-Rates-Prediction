# library
library(ggplot2)
library(dplyr)
library(sqldf)
library(e1071)
library(class)
library(ggpubr)

#Setting Work Directory
setwd("D:/INTI/Sem 6/IBM3201 Data Mining and Predictive Analytics/Group Assignment")

#Importing Data
mydata <- read.csv("D:\\Obesity.csv", header=TRUE)
str(mydata)

mydata %>%
  ggplot( aes(x=Year, y=Percentage, group=Gender, color=Gender)) +
  geom_line()


#Malaysia Obesity Rates in 2011
msia11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "MALAYSIA" AND Year="2011"')



#Malaysia Obesity Rates in 2015
msia15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "MALAYSIA" AND Year="2015"')



#Malaysia Female Obesity Rates in 2011
fmsia11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "MALAYSIA" AND Gender = "Women" AND Year="2011"')



#Malaysia Female Obesity Rates in 2015
fmsia15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "MALAYSIA" AND Gender = "Women" AND Year="2015"')



#Malaysia Male Obesity Rates in 2011
mmsia11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "MALAYSIA" AND Gender = "Men" AND Year="2011"')



#Malaysia Male Obesity Rates in 2015
mmsia15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "MALAYSIA" AND Gender = "Men" AND Year="2015"')



#Extracting Females in States in 2011
fjohor11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Johor" AND Gender = "Women" AND Year="2011"')

fkedah11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Kedah" AND Gender = "Women" AND Year="2011"')

fkelantan11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Kelantan" AND Gender = "Women" AND Year="2011"')

fmelaka11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Melaka" AND Gender = "Women" AND Year="2011"')

fnsembilan11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Negeri Sembilan" AND Gender = "Women" AND Year="2011"')

fpahang11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Pahang" AND Gender = "Women" AND Year="2011"')

fperak11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Perak" AND Gender = "Women" AND Year="2011"')

fperlis11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Perlis" AND Gender = "Women" AND Year="2011"')

fpinang11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Pulau Pinang" AND Gender = "Women" AND Year="2011"')

fsabah11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Sabah" AND Gender = "Women" AND Year="2011"')

fSarawak11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Sarawak" AND Gender = "Women" AND Year="2011"')

fselangor11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Selangor" AND Gender = "Women" AND Year="2011"')

fterengganu11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Terengganu" AND Gender = "Women" AND Year="2011"')

fkl11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "W.P. Kuala Lumpur" AND Gender = "Women" AND Year="2011"')

fpj11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "W.P. Putrajaya" AND Gender = "Women" AND Year="2011"')



#Extracting Females in States in 2015
fjohor15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Johor" AND Gender = "Women" AND Year="2015"')

fkedah15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Kedah" AND Gender = "Women" AND Year="2015"')

fkelantan15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Kelantan" AND Gender = "Women" AND Year="2015"')

fmelaka15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Melaka" AND Gender = "Women" AND Year="2015"')

fnsembilan15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Negeri Sembilan" AND Gender = "Women" AND Year="2015"')

fpahang15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Pahang" AND Gender = "Women" AND Year="2015"')

fperak15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Perak" AND Gender = "Women" AND Year="2015"')

fperlis15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Perlis" AND Gender = "Women" AND Year="2015"')

fpinang15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Pulau Pinang" AND Gender = "Women" AND Year="2015"')

fsabah15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Sabah" AND Gender = "Women" AND Year="2015"')

fSarawak15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Sarawak" AND Gender = "Women" AND Year="2015"')

fselangor15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Selangor" AND Gender = "Women" AND Year="2015"')

fterengganu15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Terengganu" AND Gender = "Women" AND Year="2015"')

fkl15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "W.P. Kuala Lumpur" AND Gender = "Women" AND Year="2015"')

fpj15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "W.P. Putrajaya" AND Gender = "Women" AND Year="2015"')



#Extracting Males in States in 2011
mjohor11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Johor" AND Gender = "Men" AND Year="2011"')

mkedah11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Kedah" AND Gender = "Men" AND Year="2011"')

mkelantan11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Kelantan" AND Gender = "Men" AND Year="2011"')

mmelaka11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Melaka" AND Gender = "Men" AND Year="2011"')

mnsembilan11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Negeri Sembilan" AND Gender = "Men" AND Year="2011"')

mpahang11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Pahang" AND Gender = "Men" AND Year="2011"')

mperak11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Perak" AND Gender = "Men" AND Year="2011"')

mperlis11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Perlis" AND Gender = "Men" AND Year="2011"')

mpinang11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Pulau Pinang" AND Gender = "Men" AND Year="2011"')

msabah11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Sabah" AND Gender = "Men" AND Year="2011"')

mSarawak11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Sarawak" AND Gender = "Men" AND Year="2011"')

mselangor11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Selangor" AND Gender = "Men" AND Year="2011"')

mterengganu11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Terengganu" AND Gender = "Men" AND Year="2011"')

mkl11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "W.P. Kuala Lumpur" AND Gender = "Men" AND Year="2011"')

mpj11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "W.P. Putrajaya" AND Gender = "Men" AND Year="2011"')



#Extracting Males in States in 2015
mjohor15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Johor" AND Gender = "Men" AND Year="2015"')

mkedah15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Kedah" AND Gender = "Men" AND Year="2015"')

mkelantan15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Kelantan" AND Gender = "Men" AND Year="2015"')

mmelaka15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Melaka" AND Gender = "Men" AND Year="2015"')

mnsembilan15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Negeri Sembilan" AND Gender = "Men" AND Year="2015"')

mpahang15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Pahang" AND Gender = "Men" AND Year="2015"')

mperak15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Perak" AND Gender = "Men" AND Year="2015"')

mperlis15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Perlis" AND Gender = "Men" AND Year="2015"')

mpinang15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Pulau Pinang" AND Gender = "Men" AND Year="2015"')

msabah15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Sabah" AND Gender = "Men" AND Year="2015"')

mSarawak15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Sarawak" AND Gender = "Men" AND Year="2015"')

mselangor15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Selangor" AND Gender = "Men" AND Year="2015"')

mterengganu15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Terengganu" AND Gender = "Men" AND Year="2015"')

mkl15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "W.P. Kuala Lumpur" AND Gender = "Men" AND Year="2015"')

mpj15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "W.P. Putrajaya" AND Gender = "Men" AND Year="2015"')



#Extracting Males & Female in States in 2011
johor11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Johor" AND Year = "2011"')

kedah11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Kedah" AND Year = "2011"')

kelantan11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Kelantan" AND Year = "2011"')

kl11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "W.P. Kuala Lumpur" AND Year = "2011"')

melaka11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Melaka" AND Year = "2011"')

nsembilan11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Negeri Sembilan" AND Year = "2011"')

pahang11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Pahang" AND Year = "2011"')

perak11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Perak" AND Year = "2011"')

perlis11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Perlis" AND Year = "2011"')

pinang11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Pulau Pinang" AND Year = "2011"')

pj11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "W.P. Putrajaya" AND Year = "2011"')

sabah11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Sabah" AND Year = "2011"')

sarawak11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Sarawak" AND Year = "2011"')

selangor11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Selangor" AND Year = "2011"')

terengganu11 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Terengganu" AND Year = "2011"')

#Extracting Males & Female in States in 2015
johor15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Johor" AND Year = "2015"')

kedah15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Kedah" AND Year = "2015"')

kelantan15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Kelantan" AND Year = "2015"')
kl15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "W.P. Kuala Lumpur" AND Year = "2015"')

melaka15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Melaka" AND Year = "2015"')

nsembilan15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Negeri Sembilan" AND Year = "2015"')

pahang15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Pahang" AND Year = "2015"')

perak15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Perak" AND Year = "2015"')

perlis15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Perlis" AND Year = "2015"')

pinang15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Pulau Pinang" AND Year = "2015"')

pj15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "W.P. Putrajaya" AND Year = "2015"')

sabah15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Sabah" AND Year = "2015"')

sarawak15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Sarawak" AND Year = "2015"')

selangor15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Selangor" AND Year = "2015"')

terengganu15 <- sqldf('SELECT *
                FROM mydata 
                WHERE State = "Terengganu" AND Year = "2015"')



#Plotting graph for Malaysia in 2011
msiabar11 <- ggplot(msia11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Malaysia in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

msiabar11



#Plotting graph for Malaysia in 2015
msiabar15 <- ggplot(msia15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Malaysia in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))



#Plotting graph for States in 2011 based on Gender
johorbar11 <- ggplot(johor11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Johor in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

kedahbar11 <- ggplot(kedah11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kedah in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

kelantanbar11 <- ggplot(kelantan11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kelantan in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

klbar11 <- ggplot(kl11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kuala Lumpur in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

melakabar11 <- ggplot(melaka11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Melaka in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

nsembilanbar11 <- ggplot(nsembilan11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Negeri Sembilan in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

pahangbar11 <- ggplot(pahang11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pahang in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

perakbar11 <- ggplot(perak11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perak in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

perlisbar11 <- ggplot(perlis11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perlis in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

pinangbar11 <- ggplot(pinang11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pinang in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

pjbar11 <- ggplot(pj11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Putra Jaya in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

sabahbar11 <- ggplot(sabah11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sabah in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

sarawakbar11 <- ggplot(sarawak11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sarawak in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

selangorbar11 <- ggplot(selangor11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Selangor in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

terengganubar11 <- ggplot(terengganu11, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Terengganu in 2011") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))



#Plotting graph for States in 2015 based on Gender
johorbar15 <- ggplot(johor15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Johor in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

kedahbar15 <- ggplot(kedah15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kedah in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

kelantanbar15 <- ggplot(kelantan15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kelantan in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

klbar15 <- ggplot(kl15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kuala Lumpur in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

melakabar15 <- ggplot(melaka15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Melaka in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

nsembilanbar15 <- ggplot(nsembilan15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Negeri Sembilan in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

pahangbar15 <- ggplot(pahang15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pahang in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

perakbar15 <- ggplot(perak15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perak in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

perlisbar15 <- ggplot(perlis15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perlis in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

pinangbar15 <- ggplot(pinang15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pinang in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

pjbar15 <- ggplot(pj15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Putra Jaya in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

sabahbar15 <- ggplot(sabah15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sabah in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

sarawakbar15 <- ggplot(sarawak15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sarawak in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

selangorbar15 <- ggplot(selangor15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Selangor in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))

terengganubar15 <- ggplot(terengganu15, aes(x = Age, y = Percentage, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Terengganu in 2015") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF","#ff66cc"))


library(raster)

#country Malaysia with all boundaries at the district level
Malaysia <- getData('GADM', country='MYS', level=2)
#listing all districts in every states in Malaysia e.g. there are 32 districts for Sarawak state
Malaysia$NAME_1

plot(Malaysia)


boxplot(mydata$Percentage,
        main = "Percentage",
        xlab = "Percentage",
        ylab = "Year",
        col = "lightgreen",
        border = "black",
        horizontal = TRUE,
        notch = TRUE
)


mjohor = data.frame(mjohor11,mjohor15)
mjohor

#Regression with SVM
mjohor19svm = svm(Percentage.1~Percentage, mjohor)

#Predict using SVM regression
pmjohor19svm = predict(mjohor19svm, mjohor)

pmjohor19 = data.frame(mjohor,Prediction = pmjohor19svm)
pmjohor19

tuned_parametersmjohor19 <- tune.svm(mjohor$Percentage.1~mjohor$Percentage, data = mjohor, gamma = 10^(-10:10), cost = 10^(-10:10),
                       tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmjohor19)
plot(tuned_parametersmjohor19)
tunedmodelmjohor19 <- tuned_parametersmjohor19$best.model
tunedmodelmjohor19
pmjohor19svmtuned = predict(tunedmodelmjohor19, mjohor)
pmjohor19tuned = data.frame(mjohor,Prediction = pmjohor19svmtuned)
pmjohor19tuned #With error margin of 0.8032875

#Regression with SVM
mjohor23svm = svm(Prediction~Percentage.1,pmjohor19)

#Predict using SVM regression
pmjohor23svm = predict(mjohor23svm, pmjohor19)

pmjohor23 = data.frame(pmjohor19,Prediction = pmjohor23svm)
pmjohor23 #Prediction for Johor Male

tuned_parametersmjohor23 <- tune.svm(pmjohor19tuned$Prediction~pmjohor19tuned$Percentage.1, data = mjohor, gamma = 10^(-10:10), cost = 10^(-10:10),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmjohor23)
plot(tuned_parametersmjohor23)
tunedmodelmjohor23 <- tuned_parametersmjohor23$best.model
tunedmodelmjohor23
pmjohor23svmtuned = predict(tunedmodelmjohor23, mjohor)
pmjohor23tuned = data.frame(pmjohor19tuned,Prediction = pmjohor23svmtuned)
pmjohor23tuned #With error margin of 0.1161547

fjohor = data.frame(fjohor11,fjohor15)
fjohor

#Regression with SVM
fjohor19svm = svm(Percentage.1~Percentage, fjohor)

#Predict using SVM regression
pfjohor19svm = predict(fjohor19svm, fjohor)

pfjohor19 = data.frame(fjohor,Prediction = pfjohor19svm)
pfjohor19

tuned_parametersfjohor19 <- tune.svm(fjohor$Percentage.1~fjohor$Percentage, data = fjohor, gamma = 10^(-3:15), cost = 10^(-3:15),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfjohor19)
plot(tuned_parametersfjohor19)
tunedmodelfjohor19 <- tuned_parametersfjohor19$best.model
tunedmodelfjohor19
pfjohor19svmtuned = predict(tunedmodelfjohor19, fjohor)
pfjohor19tuned = data.frame(fjohor,Prediction = pfjohor19svmtuned)
pfjohor19tuned #With error margin of 1.742335

#Regression with SVM
fjohor23svm = svm(Prediction~Percentage.1,pfjohor19)

#Predict using SVM regression
pfjohor23svm = predict(fjohor23svm, pfjohor19)

pfjohor23 = data.frame(pfjohor19,Prediction = pfjohor23svm)
pfjohor23 #Prediction for Johor Female

tuned_parametersfjohor23 <- tune.svm(pfjohor19tuned$Percentage.1~pfjohor19tuned$Percentage, data = fjohor, gamma = 10^(-15:5), cost = 10^(-3:15),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfjohor23)
plot(tuned_parametersfjohor23)
tunedmodelfjohor23 <- tuned_parametersfjohor23$best.model
tunedmodelfjohor23
pfjohor23svmtuned = predict(tunedmodelfjohor23, fjohor)
pfjohor23tuned = data.frame(pfjohor19tuned,Prediction = pfjohor23svmtuned)
pfjohor23tuned #With error margin of 1.745

mpahang = data.frame(mpahang11,mpahang15)
mpahang

#Regression with SVM
mpahang19svm = svm(Percentage.1~Percentage, mpahang)

#Predict using SVM regression
pmpahang19svm = predict(mpahang19svm, mpahang)

pmpahang19 = data.frame(mpahang,Prediction = pmpahang19svm)
pmpahang19

tuned_parametersmpahang19 <- tune.svm(mpahang$Percentage.1~mpahang$Percentage, data = mpahang, gamma = 10^(-3:10), cost = 10^(-3:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmpahang19)
plot(tuned_parametersmpahang19)
tunedmodelmpahang19 <- tuned_parametersmpahang19$best.model
tunedmodelmpahang19
pmpahang19svmtuned = predict(tunedmodelmpahang19, mpahang)
pmpahang19tuned = data.frame(mpahang,Prediction = pmpahang19svmtuned)
pmpahang19tuned #With error margin of 13.52137

#Regression with SVM
mpahang23svm = svm(Prediction~Percentage.1,pmpahang19)

#Predict using SVM regression
pmpahang23svm = predict(mpahang23svm, pmpahang19)

pmpahang23 = data.frame(pmpahang19,Prediction = pmpahang23svm)
pmpahang23 #Prediction for Pahang Male

tuned_parametersmpahang23 <- tune.svm(pmpahang19tuned$Prediction~pmpahang19tuned$Percentage.1, data = mpahang, gamma = 10^(-10:10), cost = 10^(-10:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmpahang23)
plot(tuned_parametersmpahang23)
tunedmodelmpahang23 <- tuned_parametersmpahang23$best.model
tunedmodelmpahang23
pmpahang23svmtuned = predict(tunedmodelmpahang23, mpahang)
pmpahang23tuned = data.frame(pmpahang19tuned,Prediction = pmpahang23svmtuned)
pmpahang23tuned #With error margin of 0.1585178


fpahang = data.frame(fpahang11,fpahang15)
fpahang

#Regression with SVM
fpahang19svm = svm(Percentage.1~Percentage, fpahang)

#Predict using SVM regression
pfpahang19svm = predict(fpahang19svm, fpahang)

pfpahang19 = data.frame(fpahang,Prediction = pfpahang19svm)
pfpahang19

tuned_parametersfpahang19 <- tune.svm(fpahang$Percentage.1~fpahang$Percentage, data = fpahang, gamma = 10^(-5:10), cost = 10^(-5:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfpahang19)
plot(tuned_parametersfpahang19)
tunedmodelfpahang19 <- tuned_parametersfpahang19$best.model
tunedmodelfpahang19
pfpahang19svmtuned = predict(tunedmodelfpahang19, fpahang)
pfpahang19tuned = data.frame(fpahang,Prediction = pfpahang19svmtuned)
pfpahang19tuned #With error margin of 11.42453


#Regression with SVM
fpahang23svm = svm(Prediction~Percentage.1,pfpahang19)

#Predict using SVM regression
pfpahang23svm = predict(fpahang23svm, pfpahang19)

pfpahang23 = data.frame(pfpahang19,Prediction = pfpahang23svm)
pfpahang23 #Prediction for Pahang Female

tuned_parametersfpahang23 <- tune.svm(pfpahang19tuned$Prediction~pfpahang19tuned$Percentage.1, data = fpahang, gamma = 10^(-3:10), cost = 10^(-3:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfpahang23)
plot(tuned_parametersfpahang23)
tunedmodelfpahang23 <- tuned_parametersfpahang23$best.model
tunedmodelfpahang23
pfpahang23svmtuned = predict(tunedmodelfpahang23, fpahang)
pfpahang23tuned = data.frame(pfpahang19tuned,Prediction = pfpahang23svmtuned)
pfpahang23tuned #With error margin of 0.1854681


mpj = data.frame(mpj11,mpj15)
mpj

#Regression with SVM
mpj19svm = svm(Percentage.1~Percentage, mpj)

#Predict using SVM regression
pmpj19svm = predict(mpj19svm, mpj)

pmpj19 = data.frame(mpj,Prediction = pmpj19svm)
pmpj19

tuned_parametersmpj19 <- tune.svm(mpj$Percentage.1~mpj$Percentage, data = mpj, gamma = 10^(-3:10), cost = 10^(-3:10),
                                  tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmpj19)
plot(tuned_parametersmpj19)
tunedmodelmpj19 <- tuned_parametersmpj19$best.model
tunedmodelmpj19
pmpj19svmtuned = predict(tunedmodelmpj19, mpj)
pmpj19tuned = data.frame(mpj,Prediction = pmpj19svmtuned)
pmpj19tuned #With error margin of 14.27793


#Regression with SVM
mpj23svm = svm(Prediction~Percentage.1,pmpj19)

#Predict using SVM regression
pmpj23svm = predict(mpj23svm, pmpj19)

pmpj23 = data.frame(pmpj19,Prediction = pmpj23svm)
pmpj23 #Prediction for PJ Male

tuned_parametersmpj23 <- tune.svm(pmpj19tuned$Prediction~pmpj19tuned$Percentage.1, data = mpj, gamma = 10^(-10:10), cost = 10^(-10:10),
                                  tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmpj23)
plot(tuned_parametersmpj23)
tunedmodelmpj23 <- tuned_parametersmpj23$best.model
tunedmodelmpj23
pmpj23svmtuned = predict(tunedmodelmpj23, mpj)
pmpj23tuned = data.frame(pmpj19tuned,Prediction = pmpj23svmtuned)
pmpj23tuned #With error margin of 0.2597508


fpj = data.frame(fpj11,fpj15)
fpj

#Regression with SVM
fpj19svm = svm(Percentage.1~Percentage, fpj)

#Predict using SVM regression
pfpj19svm = predict(fpj19svm, fpj)

pfpj19 = data.frame(fpj,Prediction = pfpj19svm)
pfpj19

tuned_parametersfpj19 <- tune.svm(fpj$Percentage.1~fpj$Percentage, data = fpj, gamma = 4^(-3:10), cost = 4^(-3:10),
                                  tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfpj19)
plot(tuned_parametersfpj19)
tunedmodelfpj19 <- tuned_parametersfpj19$best.model
tunedmodelfpj19
pfpj19svmtuned = predict(tunedmodelfpj19, fpj)
pfpj19tuned = data.frame(fpj,Prediction = pfpj19svmtuned)
pfpj19tuned #With error margin of 63.86992


#Regression with SVM
fpj23svm = svm(Prediction~Percentage.1,pfpj19)

#Predict using SVM regression
pfpj23svm = predict(fpj23svm, pfpj19)

pfpj23 = data.frame(pfpj19,Prediction = pfpj23svm)
pfpj23 #Prediction for PJ Female

tuned_parametersfpj23 <- tune.svm(pfpj19tuned$Prediction~pfpj19tuned$Percentage.1, data = fpj, gamma = 10^(-10:10), cost = 10^(-10:10),
                                  tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfpj23)
plot(tuned_parametersfpj23)
tunedmodelfpj23 <- tuned_parametersfpj23$best.model
tunedmodelfpj23
pfpj23svmtuned = predict(tunedmodelfpj23, fpj)
pfpj23tuned = data.frame(pfpj19tuned,Prediction = pfpj23svmtuned)
pfpj23tuned #With error margin of 0.5731405


mkedah = data.frame(mkedah11,mkedah15)
mkedah

#Regression with SVM
mkedah19svm = svm(Percentage.1~Percentage, mkedah)

#Predict using SVM regression
pmkedah19svm = predict(mkedah19svm, mkedah)

pmkedah19 = data.frame(mkedah,Prediction = pmkedah19svm)
pmkedah19

tuned_parametersmkedah19 <- tune.svm(mkedah$Percentage.1~mkedah$Percentage, data = mkedah, gamma = 8^(-3:10), cost = 8^(-3:10),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmkedah19)
plot(tuned_parametersmkedah19)
tunedmodelmkedah19 <- tuned_parametersmkedah19$best.model
tunedmodelmkedah19
pmkedah19svmtuned = predict(tunedmodelmkedah19, mkedah)
pmkedah19tuned = data.frame(mkedah,Prediction = pmkedah19svmtuned)
pmkedah19tuned #With error margin of 1.282382


#Regression with SVM
mkedah23svm = svm(Prediction~Percentage.1,pmkedah19)

#Predict using SVM regression
pmkedah23svm = predict(mkedah23svm, pmkedah19)

pmkedah23 = data.frame(pmkedah19,Prediction = pmkedah23svm)
pmkedah23 #Prediction for Kedah Male

tuned_parametersmkedah23 <- tune.svm(pmkedah19tuned$Prediction~pmkedah19tuned$Percentage.1, data = mkedah, gamma = 10^(-10:10), cost = 10^(-10:10),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmkedah23)
plot(tuned_parametersmkedah23)
tunedmodelmkedah23 <- tuned_parametersmkedah23$best.model
tunedmodelmkedah23
pmkedah23svmtuned = predict(tunedmodelmkedah23, mkedah)
pmkedah23tuned = data.frame(pmkedah19tuned,Prediction = pmkedah23svmtuned)
pmkedah23tuned #With error margin of 0.06692737


fkedah = data.frame(fkedah11,fkedah15)
fkedah

#Regression with SVM
fkedah19svm = svm(Percentage.1~Percentage, fkedah)

#Predict using SVM regression
pfkedah19svm = predict(fkedah19svm, fkedah)

pfkedah19 = data.frame(fkedah,Prediction = pfkedah19svm)
pfkedah19

tuned_parametersfkedah19 <- tune.svm(fkedah$Percentage.1~fkedah$Percentage, data = fkedah, gamma = 3^(-3:10), cost = 3^(-3:10),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfkedah19)
plot(tuned_parametersfkedah19)
tunedmodelfkedah19 <- tuned_parametersfkedah19$best.model
tunedmodelfkedah19
pfkedah19svmtuned = predict(tunedmodelfkedah19, fkedah)
pfkedah19tuned = data.frame(fkedah,Prediction = pfkedah19svmtuned)
pfkedah19tuned #With error margin of 40.40544


#Regression with SVM
fkedah23svm = svm(Prediction~Percentage.1,pfkedah19)

#Predict using SVM regression
pfkedah23svm = predict(fkedah23svm, pfkedah19)

pfkedah23 = data.frame(pfkedah19,Prediction = pfkedah23svm)
pfkedah23 #Prediction for Kedah Female

tuned_parametersfkedah23 <- tune.svm(pfkedah19tuned$Prediction~pfkedah19tuned$Percentage.1, data = fkedah, gamma = 10^(-10:10), cost = 10^(-10:10),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfkedah23)
plot(tuned_parametersfkedah23)
tunedmodelfkedah23 <- tuned_parametersfkedah23$best.model
tunedmodelfkedah23
pfkedah23svmtuned = predict(tunedmodelfkedah23, fkedah)
pfkedah23tuned = data.frame(pfkedah19tuned,Prediction = pfkedah23svmtuned)
pfkedah23tuned #With error margin of 0.6323925


mkelantan = data.frame(mkelantan11,mkelantan15)
mkelantan

#Regression with SVM
mkelantan19svm = svm(Percentage.1~Percentage, mkelantan)

#Predict using SVM regression
pmkelantan19svm = predict(mkelantan19svm, mkelantan)

pmkelantan19 = data.frame(mkelantan,Prediction = pmkelantan19svm)
pmkelantan19

tuned_parametersmkelantan19 <- tune.svm(mkelantan$Percentage.1~mkelantan$Percentage, data = mkelantan, gamma = 10^(-3:10), cost = 10^(-3:10),
                                        tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmkelantan19)
plot(tuned_parametersmkelantan19)
tunedmodelmkelantan19 <- tuned_parametersmkelantan19$best.model
tunedmodelmkelantan19
pmkelantan19svmtuned = predict(tunedmodelmkelantan19, mkelantan)
pmkelantan19tuned = data.frame(mkelantan,Prediction = pmkelantan19svmtuned)
pmkelantan19tuned #With error margin of 1.004277


#Regression with SVM
mkelantan23svm = svm(Prediction~Percentage.1,pmkelantan19)

#Predict using SVM regression
pmkelantan23svm = predict(mkelantan23svm, pmkelantan19)

pmkelantan23 = data.frame(pmkelantan19,Prediction = pmkelantan23svm)
pmkelantan23 #Prediction for Kelantan Male

tuned_parametersmkelantan23 <- tune.svm(pmkelantan19tuned$Prediction~pmkelantan19tuned$Percentage.1, data = mkelantan, gamma = 10^(-10:10), cost = 10^(-10:10),
                                        tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmkelantan23)
plot(tuned_parametersmkelantan23)
tunedmodelmkelantan23 <- tuned_parametersmkelantan23$best.model
tunedmodelmkelantan23
pmkelantan23svmtuned = predict(tunedmodelmkelantan23, mkelantan)
pmkelantan23tuned = data.frame(pmkelantan19tuned,Prediction = pmkelantan23svmtuned)
pmkelantan23tuned #With error margin of 0.7069841


fkelantan = data.frame(fkelantan11,fkelantan15)
fkelantan

#Regression with SVM
fkelantan19svm = svm(Percentage.1~Percentage, fkelantan)

#Predict using SVM regression
pfkelantan19svm = predict(fkelantan19svm, fkelantan)

pfkelantan19 = data.frame(fkelantan,Prediction = pfkelantan19svm)
pfkelantan19

tuned_parametersfkelantan19 <- tune.svm(fkelantan$Percentage.1~fkelantan$Percentage, data = fkelantan, gamma = 3^(-3:10), cost = 3^(-3:10),
                                        tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfkelantan19)
plot(tuned_parametersfkelantan19)
tunedmodelfkelantan19 <- tuned_parametersfkelantan19$best.model
tunedmodelfkelantan19
pfkelantan19svmtuned = predict(tunedmodelfkelantan19, fkelantan)
pfkelantan19tuned = data.frame(fkelantan,Prediction = pfkelantan19svmtuned)
pfkelantan19tuned #With error margin of 2.17534


#Regression with SVM
fkelantan23svm = svm(Prediction~Percentage.1,pfkelantan19)

#Predict using SVM regression
pfkelantan23svm = predict(fkelantan23svm, pfkelantan19)

pfkelantan23 = data.frame(pfkelantan19,Prediction = pfkelantan23svm)
pfkelantan23 #Prediction for Kelantan Female

tuned_parametersfkelantan23 <- tune.svm(pfkelantan19tuned$Prediction~pfkelantan19tuned$Percentage.1, data = fkelantan, gamma = 10^(-10:10), cost = 10^(-10:10),
                                        tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfkelantan23)
plot(tuned_parametersfkelantan23)
tunedmodelfkelantan23 <- tuned_parametersfkelantan23$best.model
tunedmodelfkelantan23
pfkelantan23svmtuned = predict(tunedmodelfkelantan23, fkelantan)
pfkelantan23tuned = data.frame(pfkelantan19tuned,Prediction = pfkelantan23svmtuned)
pfkelantan23tuned #With error margin of 0.9900839


mpinang = data.frame(mpinang11,mpinang15)
mpinang

#Regression with SVM
mpinang19svm = svm(Percentage.1~Percentage, mpinang)

#Predict using SVM regression
pmpinang19svm = predict(mpinang19svm, mpinang)

pmpinang19 = data.frame(mpinang,Prediction = pmpinang19svm)
pmpinang19

tuned_parametersmpinang19 <- tune.svm(mpinang$Percentage.1~mpinang$Percentage, data = mpinang, gamma = 10^(-3:10), cost = 10^(-3:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmpinang19)
plot(tuned_parametersmpinang19)
tunedmodelmpinang19 <- tuned_parametersmpinang19$best.model
tunedmodelmpinang19
pmpinang19svmtuned = predict(tunedmodelmpinang19, mpinang)
pmpinang19tuned = data.frame(mpinang,Prediction = pmpinang19svmtuned)
pmpinang19tuned #With error margin of 6.842328


#Regression with SVM
mpinang23svm = svm(Prediction~Percentage.1,pmpinang19)

#Predict using SVM regression
pmpinang23svm = predict(mpinang23svm, pmpinang19)

pmpinang23 = data.frame(pmpinang19,Prediction = pmpinang23svm)
pmpinang23 #Prediction for Pinang Male

tuned_parametersmpinang23 <- tune.svm(pmpinang19tuned$Prediction~pmpinang19tuned$Percentage.1, data = mpinang, gamma = 10^(-10:10), cost = 10^(-10:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmpinang23)
plot(tuned_parametersmpinang23)
tunedmodelmpinang23 <- tuned_parametersmpinang23$best.model
tunedmodelmpinang23
pmpinang23svmtuned = predict(tunedmodelmpinang23, mpinang)
pmpinang23tuned = data.frame(pmpinang19tuned,Prediction = pmpinang23svmtuned)
pmpinang23tuned #With error margin of 0.02816644


fpinang = data.frame(fpinang11,fpinang15)
fpinang

#Regression with SVM
fpinang19svm = svm(Percentage.1~Percentage, fpinang)

#Predict using SVM regression
pfpinang19svm = predict(fpinang19svm, fpinang)

pfpinang19 = data.frame(fpinang,Prediction = pfpinang19svm)
pfpinang19

tuned_parametersfpinang19 <- tune.svm(fpinang$Percentage.1~fpinang$Percentage, data = fpinang, gamma = 10^(-3:10), cost = 10^(-3:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfpinang19)
plot(tuned_parametersfpinang19)
tunedmodelfpinang19 <- tuned_parametersfpinang19$best.model
tunedmodelfpinang19
pfpinang19svmtuned = predict(tunedmodelfpinang19, fpinang)
pfpinang19tuned = data.frame(fpinang,Prediction = pfpinang19svmtuned)
pfpinang19tuned #With error margin of 9.591808


#Regression with SVM
fpinang23svm = svm(Prediction~Percentage.1,pfpinang19)

#Predict using SVM regression
pfpinang23svm = predict(fpinang23svm, pfpinang19)

pfpinang23 = data.frame(pfpinang19,Prediction = pfpinang23svm)
pfpinang23 #Prediction for Pinang Female

tuned_parametersfpinang23 <- tune.svm(pfpinang19tuned$Prediction~pfpinang19tuned$Percentage.1, data = fpinang, gamma = 8^(-10:10), cost = 8^(-10:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfpinang23)
plot(tuned_parametersfpinang23)
tunedmodelfpinang23 <- tuned_parametersfpinang23$best.model
tunedmodelfpinang23
pfpinang23svmtuned = predict(tunedmodelfpinang23, fpinang)
pfpinang23tuned = data.frame(pfpinang19tuned,Prediction = pfpinang23svmtuned)
pfpinang23tuned #With error margin of 1.64059


msabah = data.frame(msabah11,msabah15)
msabah

#Regression with SVM
msabah19svm = svm(Percentage.1~Percentage, msabah)

#Predict using SVM regression
pmsabah19svm = predict(msabah19svm, msabah)

pmsabah19 = data.frame(msabah,Prediction = pmsabah19svm)
pmsabah19

tuned_parametersmsabah19 <- tune.svm(msabah$Percentage.1~msabah$Percentage, data = msabah, gamma = 10^(-10:10), cost = 10^(-10:10),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmsabah19)
plot(tuned_parametersmsabah19)
tunedmodelmsabah19 <- tuned_parametersmsabah19$best.model
tunedmodelmsabah19
pmsabah19svmtuned = predict(tunedmodelmsabah19, msabah)
pmsabah19tuned = data.frame(msabah,Prediction = pmsabah19svmtuned)
pmsabah19tuned #With error margin of 1.843431


#Regression with SVM
msabah23svm = svm(Prediction~Percentage.1,pmsabah19)

#Predict using SVM regression
pmsabah23svm = predict(msabah23svm, pmsabah19)

pmsabah23 = data.frame(pmsabah19,Prediction = pmsabah23svm)
pmsabah23 #Prediction for Sabah Male

tuned_parametersmsabah23 <- tune.svm(pmsabah19tuned$Prediction~pmsabah19tuned$Percentage.1, data = msabah, gamma = 10^(-10:10), cost = 10^(-3:10),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmsabah23)
plot(tuned_parametersmsabah23)
tunedmodelmsabah23 <- tuned_parametersmsabah23$best.model
tunedmodelmsabah23
pmsabah23svmtuned = predict(tunedmodelmsabah23, msabah)
pmsabah23tuned = data.frame(pmsabah19tuned,Prediction = pmsabah23svmtuned)
pmsabah23tuned #With error margin of 2.917499


fsabah = data.frame(fsabah11,fsabah15)
fsabah

#Regression with SVM
fsabah19svm = svm(Percentage.1~Percentage, fsabah)

#Predict using SVM regression
pfsabah19svm = predict(fsabah19svm, fsabah)

pfsabah19 = data.frame(fsabah,Prediction = pfsabah19svm)
pfsabah19

tuned_parametersfsabah19 <- tune.svm(fsabah$Percentage.1~fsabah$Percentage, data = fsabah, gamma = 8^(-10:10), cost = 8^(-3:10),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfsabah19)
plot(tuned_parametersfsabah19)
tunedmodelfsabah19 <- tuned_parametersfsabah19$best.model
tunedmodelfsabah19
pfsabah19svmtuned = predict(tunedmodelfsabah19, fsabah)
pfsabah19tuned = data.frame(fsabah,Prediction = pfsabah19svmtuned)
pfsabah19tuned #With error margin of 8.602615


#Regression with SVM
fsabah23svm = svm(Prediction~Percentage.1,pfsabah19)

#Predict using SVM regression
pfsabah23svm = predict(fsabah23svm, pfsabah19)

pfsabah23 = data.frame(pfsabah19,Prediction = pfsabah23svm)
pfsabah23 #Prediction for Sabah Female

tuned_parametersfsabah23 <- tune.svm(pfsabah19tuned$Prediction~pfsabah19tuned$Percentage.1, data = fsabah, gamma = 10^(-10:10), cost = 10^(-10:10),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfsabah23)
plot(tuned_parametersfsabah23)
tunedmodelfsabah23 <- tuned_parametersfsabah23$best.model
tunedmodelfsabah23
pfsabah23svmtuned = predict(tunedmodelfsabah23, fsabah)
pfsabah23tuned = data.frame(pfsabah19tuned,Prediction = pfsabah23svmtuned)
pfsabah23tuned #With error margin of 2.168973


mSarawak = data.frame(mSarawak11,mSarawak15)
mSarawak

#Regression with SVM
mSarawak19svm = svm(Percentage.1~Percentage, mSarawak)

#Predict using SVM regression
pmSarawak19svm = predict(mSarawak19svm, mSarawak)

pmSarawak19 = data.frame(mSarawak,Prediction = pmSarawak19svm)
pmSarawak19

tuned_parametersmSarawak19 <- tune.svm(mSarawak$Percentage.1~mSarawak$Percentage, data = mSarawak, gamma = 5^(-3:10), cost = 5^(-3:10),
                                       tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmSarawak19)
plot(tuned_parametersmSarawak19)
tunedmodelmSarawak19 <- tuned_parametersmSarawak19$best.model
tunedmodelmSarawak19
pmSarawak19svmtuned = predict(tunedmodelmSarawak19, mSarawak)
pmSarawak19tuned = data.frame(mSarawak,Prediction = pmSarawak19svmtuned)
pmSarawak19tuned #With error margin of 16.87623


#Regression with SVM
mSarawak23svm = svm(Prediction~Percentage.1,pmSarawak19)

#Predict using SVM regression
pmSarawak23svm = predict(mSarawak23svm, pmSarawak19)

pmSarawak23 = data.frame(pmSarawak19,Prediction = pmSarawak23svm)
pmSarawak23 #Prediction for Sarawak Male

tuned_parametersmSarawak23 <- tune.svm(pmSarawak19tuned$Prediction~pmSarawak19tuned$Percentage.1, data = mSarawak, gamma = 10^(-10:10), cost = 10^(-10:10),
                                       tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmSarawak23)
plot(tuned_parametersmSarawak23)
tunedmodelmSarawak23 <- tuned_parametersmSarawak23$best.model
tunedmodelmSarawak23
pmSarawak23svmtuned = predict(tunedmodelmSarawak23, mSarawak)
pmSarawak23tuned = data.frame(pmSarawak19tuned,Prediction = pmSarawak23svmtuned)
pmSarawak23tuned #With error margin of 0.1866927


fSarawak = data.frame(fSarawak11,fSarawak15)
fSarawak

#Regression with SVM
fSarawak19svm = svm(Percentage.1~Percentage, fSarawak)

#Predict using SVM regression
pfSarawak19svm = predict(fSarawak19svm, fSarawak)

pfSarawak19 = data.frame(fSarawak,Prediction = pfSarawak19svm)
pfSarawak19

tuned_parametersfSarawak19 <- tune.svm(fSarawak$Percentage.1~fSarawak$Percentage, data = fSarawak, gamma = 5^(-3:10), cost = 5^(-3:10),
                                       tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfSarawak19)
plot(tuned_parametersfSarawak19)
tunedmodelfSarawak19 <- tuned_parametersfSarawak19$best.model
tunedmodelfSarawak19
pfSarawak19svmtuned = predict(tunedmodelfSarawak19, fSarawak)
pfSarawak19tuned = data.frame(fSarawak,Prediction = pfSarawak19svmtuned)
pfSarawak19tuned #With error margin of 27.26856


#Regression with SVM
fSarawak23svm = svm(Prediction~Percentage.1,pfSarawak19)

#Predict using SVM regression
pfSarawak23svm = predict(fSarawak23svm, pfSarawak19)

pfSarawak23 = data.frame(pfSarawak19,Prediction = pfSarawak23svm)
pfSarawak23 #Prediction for Sarawak Female

tuned_parametersfSarawak23 <- tune.svm(pfSarawak19tuned$Prediction~pfSarawak19tuned$Percentage.1, data = fSarawak, gamma = 10^(-10:10), cost = 10^(-10:10),
                                       tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfSarawak23)
plot(tuned_parametersfSarawak23)
tunedmodelfSarawak23 <- tuned_parametersfSarawak23$best.model
tunedmodelfSarawak23
pfSarawak23svmtuned = predict(tunedmodelfSarawak23, fSarawak)
pfSarawak23tuned = data.frame(pfSarawak19tuned,Prediction = pfSarawak23svmtuned)
pfSarawak23tuned #With error margin of 14.32729


mselangor = data.frame(mselangor11,mselangor15)
mselangor

#Regression with SVM
mselangor19svm = svm(Percentage.1~Percentage, mselangor)

#Predict using SVM regression
pmselangor19svm = predict(mselangor19svm, mselangor)

pmselangor19 = data.frame(mselangor,Prediction = pmselangor19svm)
pmselangor19

tuned_parametersmselangor19 <- tune.svm(mselangor$Percentage.1~mselangor$Percentage, data = mselangor, gamma = 10^(-10:10), cost = 10^(-10:10),
                                        tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmselangor19)
plot(tuned_parametersmselangor19)
tunedmodelmselangor19 <- tuned_parametersmselangor19$best.model
tunedmodelmselangor19
pmselangor19svmtuned = predict(tunedmodelmselangor19, mselangor)
pmselangor19tuned = data.frame(mselangor,Prediction = pmselangor19svmtuned)
pmselangor19tuned #With error margin of 11.45525


#Regression with SVM
mselangor23svm = svm(Prediction~Percentage.1,pmselangor19)

#Predict using SVM regression
pmselangor23svm = predict(mselangor23svm, pmselangor19)

pmselangor23 = data.frame(pmselangor19,Prediction = pmselangor23svm)
pmselangor23 #Prediction for Selangor Male

tuned_parametersmselangor23 <- tune.svm(pmselangor19tuned$Prediction~pmselangor19tuned$Percentage.1, data = mselangor, gamma = 10^(-10:10), cost = 10^(-10:10),
                                        tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmselangor23)
plot(tuned_parametersmselangor23)
tunedmodelmselangor23 <- tuned_parametersmselangor23$best.model
tunedmodelmselangor23
pmselangor23svmtuned = predict(tunedmodelmselangor23, mselangor)
pmselangor23tuned = data.frame(pmselangor19tuned,Prediction = pmselangor23svmtuned)
pmselangor23tuned #With error margin of 1.828706


fselangor = data.frame(fselangor11,fselangor15)
fselangor

#Regression with SVM
fselangor19svm = svm(Percentage.1~Percentage, fselangor)

#Predict using SVM regression
pfselangor19svm = predict(fselangor19svm, fselangor)

pfselangor19 = data.frame(fselangor,Prediction = pfselangor19svm)
pfselangor19

tuned_parametersfselangor19 <- tune.svm(fselangor$Percentage.1~fselangor$Percentage, data = fselangor, gamma = 10^(-10:10), cost = 10^(-10:10),
                                        tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfselangor19)
plot(tuned_parametersfselangor19)
tunedmodelfselangor19 <- tuned_parametersfselangor19$best.model
tunedmodelfselangor19
pfselangor19svmtuned = predict(tunedmodelfselangor19, fselangor)
pfselangor19tuned = data.frame(fselangor,Prediction = pfselangor19svmtuned)
pfselangor19tuned #With error margin of 3.027743



#Regression with SVM
fselangor23svm = svm(Prediction~Percentage.1,pfselangor19)

#Predict using SVM regression
pfselangor23svm = predict(fselangor23svm, pfselangor19)

pfselangor23 = data.frame(pfselangor19,Prediction = pfselangor23svm)
pfselangor23 #Prediction for Selangor Female

tuned_parametersfselangor23 <- tune.svm(pfselangor19tuned$Prediction~pfselangor19tuned$Percentage.1, data = fselangor, gamma = 10^(-10:10), cost = 10^(-10:10),
                                        tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfselangor23)
plot(tuned_parametersfselangor23)
tunedmodelfselangor23 <- tuned_parametersfselangor23$best.model
tunedmodelfselangor23
pfselangor23svmtuned = predict(tunedmodelfselangor23, fselangor)
pfselangor23tuned = data.frame(pfselangor19tuned,Prediction = pfselangor23svmtuned)
pfselangor23tuned #With error margin of 0.1570974


mmelaka = data.frame(mmelaka11,mmelaka15)
mmelaka

#Regression with SVM
mmelaka19svm = svm(Percentage.1~Percentage, mmelaka)

#Predict using SVM regression
pmmelaka19svm = predict(mmelaka19svm, mmelaka)

pmmelaka19 = data.frame(mmelaka,Prediction = pmmelaka19svm)
pmmelaka19

tuned_parametersmmelaka19 <- tune.svm(mmelaka$Percentage.1~mmelaka$Percentage, data = mmelaka, gamma = 10^(-10:10), cost = 10^(-3:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmmelaka19)
plot(tuned_parametersmmelaka19)
tunedmodelmmelaka19 <- tuned_parametersmmelaka19$best.model
tunedmodelmmelaka19
pmmelaka19svmtuned = predict(tunedmodelmmelaka19, mmelaka)
pmmelaka19tuned = data.frame(mmelaka,Prediction = pmmelaka19svmtuned)
pmmelaka19tuned #With error margin of 5.763956


#Regression with SVM
mmelaka23svm = svm(Prediction~Percentage.1,pmmelaka19)

#Predict using SVM regression
pmmelaka23svm = predict(mmelaka23svm, pmmelaka19)

pmmelaka23 = data.frame(pmmelaka19,Prediction = pmmelaka23svm)
pmmelaka23 #Prediction for Melaka Male

tuned_parametersmmelaka23 <- tune.svm(pmmelaka19tuned$Prediction~pmmelaka19tuned$Percentage.1, data = mmelaka, gamma = 10^(-10:10), cost = 10^(-10:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmmelaka23)
plot(tuned_parametersmmelaka23)
tunedmodelmmelaka23 <- tuned_parametersmmelaka23$best.model
tunedmodelmmelaka23
pmmelaka23svmtuned = predict(tunedmodelmmelaka23, mmelaka)
pmmelaka23tuned = data.frame(pmmelaka19tuned,Prediction = pmmelaka23svmtuned)
pmmelaka23tuned #With error margin of 1.35327


fmelaka = data.frame(fmelaka11,fmelaka15)
fmelaka

#Regression with SVM
fmelaka19svm = svm(Percentage.1~Percentage, fmelaka)

#Predict using SVM regression
pfmelaka19svm = predict(fmelaka19svm, fmelaka)

pfmelaka19 = data.frame(fmelaka,Prediction = pfmelaka19svm)
pfmelaka19

tuned_parametersfmelaka19 <- tune.svm(fmelaka$Percentage.1~fmelaka$Percentage, data = fmelaka, gamma = 7^(-3:10), cost = 7^(-3:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfmelaka19)
plot(tuned_parametersfmelaka19)
tunedmodelfmelaka19 <- tuned_parametersfmelaka19$best.model
tunedmodelfmelaka19
pfmelaka19svmtuned = predict(tunedmodelfmelaka19, fmelaka)
pfmelaka19tuned = data.frame(fmelaka,Prediction = pfmelaka19svmtuned)
pfmelaka19tuned #With error margin of 27.17872


#Regression with SVM
fmelaka23svm = svm(Prediction~Percentage.1,pfmelaka19)

#Predict using SVM regression
pfmelaka23svm = predict(fmelaka23svm, pfmelaka19)

pfmelaka23 = data.frame(pfmelaka19,Prediction = pfmelaka23svm)
pfmelaka23 #Prediction for Melaka Female

tuned_parametersfmelaka23 <- tune.svm(pfmelaka19tuned$Prediction~pfmelaka19tuned$Percentage.1, data = fmelaka, gamma = 10^(-10:10), cost = 10^(-10:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfmelaka23)
plot(tuned_parametersfmelaka23)
tunedmodelfmelaka23 <- tuned_parametersfmelaka23$best.model
tunedmodelfmelaka23
pfmelaka23svmtuned = predict(tunedmodelfmelaka23, fmelaka)
pfmelaka23tuned = data.frame(pfmelaka19tuned,Prediction = pfmelaka23svmtuned)
pfmelaka23tuned #With error margin of 0.5649613


mnsembilan = data.frame(mnsembilan11,mnsembilan15)
mnsembilan

#Regression with SVM
mnsembilan19svm = svm(Percentage.1~Percentage, mnsembilan)

#Predict using SVM regression
pmnsembilan19svm = predict(mnsembilan19svm, mnsembilan)

pmnsembilan19 = data.frame(mnsembilan,Prediction = pmnsembilan19svm)
pmnsembilan19

tuned_parametersmnsembilan19 <- tune.svm(mnsembilan$Percentage.1~mnsembilan$Percentage, data = mnsembilan, gamma = 10^(-10:10), cost = 10^(-10:10),
                                         tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmnsembilan19)
plot(tuned_parametersmnsembilan19)
tunedmodelmnsembilan19 <- tuned_parametersmnsembilan19$best.model
tunedmodelmnsembilan19
pmnsembilan19svmtuned = predict(tunedmodelmnsembilan19, mnsembilan)
pmnsembilan19tuned = data.frame(mnsembilan,Prediction = pmnsembilan19svmtuned)
pmnsembilan19tuned #With error margin of 8.385733


#Regression with SVM
mnsembilan23svm = svm(Prediction~Percentage.1,pmnsembilan19)

#Predict using SVM regression
pmnsembilan23svm = predict(mnsembilan23svm, pmnsembilan19)

pmnsembilan23 = data.frame(pmnsembilan19,Prediction = pmnsembilan23svm)
pmnsembilan23 #Prediction for Nsembilan Male

tuned_parametersmnsembilan23 <- tune.svm(pmnsembilan19tuned$Prediction~pmnsembilan19tuned$Percentage.1, data = mnsembilan, gamma = 10^(-10:10), cost = 10^(-10:10),
                                         tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmnsembilan23)
plot(tuned_parametersmnsembilan23)
tunedmodelmnsembilan23 <- tuned_parametersmnsembilan23$best.model
tunedmodelmnsembilan23
pmnsembilan23svmtuned = predict(tunedmodelmnsembilan23, mnsembilan)
pmnsembilan23tuned = data.frame(pmnsembilan19tuned,Prediction = pmnsembilan23svmtuned)
pmnsembilan23tuned #With error margin of 0.08147094


fnsembilan = data.frame(fnsembilan11,fnsembilan15)
fnsembilan

#Regression with SVM
fnsembilan19svm = svm(Percentage.1~Percentage, fnsembilan)

#Predict using SVM regression
pfnsembilan19svm = predict(fnsembilan19svm, fnsembilan)

pfnsembilan19 = data.frame(fnsembilan,Prediction = pfnsembilan19svm)
pfnsembilan19

tuned_parametersfnsembilan19 <- tune.svm(fnsembilan$Percentage.1~fnsembilan$Percentage, data = fnsembilan, gamma = 10^(-10:10), cost = 10^(-10:10),
                                         tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfnsembilan19)
plot(tuned_parametersfnsembilan19)
tunedmodelfnsembilan19 <- tuned_parametersfnsembilan19$best.model
tunedmodelfnsembilan19
pfnsembilan19svmtuned = predict(tunedmodelfnsembilan19, fnsembilan)
pfnsembilan19tuned = data.frame(fnsembilan,Prediction = pfnsembilan19svmtuned)
pfnsembilan19tuned #With error margin of 13.63453


#Regression with SVM
fnsembilan23svm = svm(Prediction~Percentage.1,pfnsembilan19)

#Predict using SVM regression
pfnsembilan23svm = predict(fnsembilan23svm, pfnsembilan19)

pfnsembilan23 = data.frame(pfnsembilan19,Prediction = pfnsembilan23svm)
pfnsembilan23 #Prediction for Nsembilan Female

tuned_parametersfnsembilan23 <- tune.svm(pfnsembilan19tuned$Prediction~pfnsembilan19tuned$Percentage.1, data = fnsembilan, gamma = 10^(-10:10), cost = 10^(-10:10),
                                         tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfnsembilan23)
plot(tuned_parametersfnsembilan23)
tunedmodelfnsembilan23 <- tuned_parametersfnsembilan23$best.model
tunedmodelfnsembilan23
pfnsembilan23svmtuned = predict(tunedmodelfnsembilan23, fnsembilan)
pfnsembilan23tuned = data.frame(pfnsembilan19tuned,Prediction = pfnsembilan23svmtuned)
pfnsembilan23tuned #With error margin of 1.049932


mperak = data.frame(mperak11,mperak15)
mperak

#Regression with SVM
mperak19svm = svm(Percentage.1~Percentage, mperak)

#Predict using SVM regression
pmperak19svm = predict(mperak19svm, mperak)

pmperak19 = data.frame(mperak,Prediction = pmperak19svm)
pmperak19

tuned_parametersmperak19 <- tune.svm(mperak$Percentage.1~mperak$Percentage, data = mperak, gamma = 10^(-3:10), cost = 10^(-3:10),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmperak19)
plot(tuned_parametersmperak19)
tunedmodelmperak19 <- tuned_parametersmperak19$best.model
tunedmodelmperak19
pmperak19svmtuned = predict(tunedmodelmperak19, mperak)
pmperak19tuned = data.frame(mperak,Prediction = pmperak19svmtuned)
pmperak19tuned #With error margin of 8.610734


#Regression with SVM
mperak23svm = svm(Prediction~Percentage.1,pmperak19)

#Predict using SVM regression
pmperak23svm = predict(mperak23svm, pmperak19)

pmperak23 = data.frame(pmperak19,Prediction = pmperak23svm)
pmperak23 #Prediction for Perak Male

tuned_parametersmperak23 <- tune.svm(pmperak19tuned$Prediction~pmperak19tuned$Percentage.1, data = mperak, gamma = 10^(-10:10), cost = 10^(-10:10),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmperak23)
plot(tuned_parametersmperak23)
tunedmodelmperak23 <- tuned_parametersmperak23$best.model
tunedmodelmperak23
pmperak23svmtuned = predict(tunedmodelmperak23, mperak)
pmperak23tuned = data.frame(pmperak19tuned,Prediction = pmperak23svmtuned)
pmperak23tuned #With error margin of 0.232444


fperak = data.frame(fperak11,fperak15)
fperak

#Regression with SVM
fperak19svm = svm(Percentage.1~Percentage, fperak)

#Predict using SVM regression
pfperak19svm = predict(fperak19svm, fperak)

pfperak19 = data.frame(fperak,Prediction = pfperak19svm)
pfperak19

tuned_parametersfperak19 <- tune.svm(fperak$Percentage.1~fperak$Percentage, data = fperak, gamma = 11^(-3:10), cost = 11^(-3:10),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfperak19)
plot(tuned_parametersfperak19)
tunedmodelfperak19 <- tuned_parametersfperak19$best.model
tunedmodelfperak19
pfperak19svmtuned = predict(tunedmodelfperak19, fperak)
pfperak19tuned = data.frame(fperak,Prediction = pfperak19svmtuned)
pfperak19tuned #With error margin of 23.77941


#Regression with SVM
fperak23svm = svm(Prediction~Percentage.1,pfperak19)

#Predict using SVM regression
pfperak23svm = predict(fperak23svm, pfperak19)

pfperak23 = data.frame(pfperak19,Prediction = pfperak23svm)
pfperak23 #Prediction for Perak Female

tuned_parametersfperak23 <- tune.svm(pfperak19tuned$Prediction~pfperak19tuned$Percentage.1, data = fperak, gamma = 10^(-10:10), cost = 10^(-10:10),
                                     tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfperak23)
plot(tuned_parametersfperak23)
tunedmodelfperak23 <- tuned_parametersfperak23$best.model
tunedmodelfperak23
pfperak23svmtuned = predict(tunedmodelfperak23, fperak)
pfperak23tuned = data.frame(pfperak19tuned,Prediction = pfperak23svmtuned)
pfperak23tuned #With error margin of 1.462962


mperlis = data.frame(mperlis11,mperlis15)
mperlis

#Regression with SVM
mperlis19svm = svm(Percentage.1~Percentage, mperlis)

#Predict using SVM regression
pmperlis19svm = predict(mperlis19svm, mperlis)

pmperlis19 = data.frame(mperlis,Prediction = pmperlis19svm)
pmperlis19

tuned_parametersmperlis19 <- tune.svm(mperlis$Percentage.1~mperlis$Percentage, data = mperlis, gamma = 10^(-10:10), cost = 10^(-10:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmperlis19)
plot(tuned_parametersmperlis19)
tunedmodelmperlis19 <- tuned_parametersmperlis19$best.model
tunedmodelmperlis19
pmperlis19svmtuned = predict(tunedmodelmperlis19, mperlis)
pmperlis19tuned = data.frame(mperlis,Prediction = pmperlis19svmtuned)
pmperlis19tuned #With error margin of 16.23784


#Regression with SVM
mperlis23svm = svm(Prediction~Percentage.1,pmperlis19)

#Predict using SVM regression
pmperlis23svm = predict(mperlis23svm, pmperlis19)

pmperlis23 = data.frame(pmperlis19,Prediction = pmperlis23svm)
pmperlis23 #Prediction for Perlis Male

tuned_parametersmperlis23 <- tune.svm(pmperlis19tuned$Prediction~pmperlis19tuned$Percentage.1, data = mperlis, gamma = 10^(-10:10), cost = 10^(-10:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmperlis23)
plot(tuned_parametersmperlis23)
tunedmodelmperlis23 <- tuned_parametersmperlis23$best.model
tunedmodelmperlis23
pmperlis23svmtuned = predict(tunedmodelmperlis23, mperlis)
pmperlis23tuned = data.frame(pmperlis19tuned,Prediction = pmperlis23svmtuned)
pmperlis23tuned #With error margin of 0.1061288


fperlis = data.frame(fperlis11,fperlis15)
fperlis

#Regression with SVM
fperlis19svm = svm(Percentage.1~Percentage, fperlis)

#Predict using SVM regression
pfperlis19svm = predict(fperlis19svm, fperlis)

pfperlis19 = data.frame(fperlis,Prediction = pfperlis19svm)
pfperlis19

tuned_parametersfperlis19 <- tune.svm(fperlis$Percentage.1~fperlis$Percentage, data = fperlis, gamma = 5^(-3:10), cost = 5^(-3:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfperlis19)
plot(tuned_parametersfperlis19)
tunedmodelfperlis19 <- tuned_parametersfperlis19$best.model
tunedmodelfperlis19
pfperlis19svmtuned = predict(tunedmodelfperlis19, fperlis)
pfperlis19tuned = data.frame(fperlis,Prediction = pfperlis19svmtuned)
pfperlis19tuned #With error margin of 20.97742


#Regression with SVM
fperlis23svm = svm(Prediction~Percentage.1,pfperlis19)

#Predict using SVM regression
pfperlis23svm = predict(fperlis23svm, pfperlis19)

pfperlis23 = data.frame(pfperlis19,Prediction = pfperlis23svm)
pfperlis23 #Prediction for Perlis Female

tuned_parametersfperlis23 <- tune.svm(pfperlis19tuned$Prediction~pfperlis19tuned$Percentage.1, data = fperlis, gamma = 5^(-3:10), cost = 5^(-3:10),
                                      tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfperlis23)
plot(tuned_parametersfperlis23)
tunedmodelfperlis23 <- tuned_parametersfperlis23$best.model
tunedmodelfperlis23
pfperlis23svmtuned = predict(tunedmodelfperlis23, fperlis)
pfperlis23tuned = data.frame(pfperlis19tuned,Prediction = pfperlis23svmtuned)
pfperlis23tuned #With error margin of 9.960281



mterengganu = data.frame(mterengganu11,mterengganu15)
mterengganu

#Regression with SVM
mterengganu19svm = svm(Percentage.1~Percentage, mterengganu)

#Predict using SVM regression
pmterengganu19svm = predict(mterengganu19svm, mterengganu)

pmterengganu19 = data.frame(mterengganu,Prediction = pmterengganu19svm)
pmterengganu19

tuned_parametersmterengganu19 <- tune.svm(mterengganu$Percentage.1~mterengganu$Percentage, data = mterengganu, gamma = 10^(-10:10), cost = 10^(-10:10),
                                          tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmterengganu19)
plot(tuned_parametersmterengganu19)
tunedmodelmterengganu19 <- tuned_parametersmterengganu19$best.model
tunedmodelmterengganu19
pmterengganu19svmtuned = predict(tunedmodelmterengganu19, mterengganu)
pmterengganu19tuned = data.frame(mterengganu,Prediction = pmterengganu19svmtuned)
pmterengganu19tuned #With error margin of 1.553051


#Regression with SVM
mterengganu23svm = svm(Prediction~Percentage.1,pmterengganu19)

#Predict using SVM regression
pmterengganu23svm = predict(mterengganu23svm, pmterengganu19)

pmterengganu23 = data.frame(pmterengganu19,Prediction = pmterengganu23svm)
pmterengganu23 #Prediction for Terengganu Male

tuned_parametersmterengganu23 <- tune.svm(pmterengganu19tuned$Prediction~pmterengganu19tuned$Percentage.1, data = mterengganu, gamma = 10^(-10:10), cost = 10^(-10:10),
                                          tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmterengganu23)
plot(tuned_parametersmterengganu23)
tunedmodelmterengganu23 <- tuned_parametersmterengganu23$best.model
tunedmodelmterengganu23
pmterengganu23svmtuned = predict(tunedmodelmterengganu23, mterengganu)
pmterengganu23tuned = data.frame(pmterengganu19tuned,Prediction = pmterengganu23svmtuned)
pmterengganu23tuned #With error margin of 0.07077385


fterengganu = data.frame(fterengganu11,fterengganu15)
fterengganu

#Regression with SVM
fterengganu19svm = svm(Percentage.1~Percentage, fterengganu)

#Predict using SVM regression
pfterengganu19svm = predict(fterengganu19svm, fterengganu)

pfterengganu19 = data.frame(fterengganu,Prediction = pfterengganu19svm)
pfterengganu19

tuned_parametersfterengganu19 <- tune.svm(fterengganu$Percentage.1~fterengganu$Percentage, data = fterengganu, gamma = 10^(-3:10), cost = 10^(-3:10),
                                          tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfterengganu19)
plot(tuned_parametersfterengganu19)
tunedmodelfterengganu19 <- tuned_parametersfterengganu19$best.model
tunedmodelfterengganu19
pfterengganu19svmtuned = predict(tunedmodelfterengganu19, fterengganu)
pfterengganu19tuned = data.frame(fterengganu,Prediction = pfterengganu19svmtuned)
pfterengganu19tuned #With error margin of 16.63389


#Regression with SVM
fterengganu23svm = svm(Prediction~Percentage.1,pfterengganu19)

#Predict using SVM regression
pfterengganu23svm = predict(fterengganu23svm, pfterengganu19)

pfterengganu23 = data.frame(pfterengganu19,Prediction = pfterengganu23svm)
pfterengganu23 #Prediction for Terengganu Female

tuned_parametersfterengganu23 <- tune.svm(pfterengganu19tuned$Prediction~pfterengganu19tuned$Percentage.1, data = fterengganu, gamma = 10^(-10:10), cost = 10^(-10:10),
                                          tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfterengganu23)
plot(tuned_parametersfterengganu23)
tunedmodelfterengganu23 <- tuned_parametersfterengganu23$best.model
tunedmodelfterengganu23
pfterengganu23svmtuned = predict(tunedmodelfterengganu23, fterengganu)
pfterengganu23tuned = data.frame(pfterengganu19tuned,Prediction = pfterengganu23svmtuned)
pfterengganu23tuned #With error margin of 1.048979


mkl = data.frame(mkl11,mkl15)
mkl

#Regression with SVM
mkl19svm = svm(Percentage.1~Percentage, mkl)

#Predict using SVM regression
pmkl19svm = predict(mkl19svm, mkl)

pmkl19 = data.frame(mkl,Prediction = pmkl19svm)
pmkl19

tuned_parametersmkl19 <- tune.svm(mkl$Percentage.1~mkl$Percentage, data = mkl, gamma = 5^(-3:10), cost = 5^(-3:10),
                                  tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmkl19)
plot(tuned_parametersmkl19)
tunedmodelmkl19 <- tuned_parametersmkl19$best.model
tunedmodelmkl19
pmkl19svmtuned = predict(tunedmodelmkl19, mkl)
pmkl19tuned = data.frame(mkl,Prediction = pmkl19svmtuned)
pmkl19tuned #With error margin of 19.18029


#Regression with SVM
mkl23svm = svm(Prediction~Percentage.1,pmkl19)

#Predict using SVM regression
pmkl23svm = predict(mkl23svm, pmkl19)

pmkl23 = data.frame(pmkl19,Prediction = pmkl23svm)
pmkl23 #Prediction for Kl Male

tuned_parametersmkl23 <- tune.svm(pmkl19tuned$Prediction~pmkl19tuned$Percentage.1, data = mkl, gamma = 10^(-10:10), cost = 10^(-10:10),
                                  tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmkl23)
plot(tuned_parametersmkl23)
tunedmodelmkl23 <- tuned_parametersmkl23$best.model
tunedmodelmkl23
pmkl23svmtuned = predict(tunedmodelmkl23, mkl)
pmkl23tuned = data.frame(pmkl19tuned,Prediction = pmkl23svmtuned)
pmkl23tuned #With error margin of 0.7183728


fkl = data.frame(fkl11,fkl15)
fkl

#Regression with SVM
fkl19svm = svm(Percentage.1~Percentage, fkl)

#Predict using SVM regression
pfkl19svm = predict(fkl19svm, fkl)

pfkl19 = data.frame(fkl,Prediction = pfkl19svm)
pfkl19

tuned_parametersfkl19 <- tune.svm(fkl$Percentage.1~fkl$Percentage, data = fkl, gamma = 10^(-10:10), cost = 10^(-10:10),
                                  tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfkl19)
plot(tuned_parametersfkl19)
tunedmodelfkl19 <- tuned_parametersfkl19$best.model
tunedmodelfkl19
pfkl19svmtuned = predict(tunedmodelfkl19, fkl)
pfkl19tuned = data.frame(fkl,Prediction = pfkl19svmtuned)
pfkl19tuned #With error margin of 19.85694


#Regression with SVM
fkl23svm = svm(Prediction~Percentage.1,pfkl19)

#Predict using SVM regression
pfkl23svm = predict(fkl23svm, pfkl19)

pfkl23 = data.frame(pfkl19,Prediction = pfkl23svm)
pfkl23 #Prediction for Kl Female

tuned_parametersfkl23 <- tune.svm(pfkl19tuned$Prediction~pfkl19tuned$Percentage.1, data = fkl, gamma = 10^(-15:3), cost = 10^(-3:15),
                                  tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfkl23)
plot(tuned_parametersfkl23)
tunedmodelfkl23 <- tuned_parametersfkl23$best.model
tunedmodelfkl23
pfkl23svmtuned = predict(tunedmodelfkl23, fkl)
pfkl23tuned = data.frame(pfkl19tuned,Prediction = pfkl23svmtuned)
pfkl23tuned #With error margin of 07.318496


mmsia = data.frame(mmsia11,mmsia15)
mmsia

#Regression with SVM
mmsia19svm = svm(Percentage.1~Percentage, mmsia)

#Predict using SVM regression
pmmsia19svm = predict(mmsia19svm, mmsia)

pmmsia19 = data.frame(mmsia,Prediction = pmmsia19svm)
pmmsia19

tuned_parametersmmsia19 <- tune.svm(mmsia$Percentage.1~mmsia$Percentage, data = mmsia, gamma = 10^(-10:10), cost = 10^(-10:10),
                                    tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmmsia19)
plot(tuned_parametersmmsia19)
tunedmodelmmsia19 <- tuned_parametersmmsia19$best.model
tunedmodelmmsia19
pmmsia19svmtuned = predict(tunedmodelmmsia19, mmsia)
pmmsia19tuned = data.frame(mmsia,Prediction = pmmsia19svmtuned)
pmmsia19tuned #With error margin of 0.6742665


#Regression with SVM
mmsia23svm = svm(Prediction~Percentage.1,pmmsia19)

#Predict using SVM regression
pmmsia23svm = predict(mmsia23svm, pmmsia19)

pmmsia23 = data.frame(pmmsia19,Prediction = pmmsia23svm)
pmmsia23 #Prediction for Msia Male

tuned_parametersmmsia23 <- tune.svm(pmmsia19tuned$Prediction~pmmsia19tuned$Percentage.1, data = mmsia, gamma = 10^(-10:10), cost = 10^(-10:10),
                                    tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersmmsia23)
plot(tuned_parametersmmsia23)
tunedmodelmmsia23 <- tuned_parametersmmsia23$best.model
tunedmodelmmsia23
pmmsia23svmtuned = predict(tunedmodelmmsia23, mmsia)
pmmsia23tuned = data.frame(pmmsia19tuned,Prediction = pmmsia23svmtuned)
pmmsia23tuned #With error margin of 0.4936361


fmsia = data.frame(fmsia11,fmsia15)
fmsia

#Regression with SVM
fmsia19svm = svm(Percentage.1~Percentage, fmsia,type = 'eps-regression')

#Predict using SVM regression
pfmsia19svm = predict(fmsia19svm, fmsia)

pfmsia19 = data.frame(fmsia,Prediction = pfmsia19svm)
pfmsia19

tuned_parametersfmsia19 <- tune.svm(fmsia$Percentage.1~fmsia$Percentage, data = fmsia, gamma = 10^(-10:10), cost = 10^(-10:10),
                                    tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfmsia19)
plot(tuned_parametersfmsia19)
tunedmodelfmsia19 <- tuned_parametersfmsia19$best.model
tunedmodelfmsia19
pfmsia19svmtuned = predict(tunedmodelfmsia19, fmsia)
pfmsia19tuned = data.frame(fmsia,Prediction = pfmsia19svmtuned)
pfmsia19tuned #With error margin of 3.849104


#Regression with SVM
fmsia23svm = svm(Prediction~Percentage.1,pfmsia19)

#Predict using SVM regression
pfmsia23svm = predict(fmsia23svm, pfmsia19)

pfmsia23 = data.frame(pfmsia19,Prediction = pfmsia23svm)
pfmsia23 #Prediction for Msia Female

tuned_parametersfmsia23 <- tune.svm(pfmsia19tuned$Prediction~pfmsia19tuned$Percentage.1, data = fmsia, gamma = 10^(-10:10), cost = 10^(-10:10),
                                    tunecontrol = tune.control(sampling = "cross",cross=3))
summary(tuned_parametersfmsia23)
plot(tuned_parametersfmsia23)
tunedmodelfmsia23 <- tuned_parametersfmsia23$best.model
tunedmodelfmsia23
pfmsia23svmtuned = predict(tunedmodelfmsia23, fmsia)
pfmsia23tuned = data.frame(pfmsia19tuned,Prediction = pfmsia23svmtuned)
pfmsia23tuned #With error margin of 0.3765941


#Regression with LM
mjohor19LM = lm(formula = Percentage.1~Percentage+Year, data = mjohor)

#Predict using LM regression
pmjohor19LM = predict(mjohor19LM, mjohor)

pmjohor19LM = data.frame(mjohor,Prediction = pmjohor19LM)
pmjohor19LM

#Regression with LM
mjohor23LM = lm(formula = Prediction~Percentage.1+Year, data = pmjohor19LM)

#Predict using LM regression
pmjohor23LM = predict(mjohor23LM, pmjohor19LM)

pmjohor23LM = data.frame(pmjohor19LM,Prediction = pmjohor23LM)
pmjohor23LM #Prediction for Johor Male

#Regression with LM
fjohor19LM = lm(formula = Percentage.1~Percentage+Year, data = fjohor)

#Predict using LM regression
pfjohor19LM = predict(fjohor19LM, fjohor)

pfjohor19LM = data.frame(fjohor,Prediction = pfjohor19LM)
pfjohor19LM

#Regression with LM
fjohor23LM = lm(formula = Prediction~Percentage.1+Year, data = pfjohor19LM)

#Predict using LM regression
pfjohor23LM = predict(fjohor23LM, pfjohor19LM)

pfjohor23LM = data.frame(pfjohor19LM,Prediction = pfjohor23LM)
pfjohor23LM #Prediction for Johor Female

#Regression with LM
mpahang19LM = lm(formula = Percentage.1~Percentage+Year, data = mpahang)

#Predict using LM regression
pmpahang19LM = predict(mpahang19LM, mpahang)

pmpahang19LM = data.frame(mpahang,Prediction = pmpahang19LM)
pmpahang19LM

#Regression with LM
mpahang23LM = lm(formula = Prediction~Percentage.1+Year, data = pmpahang19LM)

#Predict using LM regression
pmpahang23LM = predict(mpahang23LM, pmpahang19LM)

pmpahang23LM = data.frame(pmpahang19LM,Prediction = pmpahang23LM)
pmpahang23LM #Prediction for Pahang Male

#Regression with LM
fpahang19LM = lm(formula = Percentage.1~Percentage+Year, data = fpahang)

#Predict using LM regression
pfpahang19LM = predict(fpahang19LM, fpahang)

pfpahang19LM = data.frame(fpahang,Prediction = pfpahang19LM)
pfpahang19LM

#Regression with LM
fpahang23LM = lm(formula = Prediction~Percentage.1+Year, data = pfpahang19LM)

#Predict using LM regression
pfpahang23LM = predict(fpahang23LM, pfpahang19LM)

pfpahang23LM = data.frame(pfpahang19LM,Prediction = pfpahang23LM)
pfpahang23LM #Prediction for Pahang Female

#Regression with LM
mpj19LM = lm(formula = Percentage.1~Percentage+Year, data = mpj)

#Predict using LM regression
pmpj19LM = predict(mpj19LM, mpj)

pmpj19LM = data.frame(mpj,Prediction = pmpj19LM)
pmpj19LM

#Regression with LM
mpj23LM = lm(formula = Prediction~Percentage.1+Year, data = pmpj19LM)

#Predict using LM regression
pmpj23LM = predict(mpj23LM, pmpj19LM)

pmpj23LM = data.frame(pmpj19LM,Prediction = pmpj23LM)
pmpj23LM #Prediction for Pj Male

#Regression with LM
fpj19LM = lm(formula = Percentage.1~Percentage+Year, data = fpj)

#Predict using LM regression
pfpj19LM = predict(fpj19LM, fpj)

pfpj19LM = data.frame(fpj,Prediction = pfpj19LM)
pfpj19LM

#Regression with LM
fpj23LM = lm(formula = Prediction~Percentage.1+Year, data = pfpj19LM)

#Predict using LM regression
pfpj23LM = predict(fpj23LM, pfpj19LM)

pfpj23LM = data.frame(pfpj19LM,Prediction = pfpj23LM)
pfpj23LM #Prediction for Pj Female

#Regression with LM
mkedah19LM = lm(formula = Percentage.1~Percentage+Year, data = mkedah)

#Predict using LM regression
pmkedah19LM = predict(mkedah19LM, mkedah)

pmkedah19LM = data.frame(mkedah,Prediction = pmkedah19LM)
pmkedah19LM

#Regression with LM
mkedah23LM = lm(formula = Prediction~Percentage.1+Year, data = pmkedah19LM)

#Predict using LM regression
pmkedah23LM = predict(mkedah23LM, pmkedah19LM)

pmkedah23LM = data.frame(pmkedah19LM,Prediction = pmkedah23LM)
pmkedah23LM #Prediction for Kedah Male

#Regression with LM
fkedah19LM = lm(formula = Percentage.1~Percentage+Year, data = fkedah)

#Predict using LM regression
pfkedah19LM = predict(fkedah19LM, fkedah)

pfkedah19LM = data.frame(fkedah,Prediction = pfkedah19LM)
pfkedah19LM

#Regression with LM
fkedah23LM = lm(formula = Prediction~Percentage.1+Year, data = pfkedah19LM)

#Predict using LM regression
pfkedah23LM = predict(fkedah23LM, pfkedah19LM)

pfkedah23LM = data.frame(pfkedah19LM,Prediction = pfkedah23LM)
pfkedah23LM #Prediction for Kedah Female

#Regression with LM
mkelantan19LM = lm(formula = Percentage.1~Percentage+Year, data = mkelantan)

#Predict using LM regression
pmkelantan19LM = predict(mkelantan19LM, mkelantan)

pmkelantan19LM = data.frame(mkelantan,Prediction = pmkelantan19LM)
pmkelantan19LM

#Regression with LM
mkelantan23LM = lm(formula = Prediction~Percentage.1+Year, data = pmkelantan19LM)

#Predict using LM regression
pmkelantan23LM = predict(mkelantan23LM, pmkelantan19LM)

pmkelantan23LM = data.frame(pmkelantan19LM,Prediction = pmkelantan23LM)
pmkelantan23LM #Prediction for Kelantan Male

#Regression with LM
fkelantan19LM = lm(formula = Percentage.1~Percentage+Year, data = fkelantan)

#Predict using LM regression
pfkelantan19LM = predict(fkelantan19LM, fkelantan)

pfkelantan19LM = data.frame(fkelantan,Prediction = pfkelantan19LM)
pfkelantan19LM

#Regression with LM
fkelantan23LM = lm(formula = Prediction~Percentage.1+Year, data = pfkelantan19LM)

#Predict using LM regression
pfkelantan23LM = predict(fkelantan23LM, pfkelantan19LM)

pfkelantan23LM = data.frame(pfkelantan19LM,Prediction = pfkelantan23LM)
pfkelantan23LM #Prediction for Kelantan Female

#Regression with LM
mpinang19LM = lm(formula = Percentage.1~Percentage+Year, data = mpinang)

#Predict using LM regression
pmpinang19LM = predict(mpinang19LM, mpinang)

pmpinang19LM = data.frame(mpinang,Prediction = pmpinang19LM)
pmpinang19LM

#Regression with LM
mpinang23LM = lm(formula = Prediction~Percentage.1+Year, data = pmpinang19LM)

#Predict using LM regression
pmpinang23LM = predict(mpinang23LM, pmpinang19LM)

pmpinang23LM = data.frame(pmpinang19LM,Prediction = pmpinang23LM)
pmpinang23LM #Prediction for Pinang Male

#Regression with LM
fpinang19LM = lm(formula = Percentage.1~Percentage+Year, data = fpinang)

#Predict using LM regression
pfpinang19LM = predict(fpinang19LM, fpinang)

pfpinang19LM = data.frame(fpinang,Prediction = pfpinang19LM)
pfpinang19LM

#Regression with LM
fpinang23LM = lm(formula = Prediction~Percentage.1+Year, data = pfpinang19LM)

#Predict using LM regression
pfpinang23LM = predict(fpinang23LM, pfpinang19LM)

pfpinang23LM = data.frame(pfpinang19LM,Prediction = pfpinang23LM)
pfpinang23LM #Prediction for Pinang Female

#Regression with LM
msabah19LM = lm(formula = Percentage.1~Percentage+Year, data = msabah)

#Predict using LM regression
pmsabah19LM = predict(msabah19LM, msabah)

pmsabah19LM = data.frame(msabah,Prediction = pmsabah19LM)
pmsabah19LM

#Regression with LM
msabah23LM = lm(formula = Prediction~Percentage.1+Year, data = pmsabah19LM)

#Predict using LM regression
pmsabah23LM = predict(msabah23LM, pmsabah19LM)

pmsabah23LM = data.frame(pmsabah19LM,Prediction = pmsabah23LM)
pmsabah23LM #Prediction for Sabah Male

#Regression with LM
fsabah19LM = lm(formula = Percentage.1~Percentage+Year, data = fsabah)

#Predict using LM regression
pfsabah19LM = predict(fsabah19LM, fsabah)

pfsabah19LM = data.frame(fsabah,Prediction = pfsabah19LM)
pfsabah19LM

#Regression with LM
fsabah23LM = lm(formula = Prediction~Percentage.1+Year, data = pfsabah19LM)

#Predict using LM regression
pfsabah23LM = predict(fsabah23LM, pfsabah19LM)

pfsabah23LM = data.frame(pfsabah19LM,Prediction = pfsabah23LM)
pfsabah23LM #Prediction for Sabah Female

#Regression with LM
mSarawak19LM = lm(formula = Percentage.1~Percentage+Year, data = mSarawak)

#Predict using LM regression
pmSarawak19LM = predict(mSarawak19LM, mSarawak)

pmSarawak19LM = data.frame(mSarawak,Prediction = pmSarawak19LM)
pmSarawak19LM

#Regression with LM
mSarawak23LM = lm(formula = Prediction~Percentage.1+Year, data = pmSarawak19LM)

#Predict using LM regression
pmSarawak23LM = predict(mSarawak23LM, pmSarawak19LM)

pmSarawak23LM = data.frame(pmSarawak19LM,Prediction = pmSarawak23LM)
pmSarawak23LM #Prediction for Sarawak Male

#Regression with LM
fSarawak19LM = lm(formula = Percentage.1~Percentage+Year, data = fSarawak)

#Predict using LM regression
pfSarawak19LM = predict(fSarawak19LM, fSarawak)

pfSarawak19LM = data.frame(fSarawak,Prediction = pfSarawak19LM)
pfSarawak19LM

#Regression with LM
fSarawak23LM = lm(formula = Prediction~Percentage.1+Year, data = pfSarawak19LM)

#Predict using LM regression
pfSarawak23LM = predict(fSarawak23LM, pfSarawak19LM)

pfSarawak23LM = data.frame(pfSarawak19LM,Prediction = pfSarawak23LM)
pfSarawak23LM #Prediction for Sarawak Female

#Regression with LM
mselangor19LM = lm(formula = Percentage.1~Percentage+Year, data = mselangor)

#Predict using LM regression
pmselangor19LM = predict(mselangor19LM, mselangor)

pmselangor19LM = data.frame(mselangor,Prediction = pmselangor19LM)
pmselangor19LM

#Regression with LM
mselangor23LM = lm(formula = Prediction~Percentage.1+Year, data = pmselangor19LM)

#Predict using LM regression
pmselangor23LM = predict(mselangor23LM, pmselangor19LM)

pmselangor23LM = data.frame(pmselangor19LM,Prediction = pmselangor23LM)
pmselangor23LM #Prediction for Selangor Male

#Regression with LM
fselangor19LM = lm(formula = Percentage.1~Percentage+Year, data = fselangor)

#Predict using LM regression
pfselangor19LM = predict(fselangor19LM, fselangor)

pfselangor19LM = data.frame(fselangor,Prediction = pfselangor19LM)
pfselangor19LM

#Regression with LM
fselangor23LM = lm(formula = Prediction~Percentage.1+Year, data = pfselangor19LM)

#Predict using LM regression
pfselangor23LM = predict(fselangor23LM, pfselangor19LM)

pfselangor23LM = data.frame(pfselangor19LM,Prediction = pfselangor23LM)
pfselangor23LM #Prediction for Selangor Female

#Regression with LM
mmelaka19LM = lm(formula = Percentage.1~Percentage+Year, data = mmelaka)

#Predict using LM regression
pmmelaka19LM = predict(mmelaka19LM, mmelaka)

pmmelaka19LM = data.frame(mmelaka,Prediction = pmmelaka19LM)
pmmelaka19LM

#Regression with LM
mmelaka23LM = lm(formula = Prediction~Percentage.1+Year, data = pmmelaka19LM)

#Predict using LM regression
pmmelaka23LM = predict(mmelaka23LM, pmmelaka19LM)

pmmelaka23LM = data.frame(pmmelaka19LM,Prediction = pmmelaka23LM)
pmmelaka23LM #Prediction for Melaka Male

#Regression with LM
fmelaka19LM = lm(formula = Percentage.1~Percentage+Year, data = fmelaka)

#Predict using LM regression
pfmelaka19LM = predict(fmelaka19LM, fmelaka)

pfmelaka19LM = data.frame(fmelaka,Prediction = pfmelaka19LM)
pfmelaka19LM

#Regression with LM
fmelaka23LM = lm(formula = Prediction~Percentage.1+Year, data = pfmelaka19LM)

#Predict using LM regression
pfmelaka23LM = predict(fmelaka23LM, pfmelaka19LM)

pfmelaka23LM = data.frame(pfmelaka19LM,Prediction = pfmelaka23LM)
pfmelaka23LM #Prediction for Melaka Female

#Regression with LM
mnsembilan19LM = lm(formula = Percentage.1~Percentage+Year, data = mnsembilan)

#Predict using LM regression
pmnsembilan19LM = predict(mnsembilan19LM, mnsembilan)

pmnsembilan19LM = data.frame(mnsembilan,Prediction = pmnsembilan19LM)
pmnsembilan19LM

#Regression with LM
mnsembilan23LM = lm(formula = Prediction~Percentage.1+Year, data = pmnsembilan19LM)

#Predict using LM regression
pmnsembilan23LM = predict(mnsembilan23LM, pmnsembilan19LM)

pmnsembilan23LM = data.frame(pmnsembilan19LM,Prediction = pmnsembilan23LM)
pmnsembilan23LM #Prediction for Nsembilan Male

#Regression with LM
fnsembilan19LM = lm(formula = Percentage.1~Percentage+Year, data = fnsembilan)

#Predict using LM regression
pfnsembilan19LM = predict(fnsembilan19LM, fnsembilan)

pfnsembilan19LM = data.frame(fnsembilan,Prediction = pfnsembilan19LM)
pfnsembilan19LM

#Regression with LM
fnsembilan23LM = lm(formula = Prediction~Percentage.1+Year, data = pfnsembilan19LM)

#Predict using LM regression
pfnsembilan23LM = predict(fnsembilan23LM, pfnsembilan19LM)

pfnsembilan23LM = data.frame(pfnsembilan19LM,Prediction = pfnsembilan23LM)
pfnsembilan23LM #Prediction for Nsembilan Female

#Regression with LM
mperak19LM = lm(formula = Percentage.1~Percentage+Year, data = mperak)

#Predict using LM regression
pmperak19LM = predict(mperak19LM, mperak)

pmperak19LM = data.frame(mperak,Prediction = pmperak19LM)
pmperak19LM

#Regression with LM
mperak23LM = lm(formula = Prediction~Percentage.1+Year, data = pmperak19LM)

#Predict using LM regression
pmperak23LM = predict(mperak23LM, pmperak19LM)

pmperak23LM = data.frame(pmperak19LM,Prediction = pmperak23LM)
pmperak23LM #Prediction for Perak Male

#Regression with LM
fperak19LM = lm(formula = Percentage.1~Percentage+Year, data = fperak)

#Predict using LM regression
pfperak19LM = predict(fperak19LM, fperak)

pfperak19LM = data.frame(fperak,Prediction = pfperak19LM)
pfperak19LM

#Regression with LM
fperak23LM = lm(formula = Prediction~Percentage.1+Year, data = pfperak19LM)

#Predict using LM regression
pfperak23LM = predict(fperak23LM, pfperak19LM)

pfperak23LM = data.frame(pfperak19LM,Prediction = pfperak23LM)
pfperak23LM #Prediction for Perak Female

#Regression with LM
mperlis19LM = lm(formula = Percentage.1~Percentage+Year, data = mperlis)

#Predict using LM regression
pmperlis19LM = predict(mperlis19LM, mperlis)

pmperlis19LM = data.frame(mperlis,Prediction = pmperlis19LM)
pmperlis19LM

#Regression with LM
mperlis23LM = lm(formula = Prediction~Percentage.1+Year, data = pmperlis19LM)

#Predict using LM regression
pmperlis23LM = predict(mperlis23LM, pmperlis19LM)

pmperlis23LM = data.frame(pmperlis19LM,Prediction = pmperlis23LM)
pmperlis23LM #Prediction for Perlis Male

#Regression with LM
fperlis19LM = lm(formula = Percentage.1~Percentage+Year, data = fperlis)

#Predict using LM regression
pfperlis19LM = predict(fperlis19LM, fperlis)

pfperlis19LM = data.frame(fperlis,Prediction = pfperlis19LM)
pfperlis19LM

#Regression with LM
fperlis23LM = lm(formula = Prediction~Percentage.1+Year, data = pfperlis19LM)

#Predict using LM regression
pfperlis23LM = predict(fperlis23LM, pfperlis19LM)

pfperlis23LM = data.frame(pfperlis19LM,Prediction = pfperlis23LM)
pfperlis23LM #Prediction for Perlis Female

#Regression with LM
mterengganu19LM = lm(formula = Percentage.1~Percentage+Year, data = mterengganu)

#Predict using LM regression
pmterengganu19LM = predict(mterengganu19LM, mterengganu)

pmterengganu19LM = data.frame(mterengganu,Prediction = pmterengganu19LM)
pmterengganu19LM

#Regression with LM
mterengganu23LM = lm(formula = Prediction~Percentage.1+Year, data = pmterengganu19LM)

#Predict using LM regression
pmterengganu23LM = predict(mterengganu23LM, pmterengganu19LM)

pmterengganu23LM = data.frame(pmterengganu19LM,Prediction = pmterengganu23LM)
pmterengganu23LM #Prediction for Terengganu Male

#Regression with LM
fterengganu19LM = lm(formula = Percentage.1~Percentage+Year, data = fterengganu)

#Predict using LM regression
pfterengganu19LM = predict(fterengganu19LM, fterengganu)

pfterengganu19LM = data.frame(fterengganu,Prediction = pfterengganu19LM)
pfterengganu19LM

#Regression with LM
fterengganu23LM = lm(formula = Prediction~Percentage.1+Year, data = pfterengganu19LM)

#Predict using LM regression
pfterengganu23LM = predict(fterengganu23LM, pfterengganu19LM)

pfterengganu23LM = data.frame(pfterengganu19LM,Prediction = pfterengganu23LM)
pfterengganu23LM #Prediction for Terengganu Female

#Regression with LM
mkl19LM = lm(formula = Percentage.1~Percentage+Year, data = mkl)

#Predict using LM regression
pmkl19LM = predict(mkl19LM, mkl)

pmkl19LM = data.frame(mkl,Prediction = pmkl19LM)
pmkl19LM

#Regression with LM
mkl23LM = lm(formula = Prediction~Percentage.1+Year, data = pmkl19LM)

#Predict using LM regression
pmkl23LM = predict(mkl23LM, pmkl19LM)

pmkl23LM = data.frame(pmkl19LM,Prediction = pmkl23LM)
pmkl23LM #Prediction for Kl Male

#Regression with LM
fkl19LM = lm(formula = Percentage.1~Percentage+Year, data = fkl)

#Predict using LM regression
pfkl19LM = predict(fkl19LM, fkl)

pfkl19LM = data.frame(fkl,Prediction = pfkl19LM)
pfkl19LM

#Regression with LM
fkl23LM = lm(formula = Prediction~Percentage.1+Year, data = pfkl19LM)

#Predict using LM regression
pfkl23LM = predict(fkl23LM, pfkl19LM)

pfkl23LM = data.frame(pfkl19LM,Prediction = pfkl23LM)
pfkl23LM #Prediction for Kl Female

#Regression with LM
mmsia19LM = lm(formula = Percentage.1~Percentage+Year, data = mmsia)

#Predict using LM regression
pmmsia19LM = predict(mmsia19LM, mmsia)

pmmsia19LM = data.frame(mmsia,Prediction = pmmsia19LM)
pmmsia19LM

#Regression with LM
mmsia23LM = lm(formula = Prediction~Percentage.1+Year, data = pmmsia19LM)

#Predict using LM regression
pmmsia23LM = predict(mmsia23LM, pmmsia19LM)

pmmsia23LM = data.frame(pmmsia19LM,Prediction = pmmsia23LM)
pmmsia23LM #Prediction for Msia Male

#Regression with LM
fmsia19LM = lm(formula = Percentage.1~Percentage+Year, data = fmsia)

#Predict using LM regression
pfmsia19LM = predict(fmsia19LM, fmsia)

pfmsia19LM = data.frame(fmsia,Prediction = pfmsia19LM)
pfmsia19LM

#Regression with LM
fmsia23LM = lm(formula = Prediction~Percentage.1+Year, data = pfmsia19LM)

#Predict using LM regression
pfmsia23LM = predict(fmsia23LM, pfmsia19LM)

pfmsia23LM = data.frame(pfmsia19LM,Prediction = pfmsia23LM)
pfmsia23LM #Prediction for Msia Female



#Importing Expenditure data
mexp <- read.csv("Food Expenditure.csv", header=TRUE)

#Performing Wilcoxon Test
wtest <- wilcox.test(mydata$Percentage, mexp$Percentage, exact = FALSE, alternative = "greater")
wtest
#Conclusion = HIGHLY Likely (99%) to increase simultaneously

#Bar Chart For Prediction

#Johor Women
johor19FSVM <- ggplot(pfjohor23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Johor in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

johor19FSVM

johor23FSVM <- ggplot(pfjohor23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Johor in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

johor23FSVM

johor19FTuned <- ggplot(pfjohor23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Johor in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

johor19FTuned

johor23FTuned <- ggplot(pfjohor23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Johor in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

johor23FTuned
johor19FLM <- ggplot(pfjohor23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Johor in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

johor19FLM

johor23FLM <- ggplot(pfjohor23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Johor in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

johor23FLM

#Kedah Women
kedah19FSVM <- ggplot(pfkedah23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kedah in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kedah19FSVM

kedah23FSVM <- ggplot(pfkedah23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kedah in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kedah23FSVM

kedah19FTuned <- ggplot(pfkedah23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kedah in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kedah19FTuned

kedah23FTuned <- ggplot(pfkedah23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kedah in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kedah23FTuned
kedah19FLM <- ggplot(pfkedah23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kedah in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kedah19FLM

kedah23FLM <- ggplot(pfkedah23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kedah in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kedah23FLM

#Kelantan Women
kelantan19FSVM <- ggplot(pfkelantan23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kelantan in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kelantan19FSVM

kelantan23FSVM <- ggplot(pfkelantan23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kelantan in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kelantan23FSVM

kelantan19FTuned <- ggplot(pfkelantan23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kelantan in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kelantan19FTuned

kelantan23FTuned <- ggplot(pfkelantan23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kelantan in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kelantan23FTuned
kelantan19FLM <- ggplot(pfkelantan23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kelantan in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kelantan19FLM

kelantan23FLM <- ggplot(pfkelantan23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kelantan in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kelantan23FLM

#Kuala Lumpur Women
kl19FSVM <- ggplot(pfkl23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kl in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kl19FSVM

kl23FSVM <- ggplot(pfkl23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kl in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kl23FSVM

kl19FTuned <- ggplot(pfkl23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kl in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kl19FTuned

kl23FTuned <- ggplot(pfkl23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kl in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kl23FTuned
kl19FLM <- ggplot(pfkl23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kl in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kl19FLM

kl23FLM <- ggplot(pfkl23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kl in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

kl23FLM

pfkl23LM

#Melaka Women
melaka19FSVM <- ggplot(pfmelaka23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Melaka in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

melaka19FSVM

melaka23FSVM <- ggplot(pfmelaka23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Melaka in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

melaka23FSVM

melaka19FTuned <- ggplot(pfmelaka23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Melaka in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

melaka19FTuned

melaka23FTuned <- ggplot(pfmelaka23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Melaka in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

melaka23FTuned
melaka19FLM <- ggplot(pfmelaka23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Melaka in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

melaka19FLM

melaka23FLM <- ggplot(pfmelaka23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Melaka in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

melaka23FLM

#Malaysia Women
msia19FSVM <- ggplot(pfmsia23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Msia in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

msia19FSVM

msia23FSVM <- ggplot(pfmsia23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Msia in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

msia23FSVM

msia19FTuned <- ggplot(pfmsia23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Msia in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

msia19FTuned

msia23FTuned <- ggplot(pfmsia23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Msia in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

msia23FTuned
msia19FLM <- ggplot(pfmsia23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Msia in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

msia19FLM

msia23FLM <- ggplot(pfmsia23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Msia in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

msia23FLM

#Negeri Sembilan Women
nsembilan19FSVM <- ggplot(pfnsembilan23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Nsembilan in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

nsembilan19FSVM

nsembilan23FSVM <- ggplot(pfnsembilan23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Nsembilan in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

nsembilan23FSVM

nsembilan19FTuned <- ggplot(pfnsembilan23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Nsembilan in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

nsembilan19FTuned

nsembilan23FTuned <- ggplot(pfnsembilan23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Nsembilan in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

nsembilan23FTuned
nsembilan19FLM <- ggplot(pfnsembilan23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Nsembilan in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

nsembilan19FLM

nsembilan23FLM <- ggplot(pfnsembilan23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Nsembilan in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

nsembilan23FLM

#Pahang Women
pahang19FSVM <- ggplot(pfpahang23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pahang in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pahang19FSVM

pahang23FSVM <- ggplot(pfpahang23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pahang in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pahang23FSVM

pahang19FTuned <- ggplot(pfpahang23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pahang in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pahang19FTuned

pahang23FTuned <- ggplot(pfpahang23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pahang in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pahang23FTuned
pahang19FLM <- ggplot(pfpahang23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pahang in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pahang19FLM

pahang23FLM <- ggplot(pfpahang23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pahang in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pahang23FLM

#Perak Women
perak19FSVM <- ggplot(pfperak23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perak in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

perak19FSVM

perak23FSVM <- ggplot(pfperak23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perak in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

perak23FSVM

perak19FTuned <- ggplot(pfperak23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perak in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

perak19FTuned

perak23FTuned <- ggplot(pfperak23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perak in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

perak23FTuned
perak19FLM <- ggplot(pfperak23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perak in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

perak19FLM

perak23FLM <- ggplot(pfperak23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perak in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

perak23FLM

#Perlis Women
perlis19FSVM <- ggplot(pfperlis23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perlis in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

perlis19FSVM

perlis23FSVM <- ggplot(pfperlis23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perlis in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

perlis23FSVM

perlis19FTuned <- ggplot(pfperlis23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perlis in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

perlis19FTuned

perlis23FTuned <- ggplot(pfperlis23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perlis in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

perlis23FTuned
perlis19FLM <- ggplot(pfperlis23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perlis in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

perlis19FLM

perlis23FLM <- ggplot(pfperlis23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perlis in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

perlis23FLM

#Pulau Pinang Women
pinang19FSVM <- ggplot(pfpinang23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pinang in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pinang19FSVM

pinang23FSVM <- ggplot(pfpinang23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pinang in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pinang23FSVM

pinang19FTuned <- ggplot(pfpinang23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pinang in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pinang19FTuned

pinang23FTuned <- ggplot(pfpinang23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pinang in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pinang23FTuned
pinang19FLM <- ggplot(pfpinang23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pinang in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pinang19FLM

pinang23FLM <- ggplot(pfpinang23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pinang in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pinang23FLM

#Putrajaya Women
pj19FSVM <- ggplot(pfpj23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pj in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pj19FSVM

pj23FSVM <- ggplot(pfpj23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pj in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pj23FSVM

pj19FTuned <- ggplot(pfpj23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pj in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pj19FTuned

pj23FTuned <- ggplot(pfpj23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pj in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pj23FTuned
pj19FLM <- ggplot(pfpj23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pj in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pj19FLM

pj23FLM <- ggplot(pfpj23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pj in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

pj23FLM

#Sabah Women
sabah19FSVM <- ggplot(pfsabah23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sabah in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

sabah19FSVM

sabah23FSVM <- ggplot(pfsabah23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sabah in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

sabah23FSVM

sabah19FTuned <- ggplot(pfsabah23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sabah in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

sabah19FTuned

sabah23FTuned <- ggplot(pfsabah23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sabah in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

sabah23FTuned
sabah19FLM <- ggplot(pfsabah23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sabah in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

sabah19FLM

sabah23FLM <- ggplot(pfsabah23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sabah in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

sabah23FLM

#Sarawak Women
Sarawak19FSVM <- ggplot(pfSarawak23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sarawak in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

Sarawak19FSVM

Sarawak23FSVM <- ggplot(pfSarawak23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sarawak in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

Sarawak23FSVM

Sarawak19FTuned <- ggplot(pfSarawak23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sarawak in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

Sarawak19FTuned

Sarawak23FTuned <- ggplot(pfSarawak23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sarawak in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

Sarawak23FTuned
Sarawak19FLM <- ggplot(pfSarawak23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sarawak in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

Sarawak19FLM

Sarawak23FLM <- ggplot(pfSarawak23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sarawak in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

Sarawak23FLM

#Selangor Women
selangor19FSVM <- ggplot(pfselangor23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Selangor in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

selangor19FSVM

selangor23FSVM <- ggplot(pfselangor23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Selangor in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

selangor23FSVM

selangor19FTuned <- ggplot(pfselangor23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Selangor in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

selangor19FTuned

selangor23FTuned <- ggplot(pfselangor23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Selangor in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

selangor23FTuned
selangor19FLM <- ggplot(pfselangor23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Selangor in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

selangor19FLM

selangor23FLM <- ggplot(pfselangor23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Selangor in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

selangor23FLM

#Terengganu Women
terengganu19FSVM <- ggplot(pfterengganu23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Terengganu in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

terengganu19FSVM

terengganu23FSVM <- ggplot(pfterengganu23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Terengganu in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

terengganu23FSVM

terengganu19FTuned <- ggplot(pfterengganu23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Terengganu in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

terengganu19FTuned

terengganu23FTuned <- ggplot(pfterengganu23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Terengganu in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

terengganu23FTuned

terengganu19FLM <- ggplot(pfterengganu23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Terengganu in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

terengganu19FLM

terengganu23FLM <- ggplot(pfterengganu23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Terengganu in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#ff66cc"))

terengganu23FLM

#Johor Men
johor19MSVM <- ggplot(pmjohor23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Johor in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

johor19MSVM

johor23MSVM <- ggplot(pmjohor23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Johor in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

johor23MSVM

johor19MTuned <- ggplot(pmjohor23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Johor in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

johor19MTuned

johor23MTuned <- ggplot(pmjohor23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Johor in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

johor23MTuned
johor19MLM <- ggplot(pmjohor23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Johor in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

johor19MLM

johor23MLM <- ggplot(pmjohor23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Johor in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

johor23MLM

#Kedah Men
kedah19MSVM <- ggplot(pmkedah23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kedah in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kedah19MSVM

kedah23MSVM <- ggplot(pmkedah23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kedah in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kedah23MSVM

kedah19MTuned <- ggplot(pmkedah23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kedah in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kedah19MTuned

kedah23MTuned <- ggplot(pmkedah23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kedah in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kedah23MTuned
kedah19MLM <- ggplot(pmkedah23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kedah in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kedah19MLM

kedah23MLM <- ggplot(pmkedah23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kedah in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kedah23MLM

#Kelantan Men
kelantan19MSVM <- ggplot(pmkelantan23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kelantan in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kelantan19MSVM

kelantan23MSVM <- ggplot(pmkelantan23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kelantan in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kelantan23MSVM

kelantan19MTuned <- ggplot(pmkelantan23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kelantan in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kelantan19MTuned

kelantan23MTuned <- ggplot(pmkelantan23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kelantan in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kelantan23MTuned
kelantan19MLM <- ggplot(pmkelantan23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kelantan in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kelantan19MLM

kelantan23MLM <- ggplot(pmkelantan23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kelantan in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kelantan23MLM

#Kuala Lumpur Men
kl19MSVM <- ggplot(pmkl23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kl in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kl19MSVM

kl23MSVM <- ggplot(pmkl23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kl in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kl23MSVM

kl19MTuned <- ggplot(pmkl23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kl in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kl19MTuned

kl23MTuned <- ggplot(pmkl23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kl in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kl23MTuned
kl19MLM <- ggplot(pmkl23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kl in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kl19MLM

kl23MLM <- ggplot(pmkl23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Kl in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

kl23MLM

#Melaka Men
melaka19MSVM <- ggplot(pmmelaka23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Melaka in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

melaka19MSVM

melaka23MSVM <- ggplot(pmmelaka23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Melaka in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

melaka23MSVM

melaka19MTuned <- ggplot(pmmelaka23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Melaka in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

melaka19MTuned

melaka23MTuned <- ggplot(pmmelaka23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Melaka in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

melaka23MTuned
melaka19MLM <- ggplot(pmmelaka23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Melaka in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

melaka19MLM

melaka23MLM <- ggplot(pmmelaka23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Melaka in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

melaka23MLM

#Malaysia Men
msia19MSVM <- ggplot(pmmsia23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Msia in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

msia19MSVM

msia23MSVM <- ggplot(pmmsia23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Msia in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

msia23MSVM

msia19MTuned <- ggplot(pmmsia23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Msia in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

msia19MTuned

msia23MTuned <- ggplot(pmmsia23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Msia in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

msia23MTuned
msia19MLM <- ggplot(pmmsia23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Msia in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

msia19MLM

msia23MLM <- ggplot(pmmsia23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Msia in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

msia23MLM

#Negeri Sembilan Men
nsembilan19MSVM <- ggplot(pmnsembilan23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Nsembilan in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

nsembilan19MSVM

nsembilan23MSVM <- ggplot(pmnsembilan23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Nsembilan in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

nsembilan23MSVM

nsembilan19MTuned <- ggplot(pmnsembilan23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Nsembilan in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

nsembilan19MTuned

nsembilan23MTuned <- ggplot(pmnsembilan23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Nsembilan in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

nsembilan23MTuned
nsembilan19MLM <- ggplot(pmnsembilan23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Nsembilan in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

nsembilan19MLM

nsembilan23MLM <- ggplot(pmnsembilan23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Nsembilan in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

nsembilan23MLM

#Pahang Men
pahang19MSVM <- ggplot(pmpahang23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pahang in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pahang19MSVM

pahang23MSVM <- ggplot(pmpahang23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pahang in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pahang23MSVM

pahang19MTuned <- ggplot(pmpahang23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pahang in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pahang19MTuned

pahang23MTuned <- ggplot(pmpahang23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pahang in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pahang23MTuned
pahang19MLM <- ggplot(pmpahang23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pahang in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pahang19MLM

pahang23MLM <- ggplot(pmpahang23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pahang in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pahang23MLM

#Perak Men
perak19MSVM <- ggplot(pmperak23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perak in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

perak19MSVM

perak23MSVM <- ggplot(pmperak23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perak in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

perak23MSVM

perak19MTuned <- ggplot(pmperak23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perak in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

perak19MTuned

perak23MTuned <- ggplot(pmperak23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perak in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

perak23MTuned
perak19MLM <- ggplot(pmperak23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perak in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

perak19MLM

perak23MLM <- ggplot(pmperak23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perak in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

perak23MLM

#Perlis Men
perlis19MSVM <- ggplot(pmperlis23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perlis in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

perlis19MSVM

perlis23MSVM <- ggplot(pmperlis23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perlis in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

perlis23MSVM

perlis19MTuned <- ggplot(pmperlis23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perlis in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

perlis19MTuned

perlis23MTuned <- ggplot(pmperlis23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perlis in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

perlis23MTuned
perlis19MLM <- ggplot(pmperlis23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perlis in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

perlis19MLM

perlis23MLM <- ggplot(pmperlis23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Perlis in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

perlis23MLM

#Pulau Pinang Men
pinang19MSVM <- ggplot(pmpinang23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pinang in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pinang19MSVM

pinang23MSVM <- ggplot(pmpinang23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pinang in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pinang23MSVM

pinang19MTuned <- ggplot(pmpinang23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pinang in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pinang19MTuned

pinang23MTuned <- ggplot(pmpinang23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pinang in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pinang23MTuned
pinang19MLM <- ggplot(pmpinang23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pinang in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pinang19MLM

pinang23MLM <- ggplot(pmpinang23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pinang in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pinang23MLM

#Putrajaya Men
pj19MSVM <- ggplot(pmpj23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pj in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pj19MSVM

pj23MSVM <- ggplot(pmpj23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pj in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pj23MSVM

pj19MTuned <- ggplot(pmpj23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pj in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pj19MTuned

pj23MTuned <- ggplot(pmpj23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pj in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pj23MTuned
pj19MLM <- ggplot(pmpj23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pj in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pj19MLM

pj23MLM <- ggplot(pmpj23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Pj in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

pj23MLM

#Sabah Men
sabah19MSVM <- ggplot(pmsabah23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sabah in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

sabah19MSVM

sabah23MSVM <- ggplot(pmsabah23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sabah in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

sabah23MSVM

sabah19MTuned <- ggplot(pmsabah23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sabah in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

sabah19MTuned

sabah23MTuned <- ggplot(pmsabah23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sabah in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

sabah23MTuned
sabah19MLM <- ggplot(pmsabah23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sabah in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

sabah19MLM

sabah23MLM <- ggplot(pmsabah23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sabah in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

sabah23MLM

#Sarawak Men
Sarawak19MSVM <- ggplot(pmSarawak23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sarawak in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

Sarawak19MSVM

Sarawak23MSVM <- ggplot(pmSarawak23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sarawak in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

Sarawak23MSVM

Sarawak19MTuned <- ggplot(pmSarawak23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sarawak in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

Sarawak19MTuned

Sarawak23MTuned <- ggplot(pmSarawak23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sarawak in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

Sarawak23MTuned
Sarawak19MLM <- ggplot(pmSarawak23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sarawak in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

Sarawak19MLM

Sarawak23MLM <- ggplot(pmSarawak23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Sarawak in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

Sarawak23MLM

#Selangor Men
selangor19MSVM <- ggplot(pmselangor23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Selangor in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

selangor19MSVM

selangor23MSVM <- ggplot(pmselangor23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Selangor in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

selangor23MSVM

selangor19MTuned <- ggplot(pmselangor23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Selangor in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

selangor19MTuned

selangor23MTuned <- ggplot(pmselangor23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Selangor in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

selangor23MTuned
selangor19MLM <- ggplot(pmselangor23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Selangor in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

selangor19MLM

selangor23MLM <- ggplot(pmselangor23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Selangor in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

selangor23MLM

#Terengganu Men
terengganu19MSVM <- ggplot(pmterengganu23, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Terengganu in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

terengganu19MSVM

terengganu23MSVM <- ggplot(pmterengganu23, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Terengganu in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

terengganu23MSVM

terengganu19MTuned <- ggplot(pmterengganu23tuned, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Terengganu in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

terengganu19MTuned

terengganu23MTuned <- ggplot(pmterengganu23tuned, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Terengganu in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

terengganu23MTuned
terengganu19MLM <- ggplot(pmterengganu23LM, aes(x = Age, y = Prediction, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Terengganu in 2019") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

terengganu19MLM

terengganu23MLM <- ggplot(pmterengganu23LM, aes(x = Age, y = Prediction.1, fill=Gender)) + 
  geom_bar(position = "dodge", stat = "identity")  + 
  labs(title = "Obesity Rates in Terengganu in 2023") +
  theme(plot.title = element_text(hjust = 0.5))+
  scale_fill_manual(values = c("#0DA2FF"))

terengganu23MLM
