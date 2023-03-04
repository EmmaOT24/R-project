library(tidyverse)
library(dplyr)
A<-Africa_Vectors_database_1898_2016
head(A)
names(A)
B <-A %>% 
  select(1,8,9,10,11,12,13,14) %>% 
  filter(Country =="Nigeria") %>% 
  filter(YeStart>="2005"& YeEnd>=2005) %>% 
  arrange(desc(YeStart)) 
str(B)
B$`An gambiae_complex`<-as.factor(B$`An gambiae_complex`)
levels(B$`An gambiae_complex`)
B$`An gambiae ss`<- as.factor(B$`An gambiae ss`)
levels(B$`An gambiae ss`)
B$`SS M Form (An colluzzi or Mopti forms)`<- as.factor(B$`SS M Form (An colluzzi or Mopti forms)`)
B$`SS S Form (savanah or Bamako forms)`<- as.factor(B$`SS S Form (savanah or Bamako forms)`)
B$`An arabiensis`<-as.factor(B$`An arabiensis`)
B.renamed<-rename(B,"AGB"="An gambiae_complex",
                  "AGS"="An gambiae ss",
                  "SSMF"="SS M Form (An colluzzi or Mopti forms)",
                  "SSSF"="SS S Form (savanah or Bamako forms)",
                  "AA"="An arabiensis")
names(B.renamed)
view(B.renamed)
nrow(subset(B.renamed,SSMF=="Y"))
nrow(subset(B.renamed,AGB=="Y"))
nrow(subset(B.renamed,AGS=="Y"))
nrow(subset(B.renamed,SSSF=="Y"))
nrow(subset(B.renamed,AA=="Y"))
#Based on my analysis, this is what we have of the most common species in Nigeria from the data that was obtained from 2005 to 2016, AA=42, AGB=115,SSMF=42,SSSF=17,AGS=61. 
#Let;s do the same for Mali, Congo and Tanzania
L<-Africa_Vectors_database_1898_2016
head(L)
names(L)
M<-A %>% 
  select(1,8,9,10,11,12,13,14) %>% 
  filter(Country =="Mali") %>% 
  filter(YeStart>="2005"& YeEnd>=2005) %>% 
  arrange(desc(YeStart)) 
str(M)
M$`An gambiae_complex`<-as.factor(M$`An gambiae_complex`)
levels(M$`An gambiae_complex`)
M$`An gambiae ss`<- as.factor(M$`An gambiae ss`)
levels(M$`An gambiae ss`)
M$`SS M Form (An colluzzi or Mopti forms)`<- as.factor(M$`SS M Form (An colluzzi or Mopti forms)`)
M$`SS S Form (savanah or Bamako forms)`<- as.factor(M$`SS S Form (savanah or Bamako forms)`)
M$`An arabiensis`<-as.factor(M$`An arabiensis`)
M.renamed<-rename(M,"AGB"="An gambiae_complex",
                  "AGS"="An gambiae ss",
                  "SSMF"="SS M Form (An colluzzi or Mopti forms)",
                  "SSSF"="SS S Form (savanah or Bamako forms)",
                  "AA"="An arabiensis")

View(M.renamed)
nrow(subset(M.renamed,SSMF=="Y"))
nrow(subset(M.renamed,AGB=="Y"))
nrow(subset(M.renamed,AGS=="Y"))
nrow(subset(M.renamed,SSSF=="Y"))
nrow(subset(M.renamed,AA=="Y"))
##most common species in Mali from 2005-2016, AA=28, AGB=56,SSMF=24,SSSF=15,AGS=46. 
D<-Africa_Vectors_database_1898_2016
head(D)
names(D)
C<-D %>% 
  select(1,8,9,10,11,12,13,14) %>% 
  filter(Country =="Niger") %>% 
  filter(YeStart>="2005") %>% 
  arrange(desc(YeStart)) 
