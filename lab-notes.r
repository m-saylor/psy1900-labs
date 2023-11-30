#  Psychology 1900
#  Introduction to Statistics for the Behavioral Sciences
#  Lab Notes

#  R is a statistical software package. It's free. Download!
#
#  R download link: http://cran.r-project.org/
#
#  It doesn't really matter which mirror you use, but the closer, the faster the download.
#
#  https://cran.r-project.org/web/packages/available_packages_by_date.html
#  Task Views
#
#  RStudio is a program that gives us a useful interface for working in R. 
#  We'll be using it this semester. It's free, too!
#
#  RStudio download link: http://www.rstudio.com/products/rstudio/download/

#  R is a programming language. This means you write lines of R code, which instructs the computer to complete
#  various tasks: calculating numbers / solving mathematical expressions, saving information (e.g., numbers) as variables, etc.

#  For example, a very basic line of code might be the following (don't attempt to execute it just yet):

3 + 5

#  Here you are telling R to compute and return the answer to "3 + 5".
#  In order to execute this line of code (or any line of code in R), hit Control-Enter (PC) or Command-Enter (Mac).
#  Note: From now on, we'll use C-Enter to refer to this command. It saves me typing. Try here:

3 + 5  # hit C-Enter, then look in the Console for the answer

#  You're probably wondering what the #'s are for, right?
#  The # is used to tell R that everything after the # is a comment, and should not be executed as a line of code.  
#  So, anytime you want to write a note to yourself in your code, like what I'm doing right now,
#  you need to start the comment with #. A comment can start anythere -- it can be a whole line,
#  just like this line I'm writing here. Or it can follow a command on the same line, as this (execute both lines):

3 + 5 # R is ignoring this text
3 + 5   R is not ignoring this text

#  You get an error message on the second one because R thinks that the whole line is a command, but it
#  doesn't know how to compute that command.

#  As you can see by these examples, R is essentially a calculator.

#  Execute the following lines of code (C-Enter) and look in the Console for the answer:

4 + 3 # hit C-Enter for each line
4 - 3
-4 + 3
4 * 3
4 / 3
4 ^ 3         # you can also use: 4 ** 3
(4 + 3) * 4   # wrap inner operations with parentheses, just like in regular math

#  One thing that makes R more special than a normal calculator, however, is that we can store informaiton (e.g., numbers)
#  as a variable with a name of our choosing. By saving the number (or other info) as a variable, we can access it
#  at ANY time simply by typing in the name.
#
#  The syntax for creating a variable is:
#  your_variable_name <- some_value   
#
#  The <- thing is the assignment operator in R. It basically means: put whatever is on
#  the right side into the variable that I have on the left side.
#
#  Here are some examples:

a <- 3       # remember to hit C-Enter!
b <- a + 2   # remember to hit C-Enter!

#  Nice--you just made two variables, a and b. Here's what happened:
#
#  The first line makes 'a' equal to the number 3.
#
#  The second line is a little trickier. It makes b equal to whatever a is, plus 2. 
#
#  But R knows you just told it that a = 3. So b = 3 + 2 = 5.
#
#  You might have looked into the Console looking for R to compute the value a + 2, but it didn't.
#  Why? Because the line of code you execute wasn't telling R to tell you the answer, this line of code
#  just tells R to save the value of a + 2 as 'b'. If you want to see the output of a variable in your 
#  Console, just type its name and hit C-Enter.

a   # C-Enter
b   # C-Enter

#  You'll see as we go on that you can use variables as building blocks like this.
#  R remembers all the variables you've created in a session.
#  If you want to check the variables that you have saved, you can check under
#  "Global Environment" in the top right corner.

#  R is case-sensitive. Try entering these next two lines of code:

a
A

#  "Error: object 'A' not found", right? Why did you get that error message?
#  If it's easier for you, you can just always use lowercase variables. A lot of programmers do.

#  If you set 'a' as something else later on, then it's not equal to 3 anymore. Try this:

a       # you should get 3--why?
a + 2   # 3 + 2 = 5
a <- 4  
a + 2   # you should get 6--why?

#  It's fine to do that, but it can be confusing to keep giving new values to
#  the same variable. Usually it's not the best idea.
#  You can make as many variables as you want, with any names that you want!
#  So make a new one whenever you have a new value to store.

this_is_probably.theLongestAND.weirdest___Variable..nameIhAvE____evermade. <- 101

this_is_probably.theLongestAND.weirdest___Variable..nameIhAvE____evermade.

#  Important note 1: Please don't EVER create variables like that. It was only a demonstration. 
#  More important note 2: You can use upper- and lower-case letters, underscores ("_"), periods ("."),
#  and numbers in variable names. Numbers can't begin a variable name.

