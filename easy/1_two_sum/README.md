# 1. Two Sum

## Problem link
[Two Sum - LeetCode](https://leetcode.com/problems/two-sum)

## Problem description (short)
Given an array of integers `nums` and an integer `target`,
return the indices of the two numbers such that they add up to `target`.

## What I thought
- At first, I thought about using two for-loops to check all pairs.
  But I knew this is too slow for large arrays because it is O(n^2).
- So, I searched for a better way.
- I found that using a hash table can better way.
- Becouse it is O(n) time complexity.

## Approach
- Use a hash table (`Map`) to store numbers and their indices.
- For each number, calculate the complement (`target - current number`).
- If the complement is found in the hash table, return both indices.

## Time Complexity
- **O(n)** — because we loop through the array once.