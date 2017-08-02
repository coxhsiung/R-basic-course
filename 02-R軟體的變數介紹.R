
# R軟體的變數介紹 #

# 1. 一般變數:

(english.score <- 90.0 )             ## 數值變數
x1 <-85 ; str(x1);  mode(x1)         ## str():查詢結構、mode():查詢型態  
x2 <- NA                             ## NA:遺漏值
rm(x2)                               ## 刪除變數x2

(english.name <- "Su Chih Hsiung")   ## 文字變數
y1 <- "Rome wasn't built in a day.";str(y1);mode(y1)
nchar(y1)                            #nchar():查詢變數值的長度
y2 <- "羅馬不是一天造成的"
y3 <- paste0(y2,"英文為: ",y1);y3    ## paste0() :將兩個以上的文字變數連接

(english.pass <- TRUE)               ## 邏輯變數
w1 <- T ;w1; w2 <- F ;w2; w3 <- T ;w3
w4 <- !w1 ; w1; w4                   ## !  是 not 的意思
w5 <- w1 && w2; w1 ;w2; w5           ## && 是 and 的意思
w6 <- w1 && w3; w1 ;w3; w6
w7 <- w1 || w2; w1 ;w2; w7           ## || 是 or  的意思
w8 <- w1 || w3; w1 ;w3; w8

(t1 <- Sys.time())                   ## 時間變數
class(t1);mode(t1);str(t1)
format(t1, "%Y-%m-%d")
format(t1, "%Y/%m/%d")

(t2 <- Sys.Date()) 
class(t2);mode(t2);str(t2)
format(t2, "%a %b %d")
format(t2, "%A %B %D")

t3="2017-6-29";t3;class(t3)
t4=as.POSIXct(t3);t4;class(t4)      ## 轉換成時間變數:as.POSIXct()

library(data.table)
year(t1)
month(t1)
quarter(t1)
hour(t1)

# 2. 向量(vector)變數:

## 2-1. 數值向量變數:
(height <- c(175,168,172,158,166,179,182,160,155,157)) 
str(height)    #查詢向量的結構
mode(height)   #查詢向量的型態
length(height)  #查詢向量的個數

   # 建立向量的方式: c()、rep()、seq()
a1 <- c(1:50)       ;a1;str(a1) ;mode(a1)
a2 <- rep(1,50)     ;a2;str(a2) ;mode(a2)
a2.1 <-rep(c(1,3,5),3);a2.1
a2.2 <-rep(c(1,3,5),each=3);a2.2
a3 <- seq(1,50)     ;a3;str(a3) ;mode(a3)
a4 <- seq(1,50,by=2);a4;str(a4) ;mode(a4)
a1.1 <- a1[1]       ;a1.1   #呼叫向量內的第1個元素值
a1.2 <- a1[1:5]     ;a1.2   #呼叫向量內的第1個到第5個元素值
a1.3 <- a1[c(1,3,5)];a1.3   #呼叫向量內的第1、3、5個元素值
a1.4 <- a1[-1];a1.4         #刪除向量的第1個元素
a1.5 <- a1[-(1:10)];a1.5    #刪除向量的第1個到第10個元素
a1.6 <- a1[-c(1,3,5)];a1.6  #刪除向量的第1、3、5個元素
a1.7 <- a1[a1>25];a1.7      #查詢向量內元素值大於25的元素
names(a1.3)=c("元素A","元素B","元素C");a1.3 #對向量內的元素命名
a1.3[1];a1.3["元素A"]       #查詢a1.3向量的第1個元素方法

## 2-2. 文字向量變數:

