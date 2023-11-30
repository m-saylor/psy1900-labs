# Lab 1

# 1. The function rnorm() is one method of generating random numbers in R. You tell it how many random numbers you 
# want, and it will output that many random numbers in a vector.
# Using rnorm(), generate 1000 random numbers. Furthermore, we want these numbers to have a mean of 5 and a
# standard deviation of 10. You can use the help() function to figure 
# out how the rnorm() function works.

rnorm(1000, mean = 5, sd = 10)

# 2. Save the numbers (which are contained in a vector) in a variable named "randomNumbers".

randomNumbers <- rnorm(1000, mean = 5, sd = 10)

# 3. Find the mean of the random numbers. This is a good check to make sure you wrote the original rnorm command correctly.
# Don't worry if the mean isn't exactly 5, but it should be somewhat close.

mean(randomNumbers)

# 4. Find the max value. You can search through a list of basic functions in R by running this code:
# library(help = "base")
# This website may also be very useful:
# browseURL("http://www.cyclismo.org/tutorial/R/basicOps.html")

max(randomNumbers)

# 5. Add 5 to each number. 

randomNumbers + 5

# Lab 2

# 1. Load the data from the following URL: http://www.people.fas.harvard.edu/~mair/datasets/sat.csv and save it as
# a variable called "sat". Use the function read.csv() without the "header" or "sep" arguments.

sat <- read.csv("http://www.people.fas.harvard.edu/~mair/datasets/sat.csv")

# 2. Print the first 5 rows of data to get a sense of what it contains.

head(sat, n = 5)

# 3. Visualize the SAT verbal scores across men and women using boxplots.
#   Add the title: "SAT Verbal~Gender"
#   Use the "names" argument to label the boxes (1 = men, 2 = women): names = c("M", "W")
#   Is the median score higher for men or women? Which group has a larger spread?

boxplot(sat$SATV ~ sat$gender, main = "SAT Verbal~Gender", names = c("M", "W"))


# Lab 3

# 1. To complete this homework, you should load in a dataset called "bsiq" into RStudio using the below line of code:

bsiq <- read.table("http://www.people.fas.harvard.edu/~mair/datasets/BrainSizeIQ.csv", header = TRUE, sep = "\t")

# Do not attach the dataset.

# How would you make a scatterplot with the following specifications?:
# - MRI_Count on the x-axis, FSIQ on the y-axis
# - x-axis label: "MRI pixel count"
# - y-axis label: "Wechsler IQ"

plot(bsiq$MRI_Count, bsiq$FSIQ, xlab = "MRI pixel count", ylab = "Wechsler IQ")

# 2. How would you plot the distribution of the IQ variable? Use the specifications below:
# - 20 breaks
# - x-axis label: "Wechsler IQ"
# - x-axis range: 70-150

hist(bsiq$FSIQ, breaks = 20, xlab = "Wechsler IQ", xlim = c(70, 150))

# 3. Correlation tests require that our data is roughly normally distributed. 
# Would it be reasonable to perform a correlation test on these data? 
# We have already seen a problem with the distribution in question 2 above, but let’s test it formally.
# Perform the Kolmogoroff-Smirnov test for normality on the IQ variable.

ks.test(bsiq$FSIQ, "pnorm", mean = mean(bsiq$FSIQ), sd = sd(bsiq$FSIQ))

# 4. The Kolmogoroff-Smirnov test is testing the null hypothesis that the data are normally distributed. 
# Based on the test you conducted in Question 3, what do you conclude about the null hypothesis of normality?
# To “reject the null” write the word "reject." To “fail to reject the null” write the word “fail.”

## reject 


# Lab 4

# 1. Run a simple regression to evaluate the effects of BEAUTY on SALARY.
# Save the model as an R object called "output".
# Note: Specify the 'data' argument rather than using $ notation.

output <- lm(SALARY ~ BEAUTY, data = supermodel)

# 2. Does beauty have a significant effect on SALARY? What is the p-value for BEAUTY?

# Report the p-value to two decimal places and without the first zero

## p-value = .30

# 3. What does the coefficients of the effect of Beauty mean? 

## For every 1 unit increase in Beauty, Salary rises by £160. 
## For every 1 unit increase in Beauty, Salary rises by 0.16 units. 

# 4. How much variance in SALARY is accounted for by BEAUTY?

## variance = 0.46%%

# 5. What are the confidence intervals for the coefficients?

# [What's the function call you'd use to find out?]

confint(output)

# 6. Do regression diagnostics (e.g., test the residuals). Are your inferences valid?

## No


# Lab 5

# 1. Now create a box plot for the Explicit variable. Also add a title: Explicit age bias by condition.

boxplot(IATstudy$Explicit, main = "Explicit age bias by condition")

# 2. Now create a box plot for the Explicit variable conditioned on experimental group. Don't add a title.

boxplot(IATstudy$Explicit ~ IATstudy$Condition)

# 3. Use the by() function (with NA values removed) to look at means, medians, and standard deviations by experimental condition. 
# Enter the first by() function.

by(IATstudy$Explicit, IATstudy$Condition, mean, na.rm = TRUE)

# 4. Based on the box plot and the descriptives, do you think the interventions were successful?

## No

# 6. Assumption 1: Is our DV really metric?

## No

# 7. Assumption 2: Do variances differ across groups? Use the Levene test to identify this assumption.

## No

# 8. Compute an ANOVA to test your hypothesis (and save as myANOVA). Use the data = IATstudy argument.

myANOVA <- aov(Explicit ~ Condition, data = IATstudy)