str(C)
C$`An gambiae_complex`<-as.factor(C$`An gambiae_complex`)
levels(C$`An gambiae_complex`)
C$`An gambiae ss`<- as.factor(C$`An gambiae ss`)
levels(C$`An gambiae ss`)
C$`SS M Form (An colluzzi or Mopti forms)`<- as.factor(C$`SS M Form (An colluzzi or Mopti forms)`)
C$`SS S Form (savanah or Bamako forms)`<- as.factor(C$`SS S Form (savanah or Bamako forms)`)
C$`An arabiensis`<-as.factor(C$`An arabiensis`)
C.renamed<-rename(C,"AGB"="An gambiae_complex",
                  "AGS"="An gambiae ss",
                  "SSMF"="SS M Form (An colluzzi or Mopti forms)",
                  "SSSF"="SS S Form (savanah or Bamako forms)",
                  "AA"="An arabiensis")

View(C.renamed)
nrow(subset(C.renamed,SSMF=="Y"))
nrow(subset(C.renamed,AGB=="Y"))
nrow(subset(C.renamed,AGS=="Y"))
nrow(subset(C.renamed,SSSF=="Y"))
nrow(subset(C.renamed,AA=="Y"))
#Niger data from start 2005, AA=9, AGB=9,SSMF=9,SSSF=3,AGS=9
U<-Africa_Vectors_database_1898_2016
head(U)
names(U)
V<-U %>% 
  select(1,8,9,10,11,12,13,14) %>% 
  filter(Country =="Tanzania") %>% 
  filter(YeStart>="2005" & YeEnd>="2005") %>% 
  arrange(desc(YeStart)) 
str(V)
V$`An gambiae_complex`<-as.factor(V$`An gambiae_complex`)
levels(V$`An gambiae_complex`)
V$`An gambiae ss`<- as.factor(V$`An gambiae ss`)
levels(V$`An gambiae ss`)
V$`SS M Form (An colluzzi or Mopti forms)`<- as.factor(V$`SS M Form (An colluzzi or Mopti forms)`)
V$`SS S Form (savanah or Bamako forms)`<- as.factor(V$`SS S Form (savanah or Bamako forms)`)
V$`An arabiensis`<-as.factor(V$`An arabiensis`)
V.renamed<-rename(V,"AGB"="An gambiae_complex",
                  "AGS"="An gambiae ss",
                  "SSMF"="SS M Form (An colluzzi or Mopti forms)",
                  "SSSF"="SS S Form (savanah or Bamako forms)",
                  "AA"="An arabiensis")

View(V.renamed)
nrow(subset(V.renamed,SSMF=="Y"))
nrow(subset(V.renamed,AGB=="Y"))
nrow(subset(V.renamed,AGS=="Y"))
nrow(subset(V.renamed,SSSF=="Y"))
nrow(subset(V.renamed,AA=="Y"))
#Tanzania  AA=91, AGB=127,SSMF=0,SSSF=1,AGS=67

Tanzania<- data.frame(Species=c('AGB','AGS','AA','SSMF','SSSF'),Number=c(127,67,91,0,1))
view(Tanzania)
#Barplot
Tanzania %>% 
  ggplot(aes(x =Species,y=Number))+
  geom_bar(stat = "identity")

Nigeria<- data.frame(Species=c('AGB','AGS','AA','SSMF','SSSF'),Number=c(115,61,42,42,17))
view(Nigeria)
#Barplot
Nigeria %>% 
  ggplot(aes(x =Species,y=Number))+
  geom_bar(stat = "identity")

Niger<- data.frame(Species=c('AGB','AGS','AA','SSMF','SSSF'),Number=c(9,9,9,9,3))
view(Niger)
#Barplot
Niger %>% 
  ggplot(aes(x =Species,y=Number))+
  geom_bar(stat = "identity")


Mali<- data.frame(Species=c('AGB','AGS','AA','SSMF','SSSF'),Number=c(56,46,28,24,15))
view(Mali)
#Barplot
Mali %>% 
  ggplot(aes(x =Species,y=Number))+
  geom_bar(stat = "identity")

