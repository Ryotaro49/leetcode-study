# 9. Palindrome Number

## Problem link
[Palindrome Number - LeetCode](https://leetcode.com/problems/palindrome-number)

## Problem description (short)
Given an integer x, return true if x is a palindrome, and false otherwise.

## What I thought
- The number should be the same forwards and backwards.
- I need to write a function to convert it backwards.
- I found the `reverse` method for strings.
- Then I can compare the original number and the reversed number.

## Approach
- Use the `reverse` method for strings to reverse the number.

## Time Complexity
- **O(n)** — because we handle each digit once.