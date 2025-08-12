# Ruby Loops Documentation

## Table of Contents

1. [Lesson Overview](#lesson-overview)
2. [What is a Loop?](#what-is-a-loop)
3. [A Simple Loop](#a-simple-loop)
4. [Controlling Loop Execution](#controlling-loop-execution)
5. [Loop Loop](#loop-loop)
6. [While Loop](#while-loop)
7. [Until Loop](#until-loop)
8. [Do/While Loops](#dowhile-loops)
9. [Ranges](#ranges)
10. [For Loop](#for-loop)
11. [Times Loop](#times-loop)
12. [Upto and Downto Loops](#upto-and-downto-loops)
13. [Conditionals Within Loops](#conditionals-within-loops)
14. [Iterators](#iterators)
15. [Recursion](#recursion)
16. [Summary](#summary)
17. [Exercises](#exercises)

---

## What is a Loop?

A loop is the repetitive execution of a piece of code for a given amount of repetitions or until a certain condition is met. Loops are fundamental in programming for automating repetitive tasks and iterating over data.

---

## Lesson Overview

This section contains a general overview of topics covered in this lesson:

- Explain what a loop is and why it's useful
- Explain what a loop loop is and how to use it
- Explain what a while loop is and how to use it
- Explain what a for loop is and how to use it
- Explain what a #times loop is and how to use it
- Explain what an until loop is and how to use it
- Explain what #upto and #downto loops are and how to use them

## Loop Loop

The `loop` loop is Ruby's loop that just won't quit. It's an infinite loop that will keep going unless you specifically request for it to stop, using the `break` command. Most commonly, `break` is used with a condition, as illustrated in the example below.

```ruby
i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end
```

You won't see this loop used much in Ruby. If you find yourself using `loop`, know that there is probably a better loop for you out there, like one of the more specific loops below.

## While Loop

A `while` loop is similar to the `loop` loop except that you declare the condition that will break out of the loop up front.

```ruby
i = 0
while i < 10 do
  puts "i is #{i}"
  i += 1
end
```

This is an example of using a while loop with a count. Because you declare the condition that breaks the loop up front, the intention of your code is much clearer, making this code easier to read than our loop loop above.

You can also use while loops to repeatedly ask a question of the user until they give the desired response:

```ruby
while gets.chomp != "yes" do
  puts "Are we there yet?"
end
```

This example shows the flexibility advantage of a while loop: it will run until its break condition is met, which could be for a variable number of loops or a number of loops that is initially unknown. Who knows if you've arrived at your destination the first, fourth, or seventy-ninth time you ask?

## Until Loop

The `until` loop is the opposite of the `while` loop. A while loop continues for as long as the condition is true, whereas an until loop continues for as long as the condition is false. These two loops can therefore be used pretty much interchangeably. Ultimately, what your break condition is will determine which one is more readable.

As much as possible, you should avoid negating your logical expressions using `!` (not). First, it can be difficult to actually notice the exclamation point in your code. Second, using negation makes the logic more difficult to reason through and therefore makes your code more difficult to understand. These situations are where `until` shines.

We can re-write our while loop examples using until:

```ruby
i = 0
until i >= 10 do
  puts "i is #{i}"
  i += 1
end
```

You can see here that using `until` means that the loop will continue running until the condition `i >= 10` is true.

The next example shows how you can use `until` to avoid the negation `!` that the above while loop had to use:

```ruby
until gets.chomp == "yes" do
  puts "Do you like Pizza?"
end
```

Much more readable! And who doesn't like Pizza.

## Ranges

What if we know exactly how many times we want our loop to run? Ruby lets us use something called a range to define an interval. All we need to do is give Ruby the starting value, the ending value, and whether we want the range to be inclusive or exclusive.

```ruby
(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4

# We can make ranges of letters, too!
('a'..'d')  # a, b, c, d
```

## For Loop

A `for` loop is used to iterate through a collection of information such as an array or range. These loops are useful if you need to do something a given number of times while also using an iterator.

```ruby
for i in 0..5
  puts "#{i} zombies incoming!"
end
```

That's really all there is to it.

## Times Loop

If you need to run a loop for a specified number of times, then look no further than the trusty `#times` loop. It works by iterating through a loop a specified number of times and even throws in the bonus of accessing the number it's currently iterating through.

```ruby
5.times do
  puts "Hello, world!"
end
```

I'm sure you can guess what that code does. Ruby is easily readable that way!

```ruby
5.times do |number|
  puts "Alternative fact number #{number}"
end
```

Remember, loops will start counting from a zero index unless specified otherwise, so the first loop iteration will output `Alternative fact number 0`.

## Upto and Downto Loops

The Ruby methods `#upto` and `#downto` do exactly what you'd think they do from their names. You can use these methods to iterate from a starting number either up to or down to another number, respectively.

```ruby
5.upto(10) { |num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) { |num| print "#{num} " }   #=> 10 9 8 7 6 5
```

If you need to step through a series of numbers (or even letters) within a specific range, then these are the loops for you.
