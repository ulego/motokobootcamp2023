import Int "mo:base/Int";
import Array "mo:base/Array";
import Char "mo:base/Char";
import Debug "mo:base/Debug";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
import Buffer "mo:base/Buffer";

actor {
// Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
//// average_array(array : [Int]) -> async Int. 
public query func average_array(array : [Int]) : async Int {
    var sum : Int = 0;
    for (element in array.vals()) {
    sum += element;
    };
    sum / array.size()
};
// Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
//// count_character(t : Text, c : Char) -> async Nat
public query func count_character(t : Text, c : Char) : async Nat {
    var count : Nat = 0;
    for (char in t.chars()) {
        //Debug.print(debug_show(char));
        if (Char.equal(char, c)) {
            Debug.print(debug_show("Yea"));
            count += 1
        };

    };
      return count;
};  
// Write a function factorial that takes a natural number n and returns the factorial of n.
//// factorial(n : Nat) ->  async Nat
public query func factorial(n : Nat)  : async Nat {
    var fact : Nat = 1;
        for (i in Iter.range(1, n)) {
            fact *= i;
        };
        return fact;
};
// Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
//// number_of_words(t : Text) -> async Nat
public query func number_of_words(t : Text) : async Nat  {
    var count : Nat = 0;
    //Debug.print(debug_show(text));
    let splitted = Text.split(t, #char ' ');
    let array = Iter.toArray<Text>(splitted);
    for (element in array.vals()){
        switch(element){
            case(""){};
            case(_){count += 1};
        };
    };
    return count;
};

// Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
//// find_duplicates(a : [Nat]) -> async [Nat]
// // see https://github.com/dfinity/motoko-base/blob/master/src/Buffer.mo#L1647 
// Write a function convert_to_binary that takes a natural number n and returns a string representing the binary representation of n.
////convert_to_binary(n : Nat) -> async Text
public query func convert_to_binary(n : Nat) : async Text {
    var na : Nat = n;
    var b : Text = "";
    if (n == 0) {return "0"};
    while (na > 0){
        
        switch(na % 2){
            case(0){b := "0" # b};
            case(1){b := "1" # b};
            case(_){};
        };
        na := na / 2; 
    };
    return b;
};
}
