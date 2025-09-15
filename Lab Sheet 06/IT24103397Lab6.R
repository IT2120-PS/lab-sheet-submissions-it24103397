setwd("C:\\Users\\sana\\Desktop\\IT24103397")

# Exercise 1
n <- 50
p <- 0.85

# i. Distribution
cat("X ~ Binomial(50, 0.85)\n")

# ii. P(X ≥ 47)
prob_geq_47 <- 1 - pbinom(46, n, p)
cat("P(X ≥ 47) =", prob_geq_47, "\n")

# Exercise 2
lambda <- 12

# i. Random variable
cat("X = Number of calls per hour\n")


# ii. Distribution
cat("X ~ Poisson(12)\n")

# iii. P(X = 15)
prob_15 <- dpois(15, lambda)
cat("P(X = 15) =", prob_15, "\n")