#  Variables don't have to only store numbers. 
#  For now, we'll just focus on three types of information you can store in a variable:

# 1. Numbers
n.1 <- 12
n.2 <- 12.01

# 2. Strings ('String' in computer-speak just means words, letters, etc.)

s.1 <- 'hello'          # You have to put strings in quotes. 
s.2 <- "Spring Fling"   # Single quotes or double quotes--doesn't matter.
s.3 <- "12"             # If you put a number in quotes, it counts as a string.
s.3 * 2                 # These are NOT stored as numbers anymore.

#  Now let's get more practice using variables in our calculations:
#  Enter each line of code, but first try to predict ahead of time what will come out.

x <- 5
y <- 4
x + y

perfect <- 10
x + perfect

fail <- 0
perfect * fail

x <- fail
perfect * x

x <- y
y <- perfect
x + y

z <- x + y
z + x + y

#  Another beautiful thing about R is its functions. Functions are little mini-programs, that is, 
#  if you give it certain inputs (e.g., numbers), the function will do some calculation with those numbers,
#  depending on which function you use, and return an output (i.e., an answer). R has a ton of built-in functions.
#  For example, in this class, you are going to learn about a T-test, which compares the scores for two different
#  groups (e.g., math scores for men and women). You could do this arduous task (not really) by hand, or you could
#  simply give R the scores for each group and tell it to do it using the "t.test" function. 

#  You can create your own functions, too, but we're not quite there yet.

#  Functions usually start with their name, and then a set of parentheses. 
#  Whatever values you put into the parentheses is information for the function to make use of.
#  These values are called function "arguments".

#  For example, print() is a function. It just prints out whatever you put inside the (),
#  into the Console. Try it!

print("Psych 1900 is the bee's knees.")

# Note: The same thing happens if you enter some text without the print() function.

"Psych 1900 is the bee's knees."

# Now enter your own string into print.

print()   # If you try to C-Enter without putting something inside, you'll get an error.

#  One really important function is c(). It just creates collections of things. Like this:

c(2, 4, 12)
c(2, 4, "twelve") # "c()" stands for "combine"

#  The more technical term for these collections is a vector. A vector is simply a list of things (e.g., numbers)
#  that are in a certain order.
#
#  Vectors are very useful when we want to group numbers together (e.g., we want to group all of the men's scores
#  on a math test together). By grouping them together in a vector, we can do lots of things with them!
#  We can even save any vector of things as its own variable:

mens_math_scores <- c(2, 12, 4)
mens_math_scores # this should print out the vector "mens_math_scores"

#  The "[1]" that begins the line in the output is meaningful, but we will explain that later.

#  Although you don't HAVE to save vectors as a variable, it makes your life easier, so you don't
#  have to keep typing it out (it also makes your code cleaner and easier to read).
#  So now that we have the vector of men's math scores saved, let's do something with it
#  using a simple function. Let's use the function "mean" to calculate the average
#  men's math score:

mean(mens_math_scores)   # The average should be 6, right? 
mean(c(2, 12, 4))        # You can also complete the previous calculation without having saved the vector
(2 + 12 + 4) / 3         # Or you could have just done it by hand using the order of operations

#  Or, let's say you want to order the scores from smallest to largest, we'll use the "sort" function:

sort(mens_math_scores)

#  Especially when we are dealing with much more complicated data, functions like "mean" or "t.test" are huge
#  time-savers. We'll be using them a lot.

#  The most important function is help()! 
#  If there's a function you don't understand, type: help(name_of_the_function),
#  or ?(name_of_the_function)
#  Help puts info into a tab called 'Help' on one of the RStudio panels (usually bottom right)

help(mean)

?mean

## Numeric
myNumbers <- c(2342, 4.2, 19)
typeof(myNumbers)
str(myNumbers)

# What's the R term for a number? 
# How does RStudio display numbers?
# What are some of the functions that you can use with numbers?

## String
myStrings <- c("I wish", "the weather was", "just a tiny bit nicer")

# Use typeof() to figure out the R term for a string.
# How does RStudio display strings?
# Which of the following functions will work? Why?

## New data type: Booleans
# What's happening in each of these examples?

3 == 15
3 <= 42.9
myNumbers > 5
51 %in% myNumbers
4.2 %in% myNumbers

# To search an operator like %in%, you will need to search "%in%"
help("%in%")
?"%in%"

# In computer programming, Booleans are typically used to tell the computer to check if some condition is true.
# E.g., are all the numbers contained in the vector myNumbers positive? TRUE / FALSE?
# E.g., is the number 4.2 contained in the vector myNumbers? TRUE / FALSE?
# Depending on the answer to the question, you may then tell the computer to do different things.

