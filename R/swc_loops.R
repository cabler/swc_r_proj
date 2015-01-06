for(variable in collection){
  Do things
}

length(best_practice)
len<-0
for(v in best_practice){
  len<-len+1
}
len

values<- c(1,2,3)

total<- function(vector){
  total=0
  for(v in vector){
    total<- total+v
  }
  return(total)
}

total(values_2)

values_2<- c(3,5,10)

# creating a loop to batch analyze inflammation data

list.files(pattern=".csv") # lists all files that have the .csv in name, can be used as a vector
filenames<- list.files(pattern= "^inflammation.+\\.csv$")

for (f in filenames) {
  print(f)
  inflam_analysis(f)
}

analyze_all<- function(datapattern){
  filenames_2<- list.files(pattern= datapattern)
  for (f in filenames_2) {
    print(f)
    inflam_analysis(f)
  }
}

analyze_all("inflam")