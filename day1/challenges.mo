// Coding challenges (https://github.com/motoko-bootcamp/motokobootcamp-2023/blob/main/daily_guides/day_1/GUIDE.MD)
//  Write a function multiply that takes two natural numbers and returns the product.
// - multiply(n : Nat, m : Nat) -> async Nat

  actor {
      public func multiply(n : Nat, m : Nat) : async Nat {
          var result = n * m;
          return result;
          };
  };
//  Write a function volume that takes a natural number n and returns the volumte of a cube with side length n.
// - volume(n : Nat) -> async Nat

  actor {
      public func volume(n : Nat) : async Nat {
          let preresult = n * n; //or simplest n ** n;
          var result = preresult * n; 
          return result;
          };
  };

//  Write a function hours_to_minutes that takes a number of hours n and returns the number of minutes.
// - hours_to_minutes(n : Nat) -> async Nat

  actor {
      public func hours_to_minutes(n : Nat) : async Nat {
          var result =  n * 60;
          return result;
          };
  };
 
// Write two functions set_counter & get_counter .
// - set_counter sets the value of counter to n.
//  - set_counter(n : Nat) -> async ()  
// - get_counter returns the current value of counter.
//  - get_counter() -> async Nat
// from git (https://github.com/dfinity/examples/blob/master/motoko/counter/src/Main.mo):

actor Counter {
  stable var counter = 0;
  // Get the value of the counter.
  public query func get_counter() : async Nat {
    return counter;
  };
  // Set the value of the counter.
  public func set_counter(n : Nat) : async () {
    counter := n;
  };
};

//  Write a function test_divide that takes two natural numbers n and m and returns a boolean indicating if n divides m.
// - test_divide(n: Nat, m : Nat) -> async Bool

  actor {
      var result = false;
      public func test_divide(n: Nat, m : Nat) : async Bool {
          var divide = n % m;
          if (divide == 0) {var result = true}; //ХЗ
          return result;
      };
  };

//  Write a function is_even that takes a natural number n and returns a boolean indicating if n is even.
// - is_even(n : Nat) -> async Bool

  actor {
      var result = false;
      public func is_even(n: Nat, m : Nat) : async Bool {
          var divide = n % 2 : Nat;
          if (divide == 0) {var result = true};
          return result;
      };
  };

