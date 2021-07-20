# Length of Last word
# Create a function that given a string as a parameter of upper/lower case letters
# and empty space characters (" "), return the length of the last word. 
# Meaning, the word that appears far most to the right if we loop through the words.


# Example Input: 
s1 = "Learning Python is difficult"
# Example Output: 9


# Example Input:
s2 = "I forget to call my function"
# Example Output: 8

# Example Input:
s3 = "IndentationError: expected an indented block"
# Example Output: 5

def some_name(input_a):
    some_string = input_a.split()
    print(len(some_string[-1]))

some_name(s3)