# Sometimes, you may want R to return the OPPOSITE boolean value. For instance, if you wanted 
# to see if a number is NOT in a vector ("is 14 missing from my vector of numbers?"). To do this, you
# precede a logical statement with a "!"

!(4.2 %in% myNumbers)
!(FALSE)               #essentially, what is not in FALSE?
myBooleans <- c(FALSE, TRUE, TRUE)
!(myBooleans)
!("FALSE") # why doesn't this work?

# 2. Functions & Arguments ---------------------------------------------------

# Today we'll look more at functions--specifically, function *arguments*.
# Arguments are the pieces of information you send to a function for processing.

# Remember our math example:  f(x) = x + 2.  
# This is a function called 'f', and it takes the value of 'x' as a piece of information to process.
# The process it puts x through is simply adding 2 to it.
# So the output of the function f() is just: <input> + 2 (i.e., x + 2).

# Functions in R work the same way. They all have a name, like 'f.'
# What are some of the functions that we had last week?
# What was their input? What was their output?

# After the name of the function, there's usually a pair of parentheses: e.g., c().
# Do you remember a function where this was not the case?
# Function arguments go inside the parentheses, and arguments are separated from one another by commas.

# The number of arguments that a function takes as input vary quite a bit.

# How many arguments do you think c() takes? What is their data type(s)?
# How many arguments does mean() take? What is their data type(s)?

# In order to know which arguments you need to give to a function, you can use the ? or help() command.
# N.B.: help() is a function too!

# Try this:

?mean # you can also use: help(mean)

# Now look at the help window. You'll see a description of the function, and also a description of
# all the arguments it can take.

# Some arguments are mandatory. If you don't specify them, you'll get a syntax error.
# What are the mandatory arguments for mean()? For c()? For max()? For rnorm()?
# Why do you think these arguments are mandatory?

?max
max(4,5,6,7,8)
mean(c(4,5,6,7,8))
?mean
rnorm(n = 20)

# Other arguments are optional.
# What does it mean for an argument to be optional?
# If it's optional, how does R know what value to use for it?
# What's the difference between mandatory and optional arguments in the help file?

# Let's do some hands-on work with function arguments. First, run the code below.
# You don't need to understand it. It's just getting things set up for our examples below.

# Highlight everything until you see ## STOP HERE ##, then run the code.
# Note: Your console may do some funny things when you run this code. Don't worry about it.

guessMyName <- function(first, last, year = 1, ignore.case = TRUE) {
  
  df <- read.csv("StatsClassRosterFall2019.csv", header = TRUE, stringsAsFactors = FALSE)
  
  for (row in 1:nrow(df)) {
    first.guess <- grep(paste0("^", first), df$first.name[row], ignore.case = ignore.case, value = TRUE)
    last.guess <- grep(paste0("^", last), df$last.name[row], ignore.case = ignore.case, value = TRUE)
    first.name.found <- length(first.guess) > 0
    last.name.found <- length(last.guess) > 0
    year.found <- ifelse(year > 1, year == df$year[row], TRUE)
    
    if (first.name.found & last.name.found & year.found) {   
      guess <- paste0("I think your name is ", first.guess, " ", last.guess, ".")
      break
    } else {
      guess <- "I don't have any idea what your name is. Sorry!"  
    }
  }
  return(guess)
}

# Ok, now we have a function called guessMyName().
# This was written just for this class, so you can't look it up in help(), sadly. (It's a private function)
# We'll just have to figure out what it does!

# Here is what the function call looks like:
# guessMyName(first, last, year = 1, ignore.case = TRUE)

guessMyName(last = "S", first = "B", year = 5)

# Importing data

# We will use a data set from the Field book. You can find all Field data sets here:
browseURL("http://www.sagepub.com/dsur/study/articles.htm")

# To import data, we need to know what format our data is in (e.g., text, Excel, SPSS...)
# For now, we will use only data you can import with the command: read.table()
# Let's try to import the folowwing data:

album <- read.table("http://www.people.fas.harvard.edu/~mair/datasets/albumsales.dat")
# We notice that the data has been added to the environment (top right corner).
# Now let's explore our data by calling it,

album       ## We can print the data in the console. 
View(album) ## We can view the data set in a more traditional, spreadsheet-type format.
head(album) ## Command to check first few lines for big data sets.

# Check the first line! What is wrong?
?read.table
album <- read.table("http://www.people.fas.harvard.edu/~mair/datasets/albumsales.dat", header = TRUE)

# What's different in this line of code? What do you think it will do?

head(album) # Answer: it told R to read the first line from the table as a header (i.e., 
            # use the first row as names for the columns).

# That looks better! You have imported your first data set!
# Note: The data in "album" is a new type of data structure. So far, you have worked with individual numbers/strings,
# and with vectors. Remember, vectors are simply a list of items (numbers or strings). Vectors don't really have any
# dimensions, but they do have length. See:

dim(myNumbers)    # dim (= "dimensions") doesn't work but,
length(myNumbers) # length does work, because vectors have length but no dimensions.

# Notice that album does have dimensions - it has both columns and rows. Just how many?

dim(album)  # Rows always come first, so 200 rows and 2 columns.

# This new data structure is called a "data frame". We will talk more about data frames in the future.
# When we work with data frames, we often want to work with data in just a single column. Let's say we want
# to focus on the data in the 'sales' column. How do we get access to this single column in the data?

sales         ## We can try calling it by the variable's name. What's the problem?
              ## "sales" isn't an R object in your environment. "album" is the R object, and "sales" is just the
              ## name of one of the columns/variables in the larger R object "album".
              ## To tell R to access this column/variable, do this:

album$sales   ## R uses the '$' sign as a way to get at variables nested inside other variables, like we have here.

attach(album) ## But there is a way to make variables in data frames directly accessible, by first "attaching" the data frame.
sales         ## Let's test it.
search()      ## This is how you can check what data sets you have attached.

# With our data imported and the variable of interest selected, we can do:
mean(sales)
mean(album$sales)
median(sales)
median(album$sales)
sd(sales)

summary(sales) ## Interesting command: gives a good quick overview

detach(album)  ## As a general rule, when you attach() something, detach() it later.

# This week we're exploring data visualization methods in R.

# Why visualize your data?  Because it's hard to understand what a spreadsheet of numbers means.
# Pictures are worth 1,000 data points!
#
# There are lots of different ways to visualize data.  We'll learn how to make a few of the most
# basic plots today, using R.

# Review: Importing Data ---------------------------------------------------------------

# Today we are going to work with some data pertaining to the Olympics. Remember you can download TONS of freely
# available datasets from the internet using the following read.csv command:

oly <- read.csv("http://www.people.fas.harvard.edu/~mair/datasets/olympics.csv", header = TRUE, sep = ",")

#  Previously we used the read.table() function, but if you know you want to read a .csv file specifically, 
#  you can use read.csv() insetad of read.table(). It saves having to enter in a few extra arguments.
#  Here are some of the ways you can see the dataset.

head(oly)
View(oly)


#  Some other things that you might want to check before working with the data:

dim(oly)
str(oly)

#  You can think of each row of data as having its own little story to tell. What do you think each row of data
#  is referring to/describing? 

#  On which measurement scale is each of the following variables?
#  Athlete: Nominal
#  Age: Metric
#  Country: Nominal
#  Sport: Nominal
#  Gold/Silver/Bronze/Total Medals: Metric

# Use the str() function to check the scale level of all the variables at once.
str(oly)


# When it comes to data visualization, why is it important to know the measurement scale of a variable?

# Histograms ---------------------------------------------------------------

# A histogram displays the frequency of each numerical value across a range of values.
# For what kind of measurement scale is a histogram most appropriate? 


# For which variables in this dataset might you want to use a histogram?

# The function hist() generates a histogram in the Plots window.

?hist

#  What are the required argument(s) for hist()?

#  What does x refer to?


# Let's say we want to look at the various ages of Olympic medal holders
# We can see from View(oly) that there's a column called 'Age'.
# Access a specific data column in a variable using the $ sign:

oly$Age
View(oly$Age) # You can still use the View() function
head(oly$Age) # and the head() function

# I'm not going to write View() and head() each time, just remember you can always use them!
# Now make a histogram of the Age column

hist(oly$Age)

# Good! You made a histogram.

# But it looks a little funny. Let's make it nicer.
# For instance, there are only a handful of bars, but there are many more ages in our data.

?hist

# To increase the number of bars in a histogram, use the 'breaks' argument.
# (We could figure out exactly how many different ages are in our data, but for now let's just 
# say we want a bar for 50 different ages.)

hist(oly$Age, breaks = 50)

# This plot looks better. But... our x-axis doesn't start at 0.

# I guess you could argue that Olympic athletes are at least teens,
# so there's no need to have really young ages represented.
# But it's good practice to always have axes start at 0, when possible.
# Also, it looks like our y-axis is not high enough for some of the bars.
#
# So, let's set the upper and lower limits of the y- and x-axis with the arguments ylim and xlim.

# Using the help file as needed, trying doing this yourself: plot Age in a histogram with the following constraints:
#  Try doing this first without the HINT below.
#  y-axis lower limit = 0
#  y-axis upper limit = 800
#  x-axis lower limit = 0
#  x-axis upper limit = 70
#

hist(oly$Age, breaks = 50, ylim = ???, las = 1) # ?ylim

#
#
#
#
#
#
#
#  Hint: ylim and xlim both need a vector of two numbers,
#  so you can't just write xlim = 0, 100

