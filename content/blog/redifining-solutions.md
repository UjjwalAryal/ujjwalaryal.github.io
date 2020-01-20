---
author:
  name: "Ujjwal Aryal"
date: 2018-07-29
linktitle: Redefining Solutions to Some Problems
type:
- post
- posts
title: Redefining Solutions to Some Problems
weight: 10
series:
- Cool Programming Problems
---

### Have you ever tried to solve any problems in the coolest way possible???

Lets look back at some problems that we have already solved but try to devise COOLEST solutions.

## Problem 1

In this problem, you need to print the pattern of the following form containing the numbers from 1 to n.
This question was taken from HackerRank.

#### Example:
For n = 7:

    7  7  7  7  7  7  7  7  7  7  7  7  7 
    7  6  6  6  6  6  6  6  6  6  6  6  7 
    7  6  5  5  5  5  5  5  5  5  5  6  7 
    7  6  5  4  4  4  4  4  4  4  5  6  7 
    7  6  5  4  3  3  3  3  3  4  5  6  7 
    7  6  5  4  3  2  2  2  3  4  5  6  7 
    7  6  5  4  3  2  1  2  3  4  5  6  7 
    7  6  5  4  3  2  2  2  3  4  5  6  7 
    7  6  5  4  3  3  3  3  3  4  5  6  7 
    7  6  5  4  4  4  4  4  4  4  5  6  7 
    7  6  5  5  5  5  5  5  5  5  5  6  7 
    7  6  6  6  6  6  6  6  6  6  6  6  7 
    7  7  7  7  7  7  7  7  7  7  7  7  7 
and so on.

How will you approach this problem?? Give a try before seeing the solution. 

#### Solution:
For these type of pattern printing problems, try to model it in a co-ordinate geometry.

You might be amused "How is that possible??".

It goes like this. For a given value 'n', view the pattern as a many square boxes (specifically 'n').The outermost box with value 'n', next box with 'n-1', and so on going up-to 1 in the innermost box.

Square box is nothing but 4 straight lines combined together. 

Let us take horizontal axis as x-axis and vertical as y-axis. We will assume the top left corner as origin (Easy for Computer Science Students).

We can observe that for n, the number of rows and number of columns will be 2*n-1.So, we need to have two for loops going from 1 to 2*n-1.

For n = 7 and 1 <= x,y <= 2*n-1, print the following.

n - x + 1


    7   7   7   7   7   7   7   7   7   7   7   7   7 
    6   6   6   6   6   6   6   6   6   6   6   6   6 
    5   5   5   5   5   5   5   5   5   5   5   5   5 
    4   4   4   4   4   4   4   4   4   4   4   4   4 
    3   3   3   3   3   3   3   3   3   3   3   3   3 
    2   2   2   2   2   2   2   2   2   2   2   2   2 
    1   1   1   1   1   1   1   1   1   1   1   1   1 
    0   0   0   0   0   0   0   0   0   0   0   0   0 
    -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1 
    -2  -2  -2  -2  -2  -2  -2  -2  -2  -2  -2  -2  -2 
    -3  -3  -3  -3  -3  -3  -3  -3  -3  -3  -3  -3  -3 
    -4  -4  -4  -4  -4  -4  -4  -4  -4  -4  -4  -4  -4 
    -5  -5  -5  -5  -5  -5  -5  -5  -5  -5  -5  -5  -5 

n - y + 1,

    7   6   5   4   3   2   1   0  -1  -2  -3  -4  -5 
    7   6   5   4   3   2   1   0  -1  -2  -3  -4  -5 
    7   6   5   4   3   2   1   0  -1  -2  -3  -4  -5 
    7   6   5   4   3   2   1   0  -1  -2  -3  -4  -5 
    7   6   5   4   3   2   1   0  -1  -2  -3  -4  -5 
    7   6   5   4   3   2   1   0  -1  -2  -3  -4  -5 
    7   6   5   4   3   2   1   0  -1  -2  -3  -4  -5 
    7   6   5   4   3   2   1   0  -1  -2  -3  -4  -5 
    7   6   5   4   3   2   1   0  -1  -2  -3  -4  -5 
    7   6   5   4   3   2   1   0  -1  -2  -3  -4  -5 
    7   6   5   4   3   2   1   0  -1  -2  -3  -4  -5 
    7   6   5   4   3   2   1   0  -1  -2  -3  -4  -5 
    7   6   5   4   3   2   1   0  -1  -2  -3  -4  -5 

