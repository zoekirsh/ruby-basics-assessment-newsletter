# Ruby Basics Assessment - Newsletter

This assessment is designed to test your understanding of the basics of Ruby. It covers

- Ruby Syntax Basics
- Problem Solving and Debugging in Ruby
- Ruby Arrays, Hashes, and Enumerable methods

Read these instructions carefully. They describe the code you'll be working with and what you need to do.

At the bottom of this file is the rubric used to evaluate your submission. You do not need to get everything right. Focus on getting each piece of code to work rather than writing partial solutions to each

## Introduction

The program you are working with is a command line tool to help generate newsletters. The code isn't working right now - there are errors in the existing code, and there's some functionality that is missing. Your job is to fix the errors and add the functionality so that the newsletters are generated correctly.

Make edits to `newsletter.rb`. As you do, you can run the code with `ruby newsletter.rb` to check the output. `sample_output.txt` shows the output that you will see if you complete all of the tasks below.

## Instructions

1. Fix syntax errors in `newsletter.rb` so that it runs without errors
2. Fix the `format_campus_location` method so that it has the correct output
3. Fix the `format_footer` method so that it has the correct output
4. Fix logic error in `calculate_recipients`
5. Write the body of `print_recipients` to print out the recipients
6. Write the body of `format_article` to return a string with the formatted article
7. Write the rest of the `print_newsletter` method to print all the articles
8. Run code with `ruby newsletter.rb` and verify that it matches the sample output in `sample_output.txt`

### 1. Fix syntax errors in `newsletter.rb` so that it runs without errors

If you run `ruby newsletter.rb`, you'll notice that there are some syntax errors. Before you try the next tasks, get the code to run without errors.

As you solve the rest of the tasks, make sure that you can continue to run `ruby newsletter.rb` without errors.

### 2. Fix the `format_campus_location` method so that it has the correct output

Given the `CAMPUS`, `sample_output.txt` shows that `format_campus_location` should return `"Flatiron Springfield"`. Figure out why it is not working correctly, and fix it.

### 3. Fix the `format_footer` method so that it has the correct output

If you check the footer in `sample_output.txt`, you'll see that the footer should be

```txt
Work hard, be nice, and have an epic week! //
Flatiron School · Springfield · 171 Maple St, Springfield, MA 01105
```

Fix the logic in `format_footer` so that it prints the correct output.

### 4. Fix logic error in `calculate_recipients`

When people subscribe to the newsletter, they are added to `SUBSCRIBED`. When people unsubscribe from the newsletter, they are added to `UNSUBSCRIBED`. We need to avoid sending the newsletter to anyone who has unsubscribed. `calculate_recipients` should return an array with only the subscribers who have not unsubscribed.

Right now, it's not working. Figure out why and update it so that it works correctly.

### 5. Write the body of `print_recipients` to print out the recipients

Now that you have fixed `calculate_recipients`, you can use it to print out the list of recipients for the newsletter. Write a `print_recipients` method to do this. Check `sample_output.txt` for the formatting.

### 6. Write the body of `format_article` to return a string with the formatted article

Each article has an author, title, and text. Fill in the `format_article` method to return the article as a formatted string. It should look like

```txt
Mining
by: Destiny Blanda Bruen II
The orthogonal features, when combined, can explode into complexity.
```

The title comes first. On the next line is the byline, `by: [author]`. On the following line is the text of the article.

### 7. Write the rest of the `print_newsletter` method to print all the articles

Print the list of articles stored in the `ARTICLES` constant. All of them should be formatted as in the `format_article` method.

### 8. Run code with `ruby newsletter.rb` and verify that it matches the sample output in `sample_output.txt`

If you'd like to see if there are any differences between the results, you can run `diff sample_output.txt <(ruby newsletter.rb)`. That will show the lines of difference between your output and `sample_output.txt`. If there is no difference, no lines will be printed.

After you check that you are getting the right output, commit your solution. That way you have a snapshot of your working version before you make any further changes.

Next, take a look at your solution to see if there is any code you'd like to clean up. If you'd like, add comments to explain anything that might be confusing. Update your variable names to make sure they are meaningful and clear. If there is any shared or reused logic between methods, see if you can extract it into a helper method. As you refactor, make sure to check your output to see that your solution still works.

Once you have cleaned up your solution to your satisfaction, commit again and submit your code.

## Rubric

### Ruby Syntax Basics

1. Invalid syntax, code does not execute.
2. Valid syntax, but does not correctly use conditional statements, looping constructs, methods, or load code from other files
3. Valid syntax. Use of conditional statements, looping constructs, and methods is incomplete or with some errors.
4. Valid syntax. Correct use of conditional statements, looping constructs, and methods. Code generates the right output when executed. Code may have some unclear variable names, comments, formatting, or non-idiomatic Ruby.
5. Valid syntax. Correct use of conditional statements, looping constructs, and methods. Code generates the right output when executed. Code uses clear variable names, comments, formatting, and idiomatic Ruby.

### Problem Solving and Debugging in Ruby

1. Did not fix syntax or logic errors
2. Fixed syntax errors but not logic errors
3. Fixed syntax errors and some logic errors
4. Fixed syntax and logic errors
5. Fixed syntax and logic errors confidently, and made the code more resilient

### Ruby Arrays, Hashes, and Enumerable methods

1. Incorrect syntax for array and hash manipulation and enumerable methods
2. Some correct syntax for array and hash manipulation and enumerable methods, but incorrect logic
3. Correct syntax and logic for array and hash manipulation, but not enumerable methods
4. Correct syntax and logic for array and hash manipulation and enumerable methods
5. Correct syntax and logic for array and hash manipulation and enumerable methods and appropriate selection of enumerable methods for given tasks
