# Load the lpSolve library
library(lpSolve)

# Objective function coefficients
obj <- c(4, 2)

# Constraint coefficients
mat <- matrix(c(2, 3, 1, 2), ncol = 2, byrow = TRUE)

# Constraint RHS (right-hand side)
rhs <- c(12, 8)

# Direction of the inequality (<=)
dir <- c("<=", "<=")

# Solve the linear programming problem
lp_solution <- lp("max", obj, mat, dir, rhs)

# Print the solution
print(lp_solution)

# Extract optimal values of decision variables
optimal_values <- lp_solution$solution
cat("Optimal values of x (chocolate cakes) and y (vanilla cakes):", optimal_values, "\n")

# Extract optimal objective function value
optimal_profit <- lp_solution$objval
cat("Maximum profit:", optimal_profit)

