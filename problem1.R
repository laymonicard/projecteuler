#If we list all the natural numbers below  10 that are multiples of  3 or 5, we get  3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of  3 or 5  below 1000.


# First, find the multiples of 3 or 5 which are below 1000

# Create a function to do this
sequence_upper_limit <- 1:1000


multiples_of_3_or_5 <- function(upper_limit){
  digits_length <- length(upper_limit)
  multiples <- numeric(digits_length)
  
  for (number in seq_along(multiples)){
    if (number %% 3 == 0 | number %% 5 == 0){
      multiples[number] <- number
    } else {
      multiples[number] <- 0
    }
  }
  return(multiples)
}

all_multiples <- multiples_of_3_or_5(sequence_upper_limit)

# Sum the multiples 1 to 999
sum_multiples <- sum(all_multiples[1:999])
