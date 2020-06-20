
Selection: 13


  |                                                                                                                                                                   
  |                                                                                                                                                             |   0%

| One of the great advantages of using a statistical programming language like R is its vast collection of tools for simulating random numbers.

...


  |                                                                                                                                                                   
  |=====                                                                                                                                                        |   3%
| This lesson assumes familiarity with a few common probability distributions, but these topics will only be discussed with respect to random number generation. Even
| if you have no prior experience with these concepts, you should be able to complete the lesson and understand the main ideas.

...


  |                                                                                                                                                                   
  |==========                                                                                                                                                   |   6%
| The first function we'll use to generate random numbers is sample(). Use ?sample to pull up the documentation.

> ?sample

| You are quite good my friend!


  |                                                                                                                                                                   
  |==============                                                                                                                                               |   9%
| Let's simulate rolling four six-sided dice: sample(1:6, 4, replace = TRUE).

> sample(1:6, 4, replace = TRUE)
[1] 6 4 5 6

| Your dedication is inspiring!


  |                                                                                                                                                                   
  |===================                                                                                                                                          |  12%
| Now repeat the command to see how your result differs. (The probability of rolling the exact same result is (1/6)^4 = 0.00077, which is pretty small!)

> sample(1:6, 4, replace = TRUE)
[1] 3 6 5 2

| Keep working like that and you'll get there!


  |                                                                                                                                                                   
  |========================                                                                                                                                     |  15%
| sample(1:6, 4, replace = TRUE) instructs R to randomly select four numbers between 1 and 6, WITH replacement. Sampling with replacement simply means that each
| number is "replaced" after it is selected, so that the same number can show up more than once. This is what we want here, since what you roll on one die shouldn't
| affect what you roll on any of the others.

...


  |                                                                                                                                                                   
  |=============================                                                                                                                                |  18%
| Now sample 10 numbers between 1 and 20, WITHOUT replacement. To sample without replacement, simply leave off the 'replace' argument.

> sample(1:10)
 [1]  7  6  4  9  1  8  2 10  3  5

| Keep trying! Or, type info() for more options.

| Type sample(1:20, 10) to sample 10 numbers between 1 and 20, without replacement.

> sample(1:20, 10)
 [1] 11 18  1  7 17 13 19  8 12  3

| You're the best!


  |                                                                                                                                                                   
  |=================================                                                                                                                            |  21%
| Since the last command sampled without replacement, no number appears more than once in the output.

...


  |                                                                                                                                                                   
  |======================================                                                                                                                       |  24%
| LETTERS is a predefined variable in R containing a vector of all 26 letters of the English alphabet. Take a look at it now.

> LETTERS(1:26)
Error: could not find function "LETTERS"
> sample(LETTERS)
 [1] "S" "J" "K" "F" "N" "U" "D" "A" "L" "E" "W" "X" "B" "R" "P" "C" "Q" "H" "O" "I" "Z" "M" "T" "G" "Y" "V"

| Almost! Try again. Or, type info() for more options.

| Type LETTERS to print its contents to the console.

> sample(1:26,LETTERS)
Error in sample.int(length(x), size, replace, prob) : 
  vector size cannot be NA/NaN
In addition: Warning message:
In sample.int(length(x), size, replace, prob) : NAs introduced by coercion
> LETTERS
 [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z"

| You got it right!


  |                                                                                                                                                                   
  |===========================================                                                                                                                  |  27%
| The sample() function can also be used to permute, or rearrange, the elements of a vector. For example, try sample(LETTERS) to permute all 26 letters of the English
| alphabet.

> sample(LETTERS)
 [1] "M" "B" "D" "N" "V" "F" "K" "I" "U" "A" "Z" "G" "H" "L" "Y" "Q" "P" "X" "J" "E" "T" "O" "S" "C" "R" "W"

| You are doing so well!


  |                                                                                                                                                                   
  |================================================                                                                                                             |  30%
| This is identical to taking a sample of size 26 from LETTERS, without replacement. When the 'size' argument to sample() is not specified, R takes a sample equal in
| size to the vector from which you are sampling.

...


  |                                                                                                                                                                   
  |====================================================                                                                                                         |  33%
| Now, suppose we want to simulate 100 flips of an unfair two-sided coin. This particular coin has a 0.3 probability of landing 'tails' and a 0.7 probability of
| landing 'heads'.

...


  |                                                                                                                                                                   
  |=========================================================                                                                                                    |  36%
| Let the value 0 represent tails and the value 1 represent heads. Use sample() to draw a sample of size 100 from the vector c(0,1), with replacement. Since the coin
| is unfair, we must attach specific probabilities to the values 0 (tails) and 1 (heads) with a fourth argument, prob = c(0.3, 0.7). Assign the result to a new
| variable called flips.

> flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))