(sex <- c(1,"Female","Male","Female","Male","Female","Male","Female","Female","Male"))
str(sex)    #查詢向量的結構
mode(sex)   #查詢向量的型態
length(sex) #查詢向量的個數
nchar(sex)  #查詢向量每一個元素的長度
(alphabet1<-LETTERS[c(1:26)])
(alphabet2<-letters[c(1:26)])
(month1<-month.abb[c(1:12)])
(month2<-month.name[c(1:12)])
alphabet3<-c(1:26)
alphabet4<-paste(alphabet1,alphabet3,sep="-");alphabet4
b1<-c(1,2,3,4,5,10,11,12,13,14,15,"16");b1
b2<-as.numeric(b1);b2    #將文字向量轉換成數字向量:as.numeric()
b3<-as.character(b2);b3  #將數字向量轉換成文字向量:as.character()
b4<-paste(b3,collapse = "+");b4
b5<-sample(letters[c(1:10)],100,replace = T);b5 
    #從向量中隨機抽樣:sample() 參數replace=T表示採用抽後放回方式抽樣
b5f<-table(b5); b5f;class(b5f);mode(b5f) 
     #table()是計算b5向量的次數分配表

## 2-3. 邏輯向量變數:

(semesterPass <- c(T,T,F,F,TRUE,FALSE,T,T,T,F,F,F,T,T,T))
a5<-c(1:length(semesterPass));a5
a5.1<-a5[semesterPass];a5.1


# 3. 矩陣(matrix)變數:
c1<-c(1:20)
c2<-matrix(c1,nrow=5,ncol=4,byrow=T);c2;class(c2)
dim(c2)
c3<-t(c2);c3   #將矩陣轉秩:t()
dim(c3)
c4<-c2%*%c3;c4;dim(c4) #兩矩陣相乘方法: A %*% B ,但A的列數=B的行數
c5<-c3%*%c2;c5;dim(c5)
rownames(c2)=c("x1","x2","x3","x4","x5");c2 #給定c2矩陣的列名稱
colnames(c2)=c("y1","y2","y3","y4");c2      #給定c2矩陣的行名稱
c2[1,] #呼叫c2矩陣中第1列資料
c2[,1] #呼叫c2矩陣中第1行資料

c6<-matrix(1:16,nrow = 2);c6
c7<-matrix(21:36,nrow=2);c7
c6+c7
c6-c7
c6*c7
c6/c7
c6==c7

# 4. 陣列(array)變數:
d1<-array(letters[1:26],dim = c(4,4,2));d1
dim(d1);class(d1);mode(d1)
d2<-array(1:50,dim=c(4,5,2,2));d2
dim(d2);class(d2);mode(d2)


#5. 因子(factor)變數:

(ff <- factor(substring("statistics", 1:10, 1:10), levels = letters))
as.integer(ff)      # the internal codes
(f. <- factor(ff))  # drops the levels that do not occur
ff[, drop = TRUE]   # the same, more transparently
factor(letters[1:20], labels = "su")

class(ordered(4:1)) # "ordered", inheriting from "factor"
z <- factor(LETTERS[3:1], ordered = TRUE)

## suppose you want "NA" as a level, and to allow missing values.
(x <- factor(c(1, 2, NA), exclude = NULL))
is.na(x)


#6. 串列(list)變數:

g1<-c(1:10);g1
g2<-c("yes","yes","no","no","no","yes");g2
g3<-c(T,T,T,F,F,T,T,T,T);g3
g4<-list(g1,g2,g3);g4
names(g4)<-c("編號","贊成與否","年齡較大")
g4[[1]]
g4[[1]][5]
g4$贊成與否
g4$贊成與否[3]


#7. 資料框架(data frame)變數:

name=c("Eric","Angela","Jimmy","Lennon","John","Mary","Joe","Wang","Chen","Lin")
sex=c("male","female","male","male","male","female","male","male","male","male")
age=c(17,47,47,44,28,25,38,31,25,23)
height=c(166,158,175,168,169,155,166,190,180,195)
weight=c(61,56,90,70,59,48,70,92,85,89)
survey.data=data.frame(name,sex,age,height,weight)
survey.data





