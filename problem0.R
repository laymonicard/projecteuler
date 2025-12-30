# A number is a perfect square, or a square number, if it is the square of a positive integer.
# For example,  is a square number because    ; it is also an odd square.

# The first 5 square numbers are: 1, 4, 9, 16, 25, and the sum of the odd squares is 1 + 9 + 25 = 35.

# Among the first 105 thousand square numbers, what is the sum of all the odd squares?


# Define a function to find the first 105 thousand square numbers

the_squares <- function(n_length){
  squares <- numeric(length(n_length))
  for (n in seq_along(n_length)){
    squares[n] <- n_square <- n^2
  }
  return(squares)
}

square_numbers <- the_squares(1:105000)

# Define a function to identify the odd squares
odd_square_numbers <- function(square_numbers){
  odd_squares <- numeric(length(n_length))
  for (number in seq_along(square_numbers)){
    odd_squares[number] <-  ifelse(number %% 2 != 0, square_numbers[number], 0)
  }
  return(odd_squares)
}

odd_squares_vector <- odd_square_numbers(square_numbers)

# Among the first 105 thousand square numbers, here is the sum of all the odd squares
odd_squares_vector_sum <- sum(odd_squares_vector)

# Turn off scientific notation
options(scipen = 999)

# Check the answer
odd_squares_vector_sum



