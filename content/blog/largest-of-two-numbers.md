---
author:
  name: "Ujjwal Aryal"
date: 2018-05-14
linktitle: Largest of two distinct numbers without using any conditional statements or operators
type:
- post
- posts
title: Largest of two distinct numbers without using any conditional statements or operators
weight: 10
series:
- Cool Programming Problems
---


### Given two positive and distinct numbers, the task is to find the greatest of two given numbers without using any conditional statements(if…) and operators(?: in C/C++/Java).


#### Examples
1. Input : a = 14, b = 15  
Output : 15
2. Input: a = 1233133, b = 124  
Output: 1233133

#### Solution
The approach is to return the value on the basis of the below expression:  
    a * (bool)(a / b) + b * (bool)(b / a)  
The expression a / b will give 1 if a > b and 0 if a < b (only after typecasting the result to bool). Hence, the answer will be of the form either a + 0 or 0 + b depending upon which one is greater.

#### Program
```
// C++ program for above implementation
#include<iostream>

using namespace std;

// Function to find the largest number
int largestNum(int a, int b){
    return a * (bool)(a / b) + b * (bool)(b / a);
}

// Drivers code
int main(){
    int a = 22, b = 1231;
    cout << largestNum(a, b);
    return 0;
}
```


[Published in GeeksforGeeks](https://www.geeksforgeeks.org/find-largest-two-distinct-numbers-without-using-conditional-statements-operators/)