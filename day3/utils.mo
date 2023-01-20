actor {
// For the challenges 2-5 you will have to change the habitual structure of your repository & instead of having a unique `challenge.mo` file you'll have three files: `utils.mo`, `animal.mo` & `main.mo`.  You can check the corresponding structure in the [example repository](https://github.com/sebthuillier/motokobootcamp2023).
// //1. In your file called `utils.mo`: create a function called `second_maximum` that takes an array [Int] of integers and returns the second largest number in the array.
// second_maximum(array : [Int]) -> Int;
func second_maximum(array : [Int] ) : Int {
    //let array = [2, 5, 6, 8, 9 ,0, 3, 5, 1];
    let arr = array;
    let index : Nat = arr.size() - 2;
    let sorted_array = Array.sort(arr, Nat.compare);
    return sorted_array[index];
};
// // 1. In your file called `utils.mo`: create a function called `remove_even` that takes an array [Nat] and returns a new array with only the odd numbers from the original array.
//remove_event(array : [Nat]) -> [Nat];
func remove_even(array : [Nat]) : [Nat] {
        Array.filter<Nat>(array, func x = x % 2 == 1);
};

// // 1. In your file called `utils.mo`: write a function `drop` that takes 2 parameters: an array [T] and a **Nat** n. This function will drop the n first elements of the array and returns the remainder.
 // [https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e7048233-1b80-4dc8-9552-749cc0b81409/26d4.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/e7048233-1b80-4dc8-9552-749cc0b81409/26d4.png)
//drop<T> : (xs : [T], n : Nat) -> [T]
func drop<T>(xs : [T], n : Nat) : [T] {
    let size_array = xs.size();
    let buf_from_arr = Buffer.fromArray<T>(xs);
    let finish_buf = Buffer.subBuffer<T>(buf_from_arr, n, size_array - n);
    buf_from_arr.clear();
    Buffer.toArray<T>(finish_buf);
    };
};
