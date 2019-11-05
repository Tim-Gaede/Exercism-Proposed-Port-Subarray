# Subarray

Given two arrays determine if the first array is contained within the second
array, if the second array is contained within the first array, if both arrays are
contained within each other or if none of these are true.

Specifically, a array A is a subarray of array B if by dropping 0 or more elements
from the front of B and 0 or more elements from the back of B you get a array
that's completely equal to A.

Examples:

 * A = [1, 2, 3], B = [1, 2, 3, 4, 5], A is a subarray of B
 * A = [3, 4, 5], B = [1, 2, 3, 4, 5], A is a subarray of B
 * A = [3, 4], B = [1, 2, 3, 4, 5], A is a subarray of B
 * A = [1, 2, 3], B = [1, 2, 3], A is equal to B
 * A = [1, 2, 3, 4, 5], B = [2, 3, 4], A is a superarray of B
 * A = [1, 2, 4], B = [1, 2, 3, 4, 5], A is not a superarray of, subarray of or equal to B

## Exception messages

Sometimes it is necessary to raise an exception. When you do this, you should include a meaningful error message to
indicate what the source of the error is. This makes your code more readable and helps significantly with debugging. Not
every exercise will require you to raise an exception, but for those that do, the tests will only pass if you include
a message.

To raise a message with an exception, just write it as an argument to the exception type. For example, you should write:

```julia
throw(ErrorException("Meaningful message indicating the source of the error"))
```
## Version compatibility
This exercise has been tested on Julia 1.2.
## Submitting Exercises

Note that, when trying to submit an exercise, make sure the solution is in the `$EXERCISM_WORKSPACE/julia/subarray` directory.

You can find your Exercism workspace by running `exercism debug` and looking for the line that starts with `Workspace`.

For more detailed information about running tests, code style and linting,
please see [Running the Tests](http://exercism.io/tracks/julia/tests).

## Submitting Incomplete Solutions

It's possible to submit an incomplete solution so you can see how others have completed the exercise.
