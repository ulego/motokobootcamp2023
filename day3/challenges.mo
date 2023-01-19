For the challenges 2-5 you will have to change the habitual structure of your repository & instead of having a unique `challenge.mo` file you'll have three files: `utils.mo`, `animal.mo` & `main.mo`.  You can check the corresponding structure in the [example repository](https://github.com/sebthuillier/motokobootcamp2023).

1. In your file called `utils.mo`: create a function called `second_maximum` that takes an array [Int] of integers and returns the second largest number in the array.

```
second_maximum(array : [Int]) -> Int;

```

1. In your file called `utils.mo`: create a function called `remove_even` that takes an array [Nat] and returns a new array with only the odd numbers from the original array.

```
remove_event(array : [Nat]) -> [Nat];

```

1. In your file called `utils.mo`: write a function `drop` that takes 2 parameters: an array [T] and a **Nat** n. This function will drop the n first elements of the array and returns the remainder.

> 
> 
> 
> ![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/38ad8ccf-bd30-4fca-bda0-26e6a24565da/26d4.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/38ad8ccf-bd30-4fca-bda0-26e6a24565da/26d4.png)
> 

```
drop<T> : (xs : [T], n : Nat) -> [T]

```

1. 
    
    In your file called `book.mo` create a custom type with at least 2 properties (title of type **Text**, pages of type **Nat**), import this type in your `main.mo` and create a variable that will store a book.
    
2. 
    
    In your file called `book.mo` create a function called `create_book` that takes two parameters : a title of type **Text**, and number of pages of type **Nat** and returns a book. This function will create a new book based on the parameters passed and then read it before returning it.
    
3. 
    
    In `main.mo` import the type **List** from the Base Library and create a list that stores book.
    
4. 
    
    In `main.mo` create a function called `add_book` that takes a book as parameter and returns nothing this function should add this book to your list. Then create a second function called `get_books` that takes no parameter but returns an **Array** that contains all books stored in the list.
    

# Useful resources & links
