

## 1. The function rnorm() is one method of generating random numbers in R. You tell it how many random numbers you 
## want, and it will output that many random numbers in a vector.
## Using rnorm(), generate 1000 random numbers. Furthermore, we want these numbers to have a mean of 5 and a
## standard deviation of 10. You can use the help() function to figure 
## out how the rnorm() function works.

rnorm(1000, mean = 5, sd = 10)


## 2. Save the numbers (which are contained in a vector) in a variable named "randomNumbers".

randomNumbers <- rnorm(1000, mean = 5, sd = 10)


## 3. Find the mean of the random numbers. This is a good check to make sure you wrote the original rnorm command correctly.
## Don't worry if the mean isn't exactly 5, but it should be somewhat close.

mean(randomNumbers)


## 4. Find the max value. You can search through a list of basic functions in R by running this code:
## library(help = "base")
## This website may also be very useful:
## browseURL("http://www.cyclismo.org/tutorial/R/basicOps.html")

max(randomNumbers)
