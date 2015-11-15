complete <- function(directory, id = 1:332) {
  files_list <- list.files(directory, full.names = TRUE)
  +       files_toread <- files_full[id] 
  +       output <- data.frame(id = id, nobs = 0)
  +     for (i in id) { 
    +         tmp <- read.csv(files_toread[i]) # read the data
    +         nobs <- sum(complete.cases(tmp)) # number of complete cases
    +         output[i, "nobs"] <- nobs
    +     }
  +     output