#  What is the function that we use to create a collection of numbers?

#  6.  What information can we get from this histogram? What story is this histogram telling? 
#  Can you know from this graph how many medals were won by each age group? What would you do to the function to visualize this information?

hist(oly$Age, breaks = 50, las = 3)

# I added an extra argument to the function call, called 'las'.  
# The las argument ?takes 4 possible values: 0, 1, 2, and 3.
# Task: Make a histogram using each of the possible las values. What happens?




# Finally, let's add some titles and axis labels. You can use these commands with any plot in R.

#  Add the following arguments to your hist() function:
#
#  las = 1,
#  main = "Frequency of Olympic medalists by age",
#  xlab = "Age (in years)", 
#  ylab = "Frequency"




# Maybe I'm just being picky, but the font sizes look all out-of-whack. Must fix!
#
# 'cex' is a general argument that controls font type and size and such for all plot labels.
# There are a few different versions of cex, and we'll use three of them here.

#  Add the following arguments to your function:
#  cex.axis = .8,
#  cex.main = .9,
#  cex.lab = .8




#  Try putting in different values for the cex arguments and see what happens.


# You are now hist() pros.

## Box plots ------------------------------------------------

# Box plots allow you to see the location, dispersion, and outliers of
# metric and ordinal variables.
# Use boxplot(oly$Age) to make a box plot.

# - The 'box' in a box plot is made from the 1st quartile (bottom of the box) and 3rd quartile (top of the box). 
# - The thick bar inside the box is the median (2nd quartile).
# - The ends of the 'whiskers' (i.e., the horizontal lines at the ends of the dashed lines)
#  represent points which are (in general) at a distance of 1.5x the length of the box (interquartile range), away 
#  from the box. If the most extreme data point in your data is less than that distance from the box,
#  the whisker will stop at that data point instead.
# - Bubbles that show up outside of the whiskers are considered to be outliers.

# Lets use a boxplot to visualize the Age variable:

?boxplot  # what does the function require?

boxplot(oly$Age) # axis(2, at=seq(0, 75, 5))

# What is the median age of a medalist?



# What is the range of ages among the middle 50% of medalists (i.e., what is the IQR)?



# What if we wanted to compare the spread of ages in different Olympic years?
# We can use the ~ ! (More on this ~ in later units...)
boxplot(oly$Age ~ oly$Year)

# What if we wanted to compare number of medals across countries? How would we do that?



# This is not a great visualization example, given the number of countries, but you get the idea: You can
# specify some kind of "grouping variable" after the "~" in order to divide the total sample into different groups.
# The grouping variable is usually on a nominal scale (e.g., gender, class year).
# What is another variable we could use to group our boxplots?
# Lets look at our data:
str(oly)

## Do another boxplot with grouping variables here:

boxplot(oly$Age ~ oly$Country, las = 2)


## Finally, what if we wanted to change the "aesthetics" of our plotting?
?boxplot




## Bar charts ----------------------------------------------

# Bar charts plot categorical variables against metric variables.
# Use the barplot() function to make a barplot.

?barplot

# Note: The barplot Help page may be a little confusing. For now, just remember
#  that there's only one required argument: 
# a variable that contains the count of each of the categories in your x-axis 
# note that it has to be metric. barplot(oly$Country) 


# To demonstrate barplots, we'll use a dataset that Facebook recently released to the public.
# It details the total number of requests for FB users' private information, made
# by government agencies around the world, in the first 6 months of 2013.
# Data source: https://www.facebook.com/about/government_requests/download.php

# Load the data into an object called 'fb', and then print the first 5 rows of data

fb <- read.csv("http://www.people.fas.harvard.edu/~mair/datasets/facebook.csv")
head(fb)

# To simplify a bit, we'll limit our data to only those countries which made over 1000 requests.
# (You're not expected to know how to do this, just execute the line below.)

fb <- fb[fb$total.requests > 1000, ]
head(fb)

# What variables are included? 



#  Lets make a barplot of the total.requests variable.
barplot(fb$total.requests)

# Now let's label each country and add a title. Add these arguments to your function:
#
#  names.arg = fb$country,
#  main = "Creepy Governments, Jan.-Jun. 2013",
#  cex.main = .8

barplot(fb$total.requests, names.arg = fb$country, main = "Creepy Governments, Jan.-Jun. 2013", cex.main=.8)

# Hmm, that doesn't look quite right. Do you remember the argument that flips axis label orientation?
# Hint: Look back to the histogram section to figure out how to turn the orientation of the x-axis
# labels so they are perpendicular with the x-axis.

barplot(fb$total.requests, names.arg = fb$country, main = "Creepy Governments, Jan.-Jun. 2013",
        cex.main=.8,
        las=1)




