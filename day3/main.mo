actor {
// 3.  In `main.mo` import the type **List** from the Base Library and create a list that stores book.
import List "mo:base/List";
import Book "book";

type Book = Book.Book;
let book : Book = {
    title = "Pinoccio";
    pages = 1020;
};

var books : List.List<Book> = List.nil();

    
//4. In `main.mo` create a function called `add_book` that takes a book as parameter and returns nothing this function should add this book to your list. 
//Then create a second function called `get_books` that takes no parameter but returns an **Array** that contains all books stored in the list.
public func add_book(book : Book) : async () {
    books := List.push<Book>(book, books);
};

public query func get_books() : async [Book] {
    List.toArray(books);    
};
}