| You're the best!


  |                                                                                                                                                                   
  |==============================================================                                                                                               |  39%
| View the contents of the flips variable.

> flips
  [1] 0 1 0 1 0 1 0 1 0 0 1 0 1 0 0 0 1 1 1 0 1 1 1 1 1 1 1 1 1 0 0 0 1 1 0 1 1 0 1 0 1 0 0 1 1 1 0 1 0 0 1 0 1 0 0 1 1 1 0 1 1 1 0 1 0 1 0 1 1 1 1 1 0 0 1 1 1 0 1 0 1
 [82] 1 0 1 1 1 1 1 0 1 1 0 0 1 1 0 1 0 1 1

| You are really on a roll!


  |                                                                                                                                                                   
  |===================================================================                                                                                          |  42%
| Since we set the probability of landing heads on any given flip to be 0.7, we'd expect approximately 70 of our coin flips to have the value 1. Count the actual
| number of 1s contained in flips using the sum() function.

> sum(ls)
Error in sum(ls) : invalid 'type' (closure) of argument
> sum(flips)
[1] 61

| Keep working like that and you'll get there!


  |                                                                                                                                                                   
  |=======================================================================                                                                                      |  45%
| A coin flip is a binary outcome (0 or 1) and we are performing 100 independent trials (coin flips), so we can use rbinom() to simulate a binomial random variable.
| Pull up the documentation for rbinom() using ?rbinom.

> ?rbinom

| You're the best!


  |                                                                                                                                                                   
  |============================================================================                                                                                 |  48%
| Each probability distribution in R has an r*** function (for "random"), a d*** function (for "density"), a p*** (for "probability"), and q*** (for "quantile"). We
| are most interested in the r*** functions in this lesson, but I encourage you to explore the others on your own.

...


  |                                                                                                                                                                   
  |=================================================================================                                                                            |  52%
| A binomial random variable represents the number of 'successes' (heads) in a given number of independent 'trials' (coin flips). Therefore, we can generate a single
| random variable that represents the number of heads in 100 flips of our unfair coin using rbinom(1, size = 100, prob = 0.7). Note that you only specify the
| probability of 'success' (heads) and NOT the probability of 'failure' (tails). Try it now.

> rbinom(1, size = 100, prob = 0.7)
[1] 71

| You are really on a roll!


  |                                                                                                                                                                   
  |======================================================================================                                                                       |  55%
| Equivalently, if we want to see all of the 0s and 1s, we can request 100 observations, each of size 1, with success probability of 0.7. Give it a try, assigning the
| result to a new variable called flips2.

> flips2 <-rbinom(1, size = 100, prob = 0.7)

| You almost had it, but not quite. Try again. Or, type info() for more options.

| Call rbinom() with n = 100, size = 1, and prob = 0.7 and assign the result to flips2.

> flips2
[1] 75

| That's not exactly what I'm looking for. Try again. Or, type info() for more options.

| Call rbinom() with n = 100, size = 1, and prob = 0.7 and assign the result to flips2.

> rbinom(1, size = 100, prob = 0.7)
[1] 74

| You're close...I can feel it! Try it again. Or, type info() for more options.

| Call rbinom() with n = 100, size = 1, and prob = 0.7 and assign the result to flips2.

