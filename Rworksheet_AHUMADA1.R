# Worksheet 1

#Vector

age <- c (34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
            35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 
            50, 37, 46, 25, 17, 37, 42, 53, 41,51, 
            35, 24, 33, 41)

#1 How many data points?
  length(age)
  
#R code and output
  age <- length(age)
  age

#2 Find the reciprocal of the values for age
    reciprocal <-1/age
    reciprocal

#3 Assign also newAge <-c(age, 0 age)
    newAge <-c(age, 0, age)
    newAge
    
#What happened to the new_age? 
    #newAge will have the twice of length of the original age vector

#4 Sort the values for age
    sortAge <-sort(age)
    sortAge
    
#5  Find the minimum and maximum value for age.
    minAge <- min(age)
    minAge
    maxAge <- max(age)
    maxAge

#6  Set up a vector named data, consisting of 2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4, 2.7
    #a.
    vect<-c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3, 2.5, 2.3, 2.4, 2.7)
      datap2<-length(vect)
      datap2
    #b
      datap2 <- length(vect)
      datap2
    
#7  Generates a new vector for data where you double every value of the data. | What happen to the data?
    newData <-c(1,2,3,4,5,6,7,8,9,10)
    doubleData<- newData *2
    doubleData
    
#8 Generate a sequence for the following scenario:
    # 8.1
    int1to100 <- seq(1,100)
    int1to100
    # 8.2
    numfrom20to60 <- seq(20,60)
    numfrom20to60
    # 8.3
    meanOfnumfrom20to60 <- mean(numFrom20to60)
    meanOfnumfrom20to60
    # 8.4
    seqOf51to91 <- seq(51,91)
    sumOfNumfrom51to91 <- sum(seqOf51to91)
    sumOfNumfrom51to91
    # 8.5
    intFrom1to1000 <- seq(1,1000)
    intFrom1to1000
    
    # 8.a
    # sum of all data points from 8.1 to 8.4
    allDataPoints <- length(intFrom1to100) + length(numFrom20to60) + length(meanOfNumFrom20to60) + length(sumOfNumFrom51to91)
    allDataPoints
    
    # 8.c
    new_85 <- seq(1,10)
    maxUntil10 <- max(new_85)
    maxUntil10
    
    # 9
    new_vec <- Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
    new_vec
    
    # 10
    int_100_1 <- seq(100, 1)
    int_100_1
    
    # 11
    natural_num_25 <- Filter(function(i) { all(i %% 3 == 0 || i %% 5 == 0) }, seq(24))
    natural_num_25
    sum_25 <- sum(natural_num_25)
    sum_25
    
    # 11.a
    totl_data_pts <- length(int_100_1) + length(natural_num_25) + length(sum_25)
    totl_data_pts
    
    # 12
    # 8.1
    intFrom1to100 <- seq(1,100)
    intFrom1to100
    # 8.2
    numFrom20to60 <- seq(20,60)
    numFrom20to60
    # 8.3
    meanOfNumFrom20to60 <- mean(numFrom20to60)
    meanOfNumFrom20to60
    # 8.4
    seqOf51to91 <- seq(51,91)
    sumOfNumFrom51to91 <- sum(seqOf51to91)
    sumOfNumFrom51to91
    # 8.5
    intFrom1to1000 <- seq(1,1000)
    intFrom1to1000
    
    # 8.a
    # sum of all data points from 8.1 to 8.4
    allDataPoints <- length(intFrom1to100) + length(numFrom20to60) + length(meanOfNumFrom20to60) + length(sumOfNumFrom51to91)
    allDataPoints
    
    # 8.c
    new_85 <- seq(1,10)
    maxUntil10 <- max(new_85)
    maxUntil10
    
    # 9
    new_vec <- Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
    new_vec
    
    # 10
    int_100_1 <- seq(100, 1)
    int_100_1
    
    # 11
    natural_num_25 <- Filter(function(i) { all(i %% 3 == 0 || i %% 5 == 0) }, seq(24))
    natural_num_25
    sum_25 <- sum(natural_num_25)
    sum_25
    
    # 11.a
    totl_data_pts <- length(int_100_1) + length(natural_num_25) + length(sum_25)
    totl_data_pts
    
    # 12
    { x <- 0
      + x + 5 + }
    
    # There is a syntax mistake in the code.
    # R interprets it as two plus signs placed side by side and a closing bracket.
    # Without an equivalent opening bracket, taking away the extra plus sign at the end will make it work.
    # Treat it like a block of code
    #for it to run the code should be : x <- 2, {sum <- 0 + x + 5}
    
    
    # 13
    score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
    score
    
    element_2 <- score[2]
    element_3 <- score[3]
    
    element_2
    element_3
    
    # 14
    a = c(1,2,NA,4,NA,6,7)
    a
    print(a, na.print="999")
    
    # the code replaces NA with 999 and prints the vector "a"
    
    # 15
    name = readline(prompt="Input your name: ")
    age = readline(prompt="Input your age: ")
    print(paste("My name is",name, "and I am",age ,"years old."))
    print(R.version.string)
    
    # After the user inputs their name and age, the outcome will be determined by what they have input. A message including their name and age will be printed, and then the R version information from "R.version.string" will be printed.
    
    