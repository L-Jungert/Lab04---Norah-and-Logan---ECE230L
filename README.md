# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

In this lab we were given a truth table and we had to break it down into an equation by making a KMAP and solving the minterms by using the sums of products and maxterms by using the product of sums. Once we had our equations we put them into their corresponding files. We then wrote the naive file. This was a file that included every possible input by having combinations of A,B,C,D,~A,~B,~C,and~D. We then connected our board and ran the simulation in test.v.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?

Essentially, if we think about it, we can go across edges because only one variable would be changing. Let's say we were moving horizontally, from the right edge to the left. Labeled on the top, we have 00 01 11 10. If we are moving horizontally, our C and D variables wouldn’t change. Also, if we were moving from 10 to 00, only one variable would change. This essentially boils down to why we can – Because they would be logically adjacent. If only one variable changes, we can remove it, and that would prove the logically adjacent identity.

### Why are the names Sum of Products and Products of Sums?

A sum of products is exactly like it sounds, you’re adding to the products of two outputs. In other words you’re putting the outputs of AND gates through OR gates. It’s the same thing for products of sums. You put the outputs of OR gates through AND gates.


### Open the test.v file – how are we able to check that the signals match using XOR?

The XOR gate is apparent in the following code: 


if (led[0] ^ led[1] != 0) begin
    $display("Minterm output does not match");
    $finish;
End


This is because we are checking if the input has the same value as the output. In the case of the LED’s here, we are asking if the values match, because if they do, that means we have found our minterm. If they don’t match and the XOR gate evaluates to one, then we have a problem – the truth table isn’t matching the correct switch input to minterm. Basically, this XOR gate ensures that the truth table is accurate if and only if the LED’s match.