> rbinom(100, size = 1, prob = 0.7)
  [1] 0 1 1 1 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 0 1 0 0 1 1 1 0 0 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 1 1 1 0 1 1 0 0 1 1 0 1 1 1 1 0 1 1 1 0 1
 [82] 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 1 1

| One more time. You can do it! Or, type info() for more options.

| Call rbinom() with n = 100, size = 1, and prob = 0.7 and assign the result to flips2.

> flips2 <-rbinom(100, size = 1, prob = 0.7)

| You are quite good my friend!


  |                                                                                                                                                                   
  |==========================================================================================                                                                   |  58%
| View the contents of flips2.

> flips2
  [1] 1 1 1 1 1 1 0 1 1 1 1 1 1 0 1 0 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 0 1 1 1 0 0 1 1 0 0 0 1 1 1 1 1 0 0 1 0 1 1 0 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 0 1 0 1 1 0
 [82] 1 1 1 1 0 0 1 0 0 1 1 0 1 0 1 1 1 1 1

| You got it right!


  |                                                                                                                                                                   
  |===============================================================================================                                                              |  61%
| Now use sum() to count the number of 1s (heads) in flips2. It should be close to 70!

> sum(flips2)
[1] 73

| Excellent job!


  |                                                                                                                                                                   
  |====================================================================================================                                                         |  64%
| Similar to rbinom(), we can use R to simulate random numbers from many other probability distributions. Pull up the documentation for rnorm() now.

> rnorm(flips2)
  [1] -0.427399871  1.504817441 -2.587761287 -0.006221262  0.418509621  0.479222896 -0.545716877  1.029434469 -2.439859281 -0.630031849  0.657901320 -0.532762669
 [13]  0.934534633 -0.682534786 -1.560153317  0.004252935  1.688294131  0.937242969  2.381463511 -1.542429748 -0.230046124  0.693791481  1.102949688  1.744388058
 [25]  1.718762390 -0.510523018  1.868283713 -1.424593800  0.427384367  0.392216496 -0.089299283 -0.342139482  0.895682114 -1.014470194 -0.939908733  0.023668415
 [37] -0.267853517  1.588355016 -0.047304922  1.119630541  0.093995472 -0.655936589  0.678530567 -0.118024869  0.439972032  1.531087793 -0.272469156  0.819891000
 [49]  1.290622378  1.440120053  0.921624323  0.846540980  0.846067683  1.113491204 -0.996969840 -0.016097711  0.382387984  0.225315100 -1.323430278  0.123430811
 [61]  1.041044292 -1.185166568  1.406874116 -1.113606576  2.636362280  1.250923216 -1.433855424 -0.825736950  0.207238457  0.120519752 -2.492052742 -0.556410992
 [73]  0.497642436 -0.440467144  0.671408118  1.908420624  0.116542965  2.174800945  1.138714579 -1.222536611 -0.301783832  1.380421807 -0.508890664  0.964743099
 [85]  1.794133488  0.207039953 -1.314208937  0.186476153 -0.491514898  0.336101409 -0.211703399 -0.090344156  1.182788476  1.689903813  0.073077559 -1.724003084
 [97]  1.001275761 -1.501452027 -0.124641940  0.077629150

| Not exactly. Give it another go. Or, type info() for more options.

| Type ?rnorm to view its help file.

> ?rnorm

| That's the answer I was looking for.


  |                                                                                                                                                                   
  |=========================================================================================================                                                    |  67%
| The standard normal distribution has mean 0 and standard deviation 1. As you can see under the 'Usage' section in the documentation, the default values for the
| 'mean' and 'sd' arguments to rnorm() are 0 and 1, respectively. Thus, rnorm(10) will generate 10 random numbers from a standard normal distribution. Give it a try.

> rnorm(10)
 [1] -0.9214001  0.8048750 -1.0147701 -0.3603957  0.5691018  2.1988352  1.5211849  0.9671902  0.5526458  0.8620861

| You are doing so well!


  |                                                                                                                                                                   
  |=============================================================================================================                                                |  70%
| Now do the same, except with a mean of 100 and a standard deviation of 25.

