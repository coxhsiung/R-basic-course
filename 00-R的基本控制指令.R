
setwd("D:/edu-R")    #採用絕對路徑設定工作位置
getwd()
setwd("./xx-test")   #採用相對路徑方式，依目前工作位置向下找資料夾xx-test
getwd()
setwd("./01-data")    #錯誤:因目前向下找不到資料夾01-data
setwd("../01-data")   #正確:往上一層的資料夾才有01-data資料夾
getwd()

dir.exists("01-data") #檢查目前工作夾是否有01-data的資料夾
dir.create("xx-test") 
dir()
list.dirs()
list.files("01-data")
rm(list=ls())    #清空 R環境的所有變數與函數

file.path("c:", "Program Files", "R")
R.home()  #可以顯示 R 的安裝路徑
basename("C:/Users/GTWang/Documents.xlsx") #可以過濾路徑
rm(x1) #刪除物件x1

xx1=file.choose()  #採用視窗選擇一個檔案，xx1可以儲存路徑與名稱
xx2=choose.files() #採用視窗選擇多個檔案，xx2可以儲存路徑與名稱


eval(parse(text="5+5")) #執行文字資料成為指令


Sys.setlocale("LC_CTYPE", "cht")  #設定Console 中文

file.create();dir.create()
file.exists();dir.exists()
file.remove()
file.rename(from,to)
file.append(file1,file2)
file.copy()
file.symlink(from,to)
Sys.juction(from,to)

substr(xx,from1,to) #擷取文字變數xx，從from1的位置擷取到to的位置4
strsplit() #分割文字變數，只不過結果變成list變數
nchar() #算出文字變數內容的長度

search() #查看目前環境中已開啟的套件名稱
environment() #查看目前所在的環境名稱
parent.frame()
parent.env(environment())  #查看目前所在環境的父環境名稱
################################
parent.call<-function(e){
     print(e)
    if(is.environment(e) & !identical(emptyenv(),e)){
         parent.call(parent.env(e))
       }
}
e1 <- new.env()
parent.call(e1)   #查看目前整體環境空間的層次結構:
## environment: 0x00000000192203a8
## environment: R_GlobalEnv
## environment: package:asbio
## environment: package:tcltk
## environment: package:moments
## environment: package:plyr
## environment: package:DBI
##  ...
## environment: 0x000000000c1b8c38
## environment: package:stats
## environment: package:graphics
## environment: package:grDevices
## environment: package:utils
## environment: package:datasets
## environment: package:methods
## environment: 0x000000000958ace8
## environment: base
## environment: R_EmptyEnv

############################################################
##揭开R语言中环境空间的神秘面纱
## http://blog.fens.me/r-environments/

######################################################
######################################################
# environment()函数，来查看封闭环境

## 關於繪圖的控制
dev.off() #清除繪圖視窗
windows() #開啟繪圖視窗





