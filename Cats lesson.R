cats<-data.frame(coat=c("calico","black","tabby"),weight=c(2.3,5.0,3.2),likes_string=c(1,0,1))
cats
write.csv(cats,file="feline.csv",row.names=FALSE)                 
cats<-read.csv(file="feline.cats")
cats$weight
cats$likes_string
cats$eyes
cats$coat
cats$weight+2
cats
cats$weight+cats$coat
c(cats$coat,cats$eyes)
typeof(cats$coat)
typeof(cats$weight)
cats
cats2<-read.csv(file="~/desktop/data-shell/feline2.csv")
cats
cats2$weight+2
typeof(cats2$weight)
typeof(cats$likes_string)
cats$likes_string+1
my_vector<-vector(length=3)
my_vector
another_vector<-vector(mode="character",length=3)
another_vector
str(cats$weight)
str(cats$coat)
str(cats$likes_string)
quiz_vector<-c(2,6,'3')
quiz_vector
re_quiz_vector<-as.numeric(quiz_vector)
re_quiz_vector
cats$likes_string<-as.logical(cats$likes_string)
cats$likes_string
re_quiz_vector<-c(re_quiz_vector,5)
re_quiz_vector
my_example<-1:5
names(my_example)<-c("a","b","c","d","e")
my_example
str(cats$weight)
str(cats$likes_string)
str(cats$coat)
my_list<-list(1+2i,TRUE,1,"ABC")
my_list
typeof(cats)
cats[,1]
cats[,2]
cats[2,]
typeof(cats[,3])
cats$coat<-as.factor(cats$coat)
typeof(cats$coat)
str(cats$coat)
str(cats$weight)
str(cats)
cats
age <- c(2,3,5,14)
age
# add a fourth age to the cats doesn't work, only 3 cats
str(age)
cats <- cbind(cats,age)
cats
nrow(cats)

newRow <- list(2, 3.3, TRUE, 9)
cats <- rbind(cats, newRow)

newRow
str(newRow)
levels(cats$coat) <-c(levels(cats$coat),"tortoiseshell")
levels(cats$coat)
str(cats)
cats$coat <- as.character(cats$coat)
str(cats$coat)
cats$coat
levels(cats$coat)

humanAge <- cats$age * 7
str(humanAge)
humanAge <- as.factor (cats$age * 7)
humanAge <- humanAge[,-5]
humanAge
str(humanAge)
cats <- cbind (cats,humanAge)

cats <- cats[-5,]
cats <- na.omit (cats)
cats

cats <- cats[,-4]
cats

cats <- rbind(cats, cats)
cats

rownames (cats) <- NULL
cats

gapminder <- read.csv("~/desktop/data-shell/gapminder_data.csv")
gapminder
#ggplot lesson
#carpentry workshop
#3-22-19
#Sharon Solis teaching
