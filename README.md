# R Bug: Mean Calculation with Empty and NA Values
This repository demonstrates a common bug in R related to calculating the mean of vectors that might be empty or contain NA (Not Available) values.

The `bug.R` file contains the buggy function.  The `bugSolution.R` file provides a corrected version.

The bug is that the function does not properly handle cases where the input vector is empty or contains NA values. This leads to either an error or unexpected results (NaN for NA values).

The solution employs robust error handling and uses `mean()`'s built-in NA handling capabilities for a more reliable approach.