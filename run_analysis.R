run_analysis<-function(){
    library(dplyr)
    library(reshape2)
    rawdata_test_subject<-read.table("./raw data/test/subject_test.txt",col.names="Subject")
    rawdata_train_subject<-read.table("./raw data/train/subject_train.txt", col.names="Subject")
    rawdata_subject<-rbind(rawdata_test_subject,rawdata_train_subject)


    features<-read.table("./raw data/features.txt",colClass="character")
    names_of_features<-features[,2]
    rawdata_test_X<-read.table("./raw data/test/X_test.txt",col.names=names_of_features)
    rawdata_train_X<-read.table("./raw data/train/X_train.txt",col.names=names_of_features)
    rawdata_X<-rbind(rawdata_test_X,rawdata_train_X)


    rawdata_test_Y<-read.table("./raw data/test/Y_test.txt",col.names="Activity")
    rawdata_train_Y<-read.table("./raw data/train/Y_train.txt",col.names="Activity")
    rawdata_Y<-rbind(rawdata_test_Y,rawdata_train_Y)


    rawdata<-cbind(rawdata_subject, rawdata_Y, rawdata_X)
    head(rawdata[,1:5],3)
    
    indices_mean<-grep("mean",names(rawdata))
    indices_std<-grep("std",names(rawdata))
    col_needed<-c(1,2,indices_mean,indices_std)
    rawdata_2<-rawdata[,col_needed]
    
    activities<-read.table("./raw data/activity_labels.txt")
    activity_names<-activities[,2]
    rawdata_2[,2]<-factor(rawdata_2[,2], levels=c(1,2,3,4,5,6),labels = activity_names)
    rawdata_3<-rawdata_2
    
    rawdata_4<-rawdata_3
    
    temp<-melt(rawdata_4,id=c("Subject","Activity"),measure.vars=names(rawdata_4)[3:81])
    tidydata<-dcast(test,Subject+Activity~variable,mean)
    write.table(tidydata,file="tidydata.txt",row.name=FALSE)
}