# We can use cex to shrink/increase text size.

#  Add the following arguments to your function:
#  cex.main = .8, 
#  cex.names = .65,
#  cex.axis = .8




# Okay, that's looking good. One last thing: let's add color!
# rainbow() is actually a built-in function in R, which is another reason R is great.



#  Add the following argument to your function:
#  col = rainbow(6)

barplot(fb$total.requests, names.arg = fb$country, main = "Creepy Governments, Jan.-Jun. 2013",
        cex.main=.8,
        las=1, col=rainbow(6))

#  What happens if you put in a value for rainbow that's less than the number of bars in our graph?

# It repeats colors!


# You can also specify colors as a collection of strings:
# e.g.: col = c("red", "green", "yellow", "blue", "orange", "darkorchid4")

# R actually has over 600 colors to choose from!
# You can see the full list by calling the function colors(), with no arguments.

colors()


# Actually you might want to keep it simple and use just plain white bars.
# Superfluous colors can be overkill.

barplot(fb$total.requests, col = c("white"))

# Manually installing packages ---------------------------------------

## Installing and loading packages are two separate steps. You only ever have to install a package
## once, but you need to load a package that you want to use each time you close and re-open R.
## In the past sections, we have used one line of code that checks whether a package is installed,
## and if it is not, then it downloads and installs the package, and if it is already installed,
## it simply loads it.

# if (!require(car)) {install.packages("car"); require(car)}

## If you're having trouble with this method, there is another way of
## loading packages once they are installed.

## First you install the package.
install.packages("car")

## Now (and everytime you close and re-open R from here on out) you need to load the package into
## your R session. Use the library() function to do this:

library(car)

## Those of you (if any) having trouble using the "if (!require()...)" line to load your packages should
## find that this method won't give you any issues.

survey <- read.csv("PSY1900_ClassSurvey.csv", header = TRUE)
head(survey)
summary(survey)
# Don't use plot() on one metric variable.
plot(survey$studyhours)
# What function should you use instead?
hist(survey$studyhours)
# Assumptions for correlation vs. regression: determine the test in the former, limit conclusions in the latter.
# Conclusions for correlation are not limited by violated assumptions -- we just use a different test.

# Removing outliers: when and how?
# When: values that are more than 2 SDs above the mean - general rule of thumb.
boxplot(survey$age)
sd_cutoff <- mean(survey$age) + (2 * sd(survey$age))
survey$age[survey$age > sd_cutoff] # 2 outliers

# How:
dim(survey) # 130 observations
survey <- subset(survey, age <= sd_cutoff)
dim(survey) # 128 observations

# Interpreting regression output:
myRegression <- lm(studyhours ~ avgworkhours, data = survey)
myRegression
summary(myRegression) # Always use the summary() function
# What is the interpretation of:
# (a) the intercept?
# (b) the p-value for the intercept?
# (c) the coefficient for avgworkhours?
# (d) the p-value for avgworkhours?
# (e) the multiple R-squared?
confint(myRegression)
# What's the interpretation of these confidence intervals?

plot(jitter(survey$studyhours), jitter(survey$avgworkhours), main = "Studying",
     xlab = "Number of hours spent studying", ylab = "Number of hours of perceived studying")
abline(myRegression, col = "orange", lty = 2)

# If you have one predictor, how are regression and correlation related to each other?
cor(survey$studyhours, survey$avgworkhours, use = "complete.obs")
cor(survey$studyhours, survey$avgworkhours, use = "complete.obs")^2
summary(myRegression)$r.squared

round(summary(myRegression)$r.squared, 5) == round(cor(survey$studyhours, survey$avgworkhours, use = "complete.obs")^2, 5)

# What's the difference between cor() and cor.test()? When should you use one vs. the other?
cor(survey$studyhours, survey$avgworkhours, use = "complete.obs")
cor.test(survey$studyhours, survey$avgworkhours)

# What's the (regression) IV and what's the DV here?


#  -----------------------------------------------------------------------
#  Regression (vol 2: Multiple Regression and Assumptions) ---------------

#  We'll start by loading in a real-world dataset from Switzerland
# Standardized fertility measure and socio-economic indicators for each of 47 French-speaking provinces of Switzerland at about 1888

# Fertility	Ig, ‘common standardized fertility measure’
#	Agriculture	% of males involved in agriculture as occupation
#	Examination	% draftees receiving highest mark on army examination
#	Education	% education beyond primary school for draftees.
#	Catholic	% ‘catholic’ (as opposed to ‘protestant’).
#	Infant.Mortality	live births who live less than 1 year

## We want to predict the infant mortality rates - what socio-economic and fertility measures can explain this consequential outcome?

#  1. Load the dataset into an object called 'swiss' so that we can see it in our global environment
swiss <- swiss
# Inspect data object
head(swiss)
str(swiss)

