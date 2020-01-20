---
author:
  name: "Ujjwal Aryal"
date: 2017-12-20
linktitle: Extract ‘k’ bits from a given position in a number
type:
- post
- posts
title: Extract ‘k’ bits from a given position in a number
weight: 10
series:
- Cool Programming Problems
---


### How to extract ‘k’ bits from a given position ‘p’ in a number?

#### Examples
1. Input : number = 171  
    k = 5  
    p = 2  
   Output : The extracted number is 21 171 is represented as 0101011 in binary, so, you should get only 10101 i.e. 21.

2. Input : number = 72  
    k = 5  
    p = 1  
   Output : The extracted number is 8 72 is represented as 1001000 in binary, so, you should get only 01000 i.e 8.

#### Solution
1. Right shift number by p-1.
2. Do bit wise AND of k set bits with the modified number. We can get k set bits by doing (1 << k) – 1.



#### Program 
```
// C program to extract k bits from a given position.
#include<stdio.h>
// Function to extract k bits from p position
// and returns the extracted value as integer
int bitExtracted(int number, int k, int p){
  return (((1 << k) - 1) & (number >> (p - 1)));
}

// Driver code
int main(){   
  int number = 171, k = 5, p = 2;
  printf("The extracted number is %d",bitExtracted(number, k, p));
  return 0;
}
```


[Published in GeeksforGeeks](https://www.geeksforgeeks.org/extract-k-bits-given-position-number/)