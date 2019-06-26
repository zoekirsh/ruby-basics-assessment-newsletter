# Ruby Basics Assessment - Newsletter

This assessment is designed to test your understanding of the basics of Ruby. It covers:

- Ruby Syntax Basics
- Problem Solving and Debugging in Ruby
- Ruby Arrays, Hashes, and Enumerable methods

Read these instructions carefully. They describe the code you'll be working with and what you need to do.

At the bottom of this file is the rubric used to evaluate your submission. You do not need to get everything right. Focus on getting each piece of code to work rather than writing partial solutions to each.

## Introduction

The program you are working with is a command line tool to help generate newsletters. The code isn't working right now - there are errors in the existing code, and there's some functionality that is missing. Your job is to fix the errors and add the functionality so that the newsletters are generated correctly.

Make edits to `newsletter.rb`. As you do, you can run the code with `ruby newsletter.rb` to check the output. `sample_output.txt` shows the output that you will see if you complete all of the tasks below.

## Instructions

These should be completed in order - each step builds on the previous steps. See below for a more detailed explanation of each step.

1. Fix errors in `newsletter.rb` so that it runs without errors
2. Fix the `format_campus_location` method so that it has the correct output
3. Fix logic error in `calculate_recipients`
4. Write the body of `print_article` to print a string with the formatted article
5. Write the rest of the `print_articles` method to print all the articles
6. Update `generate_newsletter` to work with numeric inputs
7. Run code with `ruby newsletter.rb` and verify that it matches the sample output in `sample_output.txt`

Feel free to use any debugging tools you've learned in order to solve the challenge. Remember, you may need to add additional code to `newsletter.rb` in order to use tools like `binding.pry`.

### 1. Fix errors in `newsletter.rb` so that it runs without errors

If you run `ruby newsletter.rb`, you'll notice that the code exits with an error. Before you try the next tasks, get the code to run without errors.

As you solve the rest of the tasks, make sure that you can continue to run `ruby newsletter.rb` without errors.

### 2. Fix the `format_campus_location` method so that it has the correct output

When you run `ruby newsletter.rb`, the subject line shows

```txt
Subject: Flatiron  Newsletter - Jun 13, 2019
```

If you check `sample_output.txt`, it shows that the right output should be

```txt
Subject: Flatiron Springfield Newsletter - Jun 13, 2019
```

`format_campus_location` should return `"Flatiron Springfield"`. Figure out why it is not working correctly, and fix it. You'll know it's working when the subject line in the output shows correctly.

### 3. Fix logic error in `calculate_recipients`

When people subscribe to the newsletter, they are added to `SUBSCRIBED`. When people unsubscribe from the newsletter, they are added to `UNSUBSCRIBED`. We need to avoid sending the newsletter to anyone who has unsubscribed. `calculate_recipients` should return an array. None of the emails in the `UNSUBSCRIBED` array should appear in the results array returned.

Right now, it's not working. When we run `ruby newsletter.rb`, we can see that `cedricschmidt@robel.io` is getting included in the recipients, despite appearing in the `UNSUBSCRIBED` array.

Figure out why the method is not working and update it so that it works correctly. You can check if your version is working by looking at the output -`cedricschmidt@robel.io` should be gone from the beginning, and the last recipient should be `luiswisoky@mcdermottpadberg.com`.

Your `calculate_recipients` method should return a new array - it should not change the `SUBSCRIBERS` array.

### 4. Write the body of `print_article` to print a string with the formatted article

Each article has an author, title, and text. Fill in the `print_article` method to print the article as a formatted string. It should look like

```txt
Mining
by: Destiny Blanda Bruen II
The orthogonal features, when combined, can explode into complexity.
```

The title comes first. On the next line is the byline. On the following line is the text of the article.

When your method is working right, you should see the `Mining` article above in the output of `ruby newsletter.rb` instead of

```txt
TITLE
by: AUTHOR
TEXT
```