#  2. How many variables are there in the data?
#  What are the names of these variables?

dim(swiss)
names(swiss)

#  3. Make scatterplots for the Fertility, Agriculture, Catholic, and Infant Mortality variables. As well as their correlations.
# Lets use the fancy plotting! It's in the car package:
if (!require(car)) {install.packages("car"); require(car)}
scatterplotMatrix(~ swiss$Fertility + swiss$Agriculture + swiss$Catholic + swiss$Infant.Mortality, col = "black")

# What do we want in these plots? What assumptions should we be paying attention to?

# Multicolinearity

##  II. Multiple Linear Regression

# What are our null hypotheses?

#  Now that we've looked at the data and developed a hypothesis, we can test it with regression.
#  Use the lm() function to compute linear regression in R.

# Again, we use the following formulation: lm(DV ~ IV1 + IV2 + IV3, data = NAME_OF_DATA_FRAME)

# Lets compute the multiple regression
regmodel <- lm(Infant.Mortality ~ Fertility + Agriculture, data = swiss)

# Call the summary on it:
summary(regmodel)
if (!require(effects)) {install.packages("effects"); require(effects)}
plot(allEffects(regmodel))
#  We can get confidence intervals for the regression coefficients with confint():
confint(regmodel)

#  We can access the residuals for each location using:
# Note that we are again "embedding" one function in another function to make the code more efficient:
head(residuals(regmodel))

#  Or:
regmodel$residuals

# Now that we have the model...
# Run normality diagnostics on the residuals to determine whether assumptions are fulfilled.
# Create standardized residuals:
# To standardize residuals (z-scores: mean = 0, var = 1 -- approximately)   

mean(regmodel$residuals)
var(regmodel$residuals)

resstd <- rstandard(regmodel)
resstd
mean(resstd) # Just to check that the residuals are properly standardized
var(resstd) # Just to check that the residuals are properly standardized

#  - Create scatterplot of fitted values as a function of the standardized residuals.
#    What do these plots tell us?

fitvals <- fitted(regmodel)          ## Fitted (or predicted) values (on the regression plane)
fitvals
plot(fitvals, resstd, pch = 19, xlab = "Fitted Values", ylab = "Standardized Residuals")
abline(h = mean(resstd), lty = 2, col = "darkgray")

plot(fitvals, regmodel$residuals, pch = 19, xlab = "Predicted infant mortality rate", ylab = "Unstandardized Error")
abline(h = mean(regmodel$residuals), lty = 2, col = "darkgray")
#  - Let's check normality using a histogram and qqplot. What do these plots tell us?

hist(resstd, main = "Histogram Residuals", xlab = "Standardized Residuals", breaks = 15)
qqnorm(resstd, main = "Q-Q Plot Residuals")
qqline(resstd)

#  -  Try a Kolmogoroff-Smirnoff and Shapiro-Wilks Test. What do these tests tell us?
# What is the null hypothesis of these tests?
ks.test(resstd, "pnorm")        ## Mean and sd arguments are by default 0 and 1
shapiro.test(resstd)

# Check for correlations between the error term and each predictor?
plot(swiss$Fertility, regmodel$residuals, pch = 19, xlab = "Fertility rate", ylab = "Unstandardized Error")
abline(h = mean(regmodel$residuals), lty = 2, col = "darkgray")
plot(swiss$Agriculture, regmodel$residuals, pch = 19, xlab = "Proportion of men working in agriculture", ylab = "Unstandardized Error")
abline(h = mean(regmodel$residuals), lty = 2, col = "darkgray")

#  - Based on these tests, will our inferences (from CIs and p-values) be valid?



#  Let's go ahead and interpret the regression!
# Find the following statistics from the output:
#  - Regression coefficient estimate for each predictor. What is the interpretation of this number?
#  - 95% confidence interval for each regression coefficient. What is the interpretation of
#    this interval?
#  - Intercept value. What does this value represent, practically?
#  - The p-value for the each coefficient .
#  - R-squared value (adjusted and non-adjusted) for the regression model. What is the 
#    intepretation of these values?

summary(regmodel)

#  Can you reject or fail to reject the null hypothesis, based on this finding?

# Finally, plot the plane! Because why not - it's fancy!
if (!require("rockchalk")) {install.packages("rockchalk"); require("rockchalk")}
plotPlane(regmodel, plotx1 = "Agriculture", plotx2 = "Fertility")

if (!require(car)) {install.packages("car"); require(car)}

# 1. ANOVA -------------------------------------------------------------------

# ANOVA (ANalysis Of VAriance) is used when we have a categorical IV with 3+ categories, and a metric DV.

