library(remotes)
library(devtools)
install.github("vqv/ggbiplot")
library(ggbiplot)
install.packages("factoextra")
ggbiplot(pr.out)

library(factoextra)
fviz_cluster(km.out)

fviz_cluster(km.out, data=x)

install.packages("stringr")
library(stringr)
histf<-function(z){
  feature=str_replace_all(deparse(substitute(z)),"[data$]","")
i=0
i=i+1
X[[1]]=feature
ggplot(data) +
aes(x = z) +
geom_histogram(bins = 14L, fill = "#497AD2", colour = "blue") +
labs(x =  paste("Feature: ",feature),y = "No Of Obeservation",
                            title = paste("Histogrem Plot Of ",feature),
                            subtitle = paste("Distribution Of Feature ",feature),
                            caption = "wine dataset") +
                     theme_grey()
}

histf(data$Alcohol)


boxf<-function(z){
  feature=str_replace_all(deparse(substitute(z)),"[data$]","")
  i=0
  i=i+1
  X[[1]]=feature
  ggplot(data) +
    aes(x = z) +
    geom_boxplot(shape = "circle", fill = "#497AD2", colour = "blue") +
    labs(x =  paste("Boxplot Plot Of: ",feature),y = "No Of Obeservation",
         title = paste("Boxplot Plot Of ",feature),
         subtitle = paste("Distribution Of Feature ",feature),
         caption = "wine dataset") +
    theme_grey()
}










