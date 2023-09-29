#Worksheet #2

#1 Create a vector using : operator
# a. Sequence from -5 to 5. Write the R code and its output.
# Describe its output.

negative5to5<-c(-5:5)
negative5to5

# It generates numbers from -5 to 5


#b. x <- 1:7. What will be the value of x?

x <- 1:7
x

# value of x: 1 2 3 4 5 6 7

#Create a vector using seq() function
# a. seq(1, 3, by=0.2) # specify step size

VectorSeq <-seq(1,3,by=0.2)
VectorSeq

# Write the R script and its output. Describe the output.
# The output is 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0 the numbers have a step size of 0.2 in between

Factoryworkers <- c (34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
                     22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
                     24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
                     18.)
Factoryworkers 

Factoryworkers[(3)]
Factoryworkers [c(2,4)]


#3 a. Access 3rd element, what is the value?
# 22

# b. Access 2nd and 4th element, what are the values?
# 28 and 36

# c. Access all but the 4th and 12th element is not included. Write the R script and its output.
Factoryworkers [c(1:3,5:11,13:50)]
# Output 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18


#4 *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).



#a. Print the results. Then access x[c("first", "third")].
#Describe the output.

names
names[c("first", "third")]

#The output shows that results just printed the word first and third

#b.
names<- c(first=3, second=0, third=9)
names


#5 Create a sequence x from -3:2.
x<-seq(-3,2)
x

#a. Modify 2nd element and change it to 0;
x[2] <- 0
x

#Describe the output.
# Second number changes and turn to 0


#b.Write the code and its output.
x<-seq(-3,2)
x
x[2] <- 0
x
# output: -3 0 -1 0 1 2


#6 *The following data shows the diesel fuel purchased by Mr. Cruz.
# Month Jan Feb March Apr May June
# Price per liter (PhP) 52.50 57.25 60.00 65.00 74.25 54.00
# Purchase–quantity(Liters) 25 30 40 50 10 45


#a.Create a data frame for month, price per liter (php)and purchase-quantity (liter). Write the R scripts and its output.

Purchases <-data.frame(
  
  Month = c("Jan", "Feb", "March", "Apr", "May", "June"),
  Priceperliter = c(52.50,57.25,60.00,65.00,74.25,54.00),
  Purchasequantity = c(25,30,40,50,10,45)
) 
Purchases
View(Purchases)

#b.What is the average fuel expenditure of Mr. Cruz from
#Jan to June? Note: Use ‘weighted.mean(liter, purchase)‘.
# Write the R scripts and its output.

average_expenditure <-weighted.mean(Purchases$Priceperliter , Purchases$Purchasequantity)
average_expenditure

#Output: 59.2625

#7.a

data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))

data

#b Results shows the built in datasets of rivers in north america and shows that length,sum,mean,median,var,sd,min,max of rivers


#output 141.0000 83357.0000 591.1844 425.0000 243908.4086 493.8708 135.0000 3710.0000


celebrities <- c("Tom Cruise","Rolling Stones","Oprah Winfrey","U2","Tiger Woods","Steven Spielberg","Howard Stern","50 Cent","Cast of the Sopranos","Dan Brown","Bruce Springsteen","Donald Trump","Muhammad Ali","Paul McCartney","George Lucas","Elton John","David Letterman","Phil Mickelson","J.K Rowling","Bradd Pitt","Peter Jackson","Dr. Phil McGraw","Jay Lenon","Celine Dion","Kobe Bryant")

power_rankings <- c(1, 2, 3, 4, 5, 6, 7 ,8 , 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)

pay_amounts <- c(67, 90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31 )




celeb_data <- data.frame(Celebrity = celebrities, Power_Ranking = power_rankings, Pay_Amount = pay_amounts)

View(celeb_data)

#8 25 most powerful celebrities and their annual pay.


#8 A Create a vector

celebrities <- c("Tom Cruise","Rolling Stones","Oprah Winfrey","U2","Tiger Woods","Steven Spielberg","Howard Stern","50 Cent","Cast of the Sopranos","Dan Brown","Bruce Springsteen","Donald Trump","Muhammad Ali","Paul McCartney","George Lucas","Elton John","David Letterman","Phil Mickelson","J.K Rowling","Bradd Pitt","Peter Jackson","Dr. Phil McGraw","Jay Lenon","Celine Dion","Kobe Bryant")

power_rankings <- c(1, 2, 3, 4, 5, 6, 7 ,8 , 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)

pay_amounts <- c(67, 90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31 )


celebData <- data.frame(Celebrity = celebrities, Power_Ranking = power_rankings, Pay_Amount = pay_amounts)

View(celebData)

#8. B Change power ranking of J.K Rowling
celebData$Power_Ranking[celebData$Celebrity == "J.K Rowling"] <- 15
celebData$Pay_Amount[celebData$Celebrity == "J.K Rowling"] <- 90
celebData


View(celebData)


#8. C Create an excel file

write.csv(celebData, "/cloud/project/PowerRanking.csv")
PowerRanking <- read.csv("PowerRanking.csv")
PowerRanking


#8. D Access the rows 10 to 20

Rows10to20 <- celebData[10:20, ]
save(Rows10to20, file = "Ranks.RData")
Rows10to20

#9 Download the Hotels-Vienna

#9 A R script 

install.packages("readxl")

library(readxl)

excelFile <- read_excel("hotels-vienna.xlsx")
excelFile
View(excelFile)

#9 B Dimension and its output

dimensionFile <- dim( excelFile)
dimensionFile

# The output is : 428 rows and 24 columns

#9 C select columns

colnames(excelFile)
selectCols <- excelFile[,c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
View(selectCols)

#9 D Save the data as new.Rdata

save(selectCols, 
     file="new.RData")
View(selectCols)

#9 E Display the first six rows and last six rows

load("new.RData")
selectCols

firstSix <- head(selectCols)
lastSix <- tail(selectCols)

firstSix
lastSix

# 10. A Create list of ten vegetables

veggies <- list("Spinach", "Carrots", "Tomato", "Kale", "Peas",
                "Corn", "Broccoli", "Lettuce", "Garlic", "Onions")

veggies

# 10. B Add 2 additional vegetables

veggies <- append(veggies, c("Sprouts", "Bell peppers"))
veggies

# 10. C Add 4 additional vegetables

veggies <- append(veggies, c("Cauliflower", "Seaweed", "Beet", "Green Pepper"), after = 5)

veggieLength <- length(veggies)
veggieLength     

veggies

# 10. D remove the vegetables after index 5

veggies <- veggies[c(-5,-10,-15)]
newVeggie <- length(veggies)
newVeggie
veggies