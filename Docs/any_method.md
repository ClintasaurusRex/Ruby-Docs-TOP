# Ruby Enumerable Methods: `include?`, `any?`, `all?`, `one?`, and `none?`

Ruby provides several powerful enumerable methods to work with collections like arrays and hashes. Here, we will explore `include?`, `any?`, `all?`, `one?`, and `none?`.

---

## **`include?`**

### **What it Does**
The `include?` method checks if a specific element exists in a collection (array, hash, or range).

### **Syntax**
```ruby
collection.include?(element)
```

### **How to Use**
- Returns `true` if the element is found in the collection.
- Returns `false` otherwise.

### **Example**
```ruby
numbers = [1, 2, 3, 4, 5]
puts numbers.include?(3)  # Output: true
puts numbers.include?(6)  # Output: false
```

---

## **`any?`**

### **What it Does**
The `any?` method checks if **at least one** element in the collection satisfies a given condition.

### **Syntax**
```ruby
collection.any? { |element| condition }
```

### **How to Use**
- Returns `true` if at least one element meets the condition.
- Returns `false` if no elements meet the condition.

### **Example**
```ruby
numbers = [1, 2, 3, 4, 5]
puts numbers.any? { |num| num > 3 }  # Output: true
puts numbers.any? { |num| num > 10 } # Output: false
```

---

## **`all?`**

### **What it Does**
The `all?` method checks if **all elements** in the collection satisfy a given condition.

### **Syntax**
```ruby
collection.all? { |element| condition }
```

### **How to Use**
- Returns `true` if all elements meet the condition.
- Returns `false` if at least one element does not meet the condition.

### **Example**
```ruby
numbers = [2, 4, 6, 8]
puts numbers.all? { |num| num.even? }  # Output: true
puts numbers.all? { |num| num > 5 }    # Output: false
```

---

## **`one?`**

### **What it Does**
The `one?` method checks if **exactly one** element in the collection satisfies a given condition.

### **Syntax**
```ruby
collection.one? { |element| condition }
```

### **How to Use**
- Returns `true` if exactly one element meets the condition.
- Returns `false` if none or more than one element meets the condition.

### **Example**
```ruby
numbers = [1, 2, 3, 4, 5]
puts numbers.one? { |num| num > 4 }  # Output: true
puts numbers.one? { |num| num > 2 }  # Output: false
```

---

## **`none?`**

### **What it Does**
The `none?` method checks if **none of the elements** in the collection satisfy a given condition.

### **Syntax**
```ruby
collection.none? { |element| condition }
```

### **How to Use**
- Returns `true` if no elements meet the condition.
- Returns `false` if at least one element meets the condition.

### **Example**
```ruby
numbers = [1, 2, 3, 4, 5]
puts numbers.none? { |num| num > 5 }  # Output: true
puts numbers.none? { |num| num > 3 }  # Output: false
```

---

## **Why Use These Methods?**
- **`include?`**: Quickly check for the presence of an element.
- **`any?`**: Determine if at least one element meets a condition.
- **`all?`**: Ensure all elements meet a condition.
- **`one?`**: Verify that exactly one element meets a condition.
- **`none?`**: Confirm that no elements meet a condition.

These methods make your code more concise, readable, and expressive when working with collections in Ruby.