### 5. Write the rest of the `print_articles` method to print all the articles

Right now, `print_articles` only prints one article - the first article in the `articles` argument. It should print out all of the articles, not just the first one.

Fix the `print_articles` method so that it prints all the articles passed in, formatted with `print_article`.

At this point, your output should match the output in `sample_output.txt`

If you'd like to see if there are any differences between the results, you can run `diff sample_output.txt <(ruby newsletter.rb)`. That will show the lines of difference between your output and `sample_output.txt`. If there is no difference, no lines will be printed.

### 6. Update `generate_newsletter` to work with numeric inputs

Running `ruby newsletter.rb` should generate a newsletter with 3 articles. If you pass a number to the program, like `ruby newsletter.rb 10`, it should generate a newsletter with that many articles. For example, `ruby newsletter.rb 5` should generate a newsletter with 5 articles. If the number is larger than the number of the articles, the program should print all of the articles.

Update the `generate_newsletter` method so that it prints the right number of articles when the input is a number.

If the input is not a number, or if it's a number 0 or less, the program should print `Input should be a number more than 0`. Remember, you can convert a string to a number with `to_i`.

The program should either print this warning, or print a newsletter - not both.

### 7. Run the code and verify that it matches the sample output

Now that your code is supporting different inputs, you'll need to check it against those inputs.

Running `ruby newsletter.rb` should have the same output as `sample_output.txt`. You can check to see if there are any differences between the results by running `diff sample_output.txt <(ruby newsletter.rb)`. That will show the lines of difference between your output and `sample_output.txt`. If there is no difference, no lines will be printed.

Running `ruby newsletter.rb test` should output

```
Input should be a number more than 0
```

You should also see the warning output if you run `ruby newsletter.rb -5` or  `ruby newsletter.rb 0`.

Running `ruby newsletter.rb 10` should have the same result that is captured in `10_sample_output.txt`. If you'd like to check this result, you can use `diff 10_sample_output.txt <(ruby newsletter.rb 10)`. Just as before, this will show any lines of difference between your program and the sample output. If there are no differences, no lines will be printed.

**After you check that you are getting the right output, commit your solution.** That way you have a snapshot of your working version before you make any further changes.

Next, take a look at your solution to see if there is any code you'd like to clean up. If you'd like, add comments to explain anything that might be confusing. Update your variable names to make sure they are meaningful and clear. If there is any shared or reused logic between methods, see if you can extract it into a helper method. As you refactor, make sure to check your output to see that your solution still works.

Once you have cleaned up your solution to your satisfaction, commit again and submit your code.

## Rubric

### Ruby Syntax Basics

1. Invalid syntax, code does not execute.
2. Valid syntax, but does not correctly use conditional statements, looping constructs, and methods
3. Valid syntax. Use of conditional statements, looping constructs, and methods is incomplete or with some errors.
4. Valid syntax. Correct use of conditional statements, looping constructs, and methods. Code generates the right output when executed. Code may have some unclear variable names, comments, formatting, or non-idiomatic Ruby.
5. Valid syntax. Correct use of conditional statements, looping constructs, and methods. Code generates the right output when executed. Code uses clear variable names, comments, formatting, and idiomatic Ruby.

### Problem Solving and Debugging in Ruby

1. Did not fix syntax or logic errors
2. Fixed syntax errors but not logic errors
3. Fixed syntax errors and some logic errors
4. Fixed syntax and logic errors
5. Fixed syntax and logic errors, output exactly matches expected output

### Ruby Arrays, Hashes, and Enumerable methods

1. Incorrect syntax for array and hash manipulation and enumerable methods
2. Some correct syntax for array and hash manipulation and enumerable methods, but incorrect logic
3. Correct syntax and logic for array and hash manipulation, but not enumerable methods
4. Correct syntax and logic for array and hash manipulation and enumerable methods
5. Correct syntax and logic for array and hash manipulation and enumerable methods and appropriate selection of enumerable methods for given tasks
