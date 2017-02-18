library(plyr)
library(dplyr)
library(plotly)
cwurData <- read.csv("cwurData.csv")

brics <- cwurData %>%
  filter(country %in% c("Brazil", "Russia", "India", "China", "South Africa")) %>%
  select(publications, score, alumni_employment, patents, institution, country) %>%
  group_by(institution, country) %>%
  summarise_each(funs(mean))



scaleFuncMin <- function(x) {
  minX <- min(x)
  for (i in 1:length(x)) {
    if(i==minX){
      x[i] <- 100
    }
    else {
      x[i] <- round((minX/x[i])*100, 2)
    }
  }
  return(x)
}

scaleFuncMax <- function(x) {
  maxX <- max(x)
  for (i in 1:length(x)) {
    if(i==maxX){
      x[i] <- 100
    }
    else {
      x[i] <- round((x[i]/maxX)*100, 2)
    }
  }
  return(x)
}


for (i in 1:ncol(brics)) {
  if(!names(brics[,i]) %in% c("institution", "country","score")){
    brics[,i] <- scaleFuncMin(brics[,i])
  }
  else if(names(brics[,i]) == "score") {
    brics[,i] <- scaleFuncMax(brics[,i])
  }
}


chart <- brics %>%
  plot_ly(y       =    ~publications, 
          x       =    ~score, 
          color   =    ~country, 
          size    =    ~alumni_employment,
          text    =    ~paste("Alumni Employment: ", alumni_employment, 
                              "</br> University: ", institution),
          mode    =    "markers",
          type    =    "scatter",
          marker  =    list(sizeref=0.1, sizemode="area"))
print(chart)