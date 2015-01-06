# How to create programs in R

# using assignment operators

x <- 5
x
x=8

surveys<- read.csv(file="surveys.csv")
inflammation_02<- read.csv("inflammation-02.csv", header=FALSE)
head(inflammation_02)
class(inflammation_02)
dim(inflammation_02)
inflammation_02[30,2]
inflammation_02[,2]
inflammation_02[1:4, 1:5]
mean(inflammation_02[,7])
min(inflammation_02[,7])
median(inflammation_02[,7])
std(inflammation_02[,7])
avg_day_inflam_2<-apply(inflammation_02, MARGIN=2, mean)
plot(avg_day_inflam_2)
max_day_inflam_2<-apply(inflammation_02, MARGIN=2, max)
plot(max_day_inflam_2)
min_day_inflam_2<-apply(inflammation_02, MARGIN=2, min)
plot(min_day_inflam_2)
std_day_inflam_2<-apply(inflammation_02, MARGIN=2, sd)
plot(std_day_inflam_2)
plot(avg_day_inflam_2)

fahr_to_kelvin<- function(temp){
  kelvin<-((temp-32)*(5/9))+273.15
  return(kelvin)
}

fahr_to_kelvin(7)

kelvin_to_celcius<- function(temp){
  celcius<- temp-273.15
  return(celcius)
}

kelvin_to_celcius(300)

fahr_to_celcius<- function(temp){
  kelv_temp<- fahr_to_kelvin(temp)
  celc_temp<- kelvin_to_celcius(kelv_temp)
  return(celc_temp)
}

fahr_to_celcius(212)

vec_1<- c(1,2,3)
#characters instead of numbers
vec_1<- c("1","2","3")

best_practice<- c("Write", "programs", "for", "people", "not", "computers")
asterisk<- "***"
new<- c(best_practice, asterisk)

fence<- function(original, wrapper){
  result<- c(wrapper, original, wrapper)
  return(result)
}

fence(best_practice, asterisk)

# Creating analysis function to complete analysis of inflammation

avg_day_inflam_2<-apply(inflammation_02, MARGIN=2, mean)
plot(avg_day_inflam_2)
max_day_inflam_2<-apply(inflammation_02, MARGIN=2, max)
plot(max_day_inflam_2)
min_day_inflam_2<-apply(inflammation_02, MARGIN=2, min)
plot(min_day_inflam_2)

inflam_analysis<- function(data){
  inf_data<- read.csv(file= data, header=FALSE)
  avg_day_inf<-apply(inf_data, MARGIN=2, mean)
  plot(avg_day_inf, main= "Mean")
  max_day_inf<-apply(inf_data, MARGIN=2, max)
  plot(max_day_inf, main= "Max")
  min_day_inf<-apply(inf_data, MARGIN=2, min)
  plot(min_day_inf, main= "Min")
  
}
inflam_analysis("inflammation-04.csv")

for(variable in collection){
  Do things
}