> rnorm(10, mean = 100, sd = 25)
 [1] 120.55746  95.73607  98.91855 104.76361 101.71444 112.82483  92.01562 123.35285  99.31711 127.27154

| Nice work!


  |                                                                                                                                                                   
  |==================================================================================================================                                           |  73%
| Finally, what if we want to simulate 100 *groups* of random numbers, each containing 5 values generated from a Poisson distribution with mean 10? Let's start with
| one group of 5 numbers, then I'll show you how to repeat the operation 100 times in a convenient and compact way.

...


  |                                                                                                                                                                   
  |=======================================================================================================================                                      |  76%
| Generate 5 random values from a Poisson distribution with mean 10. Check out the documentation for rpois() if you need help.

> rpois()
Error in rpois() : argument "n" is missing, with no default
> rpois(5)
Error in rpois(5) : argument "lambda" is missing, with no default
> rpois(5,10)
[1]  7 12 10  9  6

| Excellent job!


  |                                                                                                                                                                   
  |============================================================================================================================                                 |  79%
| Now use replicate(100, rpois(5, 10)) to perform this operation 100 times. Store the result in a new variable called my_pois.

> replicate(100, rpois(5, 10))
     [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12] [,13] [,14] [,15] [,16] [,17] [,18] [,19] [,20] [,21] [,22] [,23] [,24] [,25] [,26] [,27] [,28]
[1,]    9   10   13   10   11    6   13    7    8     7     9    10     6    11    17     4     9     9     5    15     9     7     6    14    11    13     7    10
[2,]    9    9   17   16   11    7    7   14   10    11     6     8    10    15     7    15     9    10    12    10    12    11     8    10    16    10     5     3
[3,]    9   14    6   14   12    7    8   14   10     5    10    11    13     9    16     9     9     5    14     3     6     5    12    11    15    12    10    12
[4,]   13    7    9    8   11    6    9   15    5    18     8    11    10    10    14     7    14     9    15    11     4    18     6     8    10    13     9     9
[5,]   15    8   10   17    7   10    4   11    7     6    15    10    12     7    12     7    15    10     9    12    12    12    13    12    11    12    10    12
     [,29] [,30] [,31] [,32] [,33] [,34] [,35] [,36] [,37] [,38] [,39] [,40] [,41] [,42] [,43] [,44] [,45] [,46] [,47] [,48] [,49] [,50] [,51] [,52] [,53] [,54] [,55]
[1,]     8    13     7     2    13     6     8    10     8     8     8     9     3     8    11     9     6     5    10     9    11     4     2    11    10     9    18
[2,]     8    11    10     8    16     7    13    12    14    12     6    10    12     4     6     7     8     9     8     9    13    11    12     9    10     9    16
[3,]     8     8    13     6     8    17     9     6    13    17     7    10    14    12     9    16     9     7     8    11     6     5    14    10    20    14     9
[4,]     8    10    16     8     8    13    11    12    10    10     5    10     6    13     9     9    10    13     9     6     8    19     6     5     6    13    11
[5,]    11     9     7     8     8    10    16     8    10    13    18     7     9     6    13     8    10     8    22     7     5    12    11    10     7    12    10
     [,56] [,57] [,58] [,59] [,60] [,61] [,62] [,63] [,64] [,65] [,66] [,67] [,68] [,69] [,70] [,71] [,72] [,73] [,74] [,75] [,76] [,77] [,78] [,79] [,80] [,81] [,82]
[1,]    16    13    12     9    13    10    14    10     9     8    15     8    10    15    10     9    15     9     6    13     6     6     8     7     8    18    11
[2,]     5     6    10     6     9    12     8     7     6     8     9    11    14     8     5    11     8     9    14     6     6     8     9     5     6     5    14
[3,]     7    14     7     7     9     7    12     6     8     7     7    11     6     6    14     8     8    11    10     3    14    10     7     8     6    13     5
[4,]     4     9    11     9     8     9     8    12    11    10    14    11     6    12    11     8     9     9    12     9    10     8    10    15     9     8     8
[5,]     9    10     8     8     4     7     7    17     9     6    12    14     7     5    13    13     6     8     6    13     7     5     8     9    16     9    11
     [,83] [,84] [,85] [,86] [,87] [,88] [,89] [,90] [,91] [,92] [,93] [,94] [,95] [,96] [,97] [,98] [,99] [,100]
