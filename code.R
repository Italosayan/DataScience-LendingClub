#function that filters numberic variables
getNumericColumns<-function(t){
    tn = sapply(t,function(x){is.numeric(x)})
    return(names(tn)[which(tn)])
}
library(corrplot)
#correlation of numeric variables
corrplot(cor(dataLC[getNumericColumns(dataLC)],use="na.or.complete"))
