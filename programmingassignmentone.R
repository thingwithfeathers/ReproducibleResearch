
}

My code was this which entered into an empty data frame dat.
for( i in id){
  sum<-sum(complete.cases(read.csv(files[i])))
  dat<-rbind(dat,sum)
}
final<-data.frame()
final<-cbind(id=id, nobs=dat)
I then put that info into another data frame with: data.frame
bob<- (cbind(id=id, nobs=dat)
       complete<-function(directory, id=1:332) {
         +     files_list<-list.files(directory, full.names=TRUE)
         +     df<-data.frame()
         +     for (i in id) {
           +         sum<-sum(complete.cases(read.csv(files_list[i])))
           +         df<-rbind(df, sum)
           +     }
         +     nobs<-nrow(sum)
         +     final<-data.frame("ID" =i, "nobs" =nobs)
         +     final<-cbind(nobs, sum)
         + }
       > complete("specdata", 1:2)c)

I originally was trying to change the col names in the for function which gave an error and then I was trying to change the col names above my new data frame Bob.  Once I used colnames(bob)<- c("id", "nobs")) under Bob, everything was fine.  