# We are going to be looking at a real dataset in which we tested two interventions against
# implicit age bias (as measured on an IAT): one based on pairing images of young people with
# negative things and images of elderly people with positive things and another one based on telling
# people positive things about elderly people and negative things about young people.
# Participants were assigned randomly to one of three conditions: Control (where we measured
# baseline levels of age bias), Pairings (where participants were exposed to positive/negative
# stimulus pairings), and Statements (where participants read positive and negative statements).

load(url("http://www.people.fas.harvard.edu/~mair/datasets/IATstudy.rda"))

# Look up the variables in your data frame.
# How many observations do you have?
# What are the scale levels of the variables?

head(IATstudy)
str(IATstudy)

# Our DV is going to be D_Score, with positive D scores indicating a pro-young/anti-old bias.
# Our IV is condition, which has three levels: Control, Pairings, and Statements (see above).

# Look at the D_Score variable. Run basic descriptives and create a histogram (make sure you have
# a reasonable number of bins).
summary(IATstudy$D_Score)
hist(IATstudy$D_Score, main = "Implicit age bias", xlab = "D score", breaks = 20)

# Now create a box plot for the D_Score variable.
boxplot(IATstudy$D_Score, main = "Implicit age bias")

# Now create a box plot for the D_Score variable conditioned on experimental group.
boxplot(IATstudy$D_Score ~ IATstudy$Condition, main = "Implicit age bias by condition")

# Use the by() function to look at means, medians, and standard deviations by experimental condition.
by(IATstudy$D_Score, IATstudy$Condition, mean)
by(IATstudy$D_Score, IATstudy$Condition, median)
by(IATstudy$D_Score, IATstudy$Condition, sd)

# Based on the box plot and the descriptives, do you think the interventions were successful?
# Yes, it seems so. Means and medians are becoming increasingly small.

# What is a reasonable research question you might ask of this data?
# Formulate a testable null and alternative hypothesis.

# H0: The population means are equal across experimental conditions.
# H1: Not all population means are equal across experimental conditions.

# Before we run our ANOVA, we need to check whether our data fit the assumptions made by the test.

# (1) Metric DV: Is our DV really metric?

# Yes, it is.

# (2) Independence of observations within and across factors.
# What in the study description above tells you whether our observations are independent?

# Random assignment to conditions.

# (3) Normality of variables.
# Use descriptive visualizations (histograms and Q-Q plots)
# and tests (Kolmogorov-Smirnov and Shapiro-Wilks) to assess
# the normality of the DV in each condition.
# What did you find?

op <- par(mfrow = c(1, 3))
hist(IATstudy$D_Score[IATstudy$Condition == "Control"], xlim = c(-1.5, 1.5), breaks = 10,
     xlab = "D Score", main = "Control condition")
hist(IATstudy$D_Score[IATstudy$Condition == "Pairings"], xlim = c(-1.5, 1.5), breaks = 10,
     xlab = "D Score", main = "Pairings condition")
hist(IATstudy$D_Score[IATstudy$Condition == "Statements"], xlim = c(-1.5, 1.5), breaks = 10,
     xlab = "D Score", main = "Statements condition")
par(op)

op <- par(mfrow = c(1, 3))
qqnorm(IATstudy$D_Score[IATstudy$Condition == "Control"])
qqline(IATstudy$D_Score[IATstudy$Condition == "Control"])
qqnorm(IATstudy$D_Score[IATstudy$Condition == "Pairings"])
qqline(IATstudy$D_Score[IATstudy$Condition == "Pairings"])
qqnorm(IATstudy$D_Score[IATstudy$Condition == "Statements"])
qqline(IATstudy$D_Score[IATstudy$Condition == "Statements"])
par(op)

by(IATstudy$D_Score, IATstudy$Condition, shapiro.test)

# The distributions are normal enough--we don't need to worry.

# (4) Appropriate sample size
# Do we have enough observations in each group?
# Do we have the same number of participants in each group?

table(IATstudy$Condition)

# Yes, and yes.

# (5) Homogeneity of variance (homoskedasticity).
# Test using leveneTest(IATstudy$D_Score ~ IATstudy$Condition).
# Do variances differ across groups?

leveneTest(IATstudy$D_Score ~ IATstudy$Condition)

# Yes, the variances do differ. However, we have a large sample, and the distributions are
# not crazy weird, so we don't need to worry about this.

# The data are close enough to matching assumptions so that we can proceed with ANOVA.

# Compute an ANOVA to test your hypothesis.
#   Use the aov() function to compute the ANOVA.
#   aov() takes one required argument: DV ~ IV.
# Save the output in an object called "myANOVA".
# Run a summary of myANOVA. Can we reject the null hypothesis?

myANOVA <- aov(D_Score ~ Condition, data = IATstudy)
summary(myANOVA)
