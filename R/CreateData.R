1550+2000
2+3; 5*9; 6-6
#Not a number and missing values
0/0
x<-c(1:8,NA)
x
mean(x)
mean(x,na.rm=TRUE)

#Creating a Dataframe
#Create an object named id and assign a sequence of 10 numbers
id<-1:10
#or
id<-scan()
#Create an object named name and assign a vector of names of participants in a study
name<-c("Erik","Leslie","Julian","Sara","Antonio","Lili","Rafael","Luisa","Lucinda","Beto")
name
#Create an object named age and assign a vector with each person's age
age<-c(33,32,22,20,70,60,30,37,59,41)
#Create an object named salary and assign a vector with each person's monthly salary
salary<-c(800,700,3000,2500,1000,500,3000,7000,1500,2500)
#Create a dataframe with all the variables. Name the dataframe "studydata".
studydata<-c(id,name,age,salary)
studydata
dim(studydata)<-c(10,4)
studydata
studydata<-as.matrix(studydata)
#give names to your columns
nam_column<-c("id","name","age","salary")
colnames(studydata)<-nam_column
#use some functions to estimate values within your database.  Use your subscript knowledge. For example mean and variance of each column.
print(studydata[2,3])
var(studydata[,4])