[1,]    11    11     6    13     8     9    11    14     8     9    11     8     8    17    15     5     8      9
[2,]    18    14    12    10    12    10    13     4    11     8     7     8     7    13    12    15    15     10
[3,]     7     9     9     9     8    10     8     8     6    12    12     7    10    12     9     9    12      9
[4,]    13     8    15    14     9    16    11     9    16    10    13    12    12    16    12     8    14      7
[5,]    13    14    12     7    12    10     7     9     8    16    11    10     8    10     9     6     7     13

| Keep trying! Or, type info() for more options.

| my_pois <- replicate(100, rpois(5, 10)) will repeat the operation 100 times and store the result.

> my_pois <- replicate(100, rpois(5, 10))

| You are quite good my friend!


  |                                                                                                                                                                   
  |================================================================================================================================                             |  82%
| Take a look at the contents of my_pois.

> my_pois
     [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12] [,13] [,14] [,15] [,16] [,17] [,18] [,19] [,20] [,21] [,22] [,23] [,24] [,25] [,26] [,27] [,28]
[1,]    5   11    8   13    4    6    9    8    6     6    18    13     6    10    10     6     8    10    13    10     6    10     8     8     7     7    14    12
[2,]    9    6    9    7    9    6   10    6    3     7     7    11    14     5    12     7     8     8     7    17     9    11     7    13    15     6     8     7
[3,]    8    9    8    7   12    6   12    8    7    10     4    11    10     9     7    16    15     4    10    16     5    12     7    13    11    10     7     5
[4,]    5    6    8   15    4   13    4    9   10     8    18     6    10    13    10     8     6    15    10     9    10    16    13    11     5    11    13     7
[5,]   12    8    8   10    8   12    9   10   15    17    11    13     9     8     9     8     7     6    11     5    15    11    10     8    16    14    10     7
     [,29] [,30] [,31] [,32] [,33] [,34] [,35] [,36] [,37] [,38] [,39] [,40] [,41] [,42] [,43] [,44] [,45] [,46] [,47] [,48] [,49] [,50] [,51] [,52] [,53] [,54] [,55]
[1,]    12     9    10     7     5     9     9     7     9     7    14     8     9     8     7    12    12     8     7    16    15    12    16     9    10     8    12
[2,]     9    12    10    15     5    11     4    10    12    16    14    11    10    10     6     4    13     7     8    12    14     8    13     9     6     6     8
[3,]     8    10     8    12    12     7    13    13     8     4    15    14     7    12    14     7    11    10     9    14     9    13     9    10     7    11     7
[4,]     7    13     4    13    11    11    21    11     9     9    15    14     7     5     7     9    14     8    11    10     7    10     8     8    10     8    15
[5,]     9    11    14    10    10     9    11     9    10     7     9    15     9     9    11     8     8     4     9    13    10    15    14     7     9     8    12
     [,56] [,57] [,58] [,59] [,60] [,61] [,62] [,63] [,64] [,65] [,66] [,67] [,68] [,69] [,70] [,71] [,72] [,73] [,74] [,75] [,76] [,77] [,78] [,79] [,80] [,81] [,82]
[1,]    12     9    10     8    15     7    11     8    13    10    11     8    10     9    10    14    13    11    13     8    10    12     7    19     9     8    11
[2,]    11    11     5    17     6     5     9     6    19    14    11    13    12     7    12    11    15    14    10    14     9    13    16    16    12    10     6
[3,]     9    12    11     8     9    11    15    11     9    16     9     5    20     8    10    15     9    11     5     6     6     8     9    16    12    11    13
[4,]    11     6    10     7    11    12     7    12    13     5     7     4     6     7     9    11    10     9     6    10    13     6    10     8     9     9     9
[5,]    10     8    12    10    12    11     9    11     9    12     9     6    12     6    12     6    10    10    13    12     7     7    13     7     7     8     8
     [,83] [,84] [,85] [,86] [,87] [,88] [,89] [,90] [,91] [,92] [,93] [,94] [,95] [,96] [,97] [,98] [,99] [,100]