n-(2*n-1-x),

    -5  -5  -5  -5  -5  -5  -5  -5  -5  -5  -5  -5  -5 
    -4  -4  -4  -4  -4  -4  -4  -4  -4  -4  -4  -4  -4 
    -3  -3  -3  -3  -3  -3  -3  -3  -3  -3  -3  -3  -3 
    -2  -2  -2  -2  -2  -2  -2  -2  -2  -2  -2  -2  -2 
    -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1  -1 
    0   0   0   0   0   0   0   0   0   0   0   0   0 
    1   1   1   1   1   1   1   1   1   1   1   1   1 
    2   2   2   2   2   2   2   2   2   2   2   2   2 
    3   3   3   3   3   3   3   3   3   3   3   3   3 
    4   4   4   4   4   4   4   4   4   4   4   4   4 
    5   5   5   5   5   5   5   5   5   5   5   5   5 
    6   6   6   6   6   6   6   6   6   6   6   6   6 
    7   7   7   7   7   7   7   7   7   7   7   7   7 

n-(2*n-1-y)

    -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7 
    -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7 
    -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7 
    -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7 
    -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7 
    -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7 
    -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7 
    -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7 
    -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7 
    -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7 
    -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7 
    -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7 
    -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7 

If we combine the above results we would get the required output.

#### Program

```
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int max2(int a, int b){ //return the maximum of 2 int
    return (a > b ? a : b);
}

int max4(int a, int b, int c, int d){ //return the maximum of 4 int
    return max2(a, max2(b, max2(c, d)));
}
int main(){
        int n;
        scanf("%d", &n);
        int x,y;
       for(x=1;x<=n*2-1;x++){
                for(y=1;y<=n*2-1;y++){
                    printf("%d ",max4(n-y+1, n-x+1, n-(2*n-1-x), n-(2*n-1-y)));
                } printf("\n");
        }
        return 0;
}

```

## Problem 2
In this problem, you need to print the pattern of the following form for given n (n is odd).

#### Example:
For n = 7
```
         *
      * * *
   * * * * *
* * * * * * *
   * * * * *
      * * *
         *
```
#### How will you approach this problem???

This pattern can be viewed as a tilted square surface. We will assume the axes, as in the above solution.

![](/img/image1.png)

For given n, we can observe that the four co-ordinates of the square will be ((n+1)/2, 0), (n, (n+1)/2), ((n+1)/2, n) and (0, (n+1)/2). 

Hence we can find the equation of the boundary lines of square surface.

The equations of the boundary lines are (2*x - 2*y - n + 1) = 0,  (2*x - 2*y - 1 + n) = 0, (2*x + 2*y - n - 3) = 0 and (2*x + 2*y - 3*n - 1) = 0.

A point (x,y) lies in the square surface if it satisfies these 4 equations (2*x - 2*y - n + 1)<=0, (2*x - 2*y - 1 + n)>=0, (2*x + 2*y - n - 3)>=0 and (2*x + 2*y - 3*n - 1)<=0.

The solution is, if point (x,y) lies in the square surface print '* ', print blank space i.e ' '. 


#### Program
```
#include<stdio.h>
int main(){
    int n,i,j;
    scanf("%d",&n);   // n must be odd
    for(i=1;i<=n;i++){
        for(j=1; j<= n ; j++){
            if(((2*j-2*i-n+1)<=0) &&  ((2*j-2*i-1+n)>=0)  &&  ((2*j+2*i-n-3) >=0 )  &&  ((2*j+2*i -3*n -1)<=0))
                printf("* ");
            else
                printf("  "); 
        }printf("\n");
    }
    return 0;
}
```