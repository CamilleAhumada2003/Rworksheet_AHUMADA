#1. Create a data frame for the table below. Show your solution.
#a. Compute the descriptive statistics using different packages (Hmisc and pastecs).
#Write the codes and its result.

#dataframe
StudentScore <- data.frame(Student = c(1,2,3,4,5,6,7,8,9,10),
                           PreTest = c(55,54,47,57,51,61,57,54,63,58),
                           PostTest = c(61,60,56,63,56,63,59,56,62,61))

StudentScore

#a.Compute the descriptive statistics using different packages (Hmisc and pastecs).
install.packages("htmltools")

library(Hmisc)
library(pastecs)

HmiscStats <- describe(StudentScore[,c("PreTest","PostTest")])
HmiscStats

# Calculate descriptive statistics using pastecs
pastecsStats <- stat.desc(StudentScore)
pastecsStats



#2. The Department of Agriculture was studying the effects of several levels of a fertilizer on the growth of a plant. For some analyses, it might be useful to convert the fertilizer
#levels to an ordered factor.

library(dplyr)

fertilizer_levels <- c(10,10,10, 20,20,50,10,20,10,50,20,50,20,10)

orderedFactor <- factor(fertilizer_levels, levels = unique(fertilizer_levels))

basicStats <- summary(orderedFactor)
basicStats

#3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study the ex-
#ercise levels undertaken by 10 subjects were “l”, “n”, “n”, “i”, “l” , “l”, “n”,“n”, “i”, “l” ; n=none, l=light, i=intense

#a. What is the best way to represent this in R?


excercise_levels <- c("n", "l", "n", "n", "l", "l", "n", "n", "i", "l")

exercise_factor <- factor(excercise_levels, levels = c("n","l","i"))


basic_stats <- summary(exercise_factor)
basic_stats

#4. Sample of 30 tax accountants from all the states and territories of Australia and their
#individual state of origin is specified by a character vector of state mnemonics as:

state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")

#a. Apply the factor function and factor level. Describe the results.
# A factor with levels matching the distinct values in the original character vector will be the outcome. Each level corresponds to a distinct state or region and is arranged alphabetically.

```{r}
state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")

stateFactor <- factor(state)
stateFactor

summaryState <- summary(stateFactor)
summaryState

#5. From #4 - continuation: Suppose we have the incomes of the same tax accountants in another vector (in suitably
#large units of money)

incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)

#a. Calculate the sample mean income for each state we can now use the special function
#tapply():


incomes <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)

mean_Income <- tapply(incomes, stateFactor, mean)
mean_Income

#b.Copy the results and interpret.

#ans.
#act      nsw       nt      qld       sa      tas      vic       wa 
#44.50000 57.33333 55.50000 53.60000 55.00000 60.50000 56.00000 52.25000 
#The presented results depict the average income for individual states, with each numerical figure representing the mean income of a specific state. The associated names correspond to the levels within the stateFactor factor.

#6.Calculate the standard errors of the state income means (refer again to number 3)
#stdError <- function(x) sqrt(var(x)/length(x))

#a. What is the standard error? Write the codes.

stdError <- function(x) sqrt(var(x)/length(x))
incster <- tapply(incomes, state, stdError)
standardError <- tapply(incomes, stateFactor, stdError)
standardError

#b. Interpret the results.

#The vector incster includes the standard errors for each state's projected mean income.
#The standard error reflects the variability of the sample mean. Larger standard errors indicate greater variability.

#7. Use the titanic dataset.

#a. subset the titatic dataset of those who survived and not survived. Show the codes and its result.

library(titanic)

data("titanic_train")
titanicdata <- titanic_train

str(titanicdata)

subsetSurvived <- subset(titanicdata, Survived == 1)


subsetDead <- subset(titanicdata, Survived == 0)
subsetDead

head(subsetSurvived)
head(subsetDead)


#8. The data sets are about the breast cancer Wisconsin. The samples arrive periodically as Dr. Wolberg reports his clinical cases. The database therefore reflects this chronologi https://drive.google.com/file/d/16MFLoehCgx2MJuNSAuB2CsBy6eDIIr-u/view?usp=drive_link)

#d. Compute the descriptive statistics using different packages. Find the values of:
#d.1 Standard error of the mean for clump thickness.
#d.2 Coefficient of variability for Marginal Adhesion.
#d.3 Number of null values of Bare Nuclei.
#d.4 Mean and standard deviation for Bland Chromatin
#d.5 Confidence interval of the mean for Uniformity of Cell Shape


library(readr)
library(rcompanion)
breastcancer_wisconsin <- read_csv("breastcancer_wisconsin.csv",col_types = cols(
  id = col_double(),
  clump_thickness = col_double(),
  size_uniformity = col_double(),
  shape_uniformity = col_double(),
  marginal_adhesion = col_double(),
  epithelial_size = col_double(),
  bare_nucleoli = col_character(),
  bland_chromatin = col_double(),
  normal_nucleoli = col_double(),
  mitoses = col_double(),
  class = col_double()
))
breastcancer_wisconsin

#d.1 Standard error of the mean for clump thickness.
clump_thickness <- sd(breastcancer_wisconsin$clump_thickness) / sqrt(length(breastcancer_wisconsin$clump_thickness))
cat("d.1 Standard Error of the Mean for Clump Thickness:", clump_thickness, "\n")

# d.2 Coefficient of variability for Marginal Adhesion.
marginal_adhesion <- sd(breastcancer_wisconsin$marginal_adhesion) / mean(breastcancer_wisconsin$marginal_adhesion) * 100
cat("d.2 Coefficient of Variability for Marginal Adhesion:", marginal_adhesion, "%\n")

# d.3 Number of null values of Bare Nuclei.
values_bare_nuclei <- sum(is.na(breastcancer_wisconsin$bare_nucleoli))
cat("d.3 Number of Null Values in Bare Nuclei:", values_bare_nuclei, "\n")

# d.4 Mean and standard deviation for Bland Chromatin.
mean_bland_chromatin <- mean(breastcancer_wisconsin$bland_chromatin)
mean_bland_chromatin
sd_bland_chromatin <- sd(breastcancer_wisconsin$bland_chromatin)
cat("d.4 Mean for Bland Chromatin:", mean_bland_chromatin, "\n")
cat("   Standard Deviation for Bland Chromatin:", sd_bland_chromatin, "\n")


# d.5 Confidence interval of the mean for Uniformity of Cell Shape.
uniformity_of_cell_shape <- t.test(breastcancer_wisconsin$shape_uniformity, conf.level = 0.95)$conf.int
cat("d.5 Confidence Interval for the Mean of Uniformity of Cell Shape:", uniformity_of_cell_shape, "\n")


#d. How many attributes?

# There are 11 attributes in the data set.


#e. Find the percentage of respondents who are malignant. Interpret the results


percentage_malignant <- (sum(breastcancer_wisconsin$class == "malignant")/ nrow(breastcancer_wisconsin)) * 100
cat("The percentage of respondents who are malignant are: ",percentage_malignant,"%")
```
# 9. Export the data abalone to the Microsoft excel file. Copy the codes.
install.packages("AppliedPredictiveModeling")
library("AppliedPredictiveModeling")
view(abalone)
head(abalone)
summary(abalone)

#install.packages("AppliedPredictiveModeling")
library("AppliedPredictiveModeling")

data("abalone")

#View(abalone)
head(abalone)
summary(abalone)

#export

library(xlsx)

#write.xlsx(abalone, "abalone.xlsx")