[1,]     8     7     8    13    11     5     9     9     9    13    12     7     8    10     8    10     9     11
[2,]    11    11     7     9     6     9    10     8    11     5     8    11     6    14     7    11    10      8
[3,]     5     6    14     4     9     9    12     7     9    14     9     7     8     7    13    11     6     12
[4,]     7     9     8     9    12     6     7     7     6     8    14     9     9     9    10    14     6      9
[5,]    14     8    11     9     9     6    10    11    14     4    14    12     8    10    14    10    10      7

| All that hard work is paying off!


  |                                                                                                                                                                   
  |=====================================================================================================================================                        |  85%
| replicate() created a matrix, each column of which contains 5 random numbers generated from a Poisson distribution with mean 10. Now we can find the mean of each
| column in my_pois using the colMeans() function. Store the result in a variable called cm.

> colMeans(my_pois)
  [1]  7.8  8.0  8.2 10.4  7.4  8.6  8.8  8.2  8.2  9.6 11.6 10.8  9.8  9.0  9.6  9.0  8.8  8.6 10.2 11.4  9.0 12.0  9.0 10.6 10.8  9.6 10.4  7.6  9.0 11.0  9.2 11.4
 [33]  8.6  9.4 11.6 10.0  9.6  8.6 13.4 12.4  8.4  8.8  9.0  8.0 11.6  7.4  8.8 13.0 11.0 11.6 12.0  8.6  8.4  8.2 10.8 10.6  9.2  9.6 10.0 10.6  9.2 10.2  9.6 12.6
 [65] 11.4  9.4  7.2 12.0  7.4 10.6 11.4 11.4 11.0  9.4 10.0  9.0  9.2 11.0 13.2  9.8  9.2  9.4  9.0  8.2  9.6  8.8  9.4  7.0  9.6  8.4  9.8  8.8 11.4  9.2  7.8 10.0
 [97] 10.4 11.2  8.2  9.4

| One more time. You can do it! Or, type info() for more options.

| Use cm <- colMeans(my_pois) to create a vector of column means, storing the result in cm.

> cm <- colMeans(my_pois)

| All that hard work is paying off!


  |                                                                                                                                                                   
  |==========================================================================================================================================                   |  88%
| And let's take a look at the distribution of our column means by plotting a histogram with hist(cm).

> hist(cm)

| Great job!


  |                                                                                                                                                                   
  |===============================================================================================================================================              |  91%
| Looks like our column means are almost normally distributed, right? That's the Central Limit Theorem at work, but that's a lesson for another day!

...


  |                                                                                                                                                                   
  |===================================================================================================================================================          |  94%
| All of the standard probability distributions are built into R, including exponential (rexp()), chi-squared (rchisq()), gamma (rgamma()), .... Well, you see the
| pattern.

...


  |                                                                                                                                                                   
  |========================================================================================================================================================     |  97%
| Simulation is practically a field of its own and we've only skimmed the surface of what's possible. I encourage you to explore these and other functions further on
| your own.

...


  |                                                                                                                                                                   
  |=============================================================================================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? siby.thomas@capgemini.com
What is your assignment token? fW7hxkdEQQyAbbK0
Error in curl::curl_fetch_memory(url, handle = handle) : 
  Peer certificate cannot be authenticated with given CA certificates

| Leaving swirl now. Type swirl() to resume.

> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same name as you did then. If you are new, call yourself something unique.

What shall I call you? siby

| Would you like to continue with one of these lessons?

1: R Programming Functions
2: R Programming Simulation
3: No. Let me start something new.

Selection: 2



| Would you like to receive credit for completing this course on Coursera.org?

1: No
2: Yes

Selection: 2
What is your email address? abhilashiswithu@gmail.com
What is your assignment token? JELK73ygPRVp0avg
