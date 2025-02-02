# Solidity Addition Overflow Bug

This repository demonstrates a common bug in Solidity: addition overflow.  When adding two unsigned integers, there's a risk of exceeding the maximum value that the integer type can hold.  This leads to incorrect results and can be exploited in various ways.

The `bug.sol` file contains code that exhibits this vulnerability. The `bugSolution.sol` offers a safer approach.

## Bug Explanation

In Solidity, unsigned integers have a maximum value. If you add two numbers whose sum exceeds this maximum, an overflow occurs.  The result wraps around to a smaller value, leading to unpredictable behavior.  While the provided code has a `require` statement to check for this overflow, it is checking for the issue after the operation. This does not prevent overflow, rather reports it after it happens.

## Solution

The recommended solution is to use SafeMath library or the checked arithmetic operators in later Solidity versions (>=0.8.0). These methods handle overflow and underflow exceptions correctly, preventing unexpected behavior.
