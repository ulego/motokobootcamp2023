import HashMap "mo:base/HashMap";
import Iter "mo:base/Iter";
import Principal "mo:base/Principal";
import List "mo:base/List";
import Buffer "mo:base/Buffer";
import Array "mo:base/Array";

actor {
// // // !!! The cost of looking for an element will increase linearly with the size of your list !!! //
//Write a function unique that takes a list l of type List and returns a new list with all duplicate elements removed.
////unique<T> : (l : List<T>, equal: (T,T) -> Bool) -> List<T> 
	func unique<T>(l : List.List<T>, equal: (T,T) -> Bool) : List.List<T> {
		let buf  : Buffer.Buffer<T> = Buffer.fromArray<T>(List.toArray(l));
		let buf_with_uniq : Buffer.Buffer<T> = Buffer.Buffer<T>(buf.size());
		for (b in buf.vals()) {
			if (Buffer.contains(buf_with_uniq, b, equal) == false) {
				buf_with_uniq.add(b);
			};
		};
		return List.fromArray(Buffer.toArray<T>(buf_with_uniq));	
	};
//Write a function reverse that takes l of type List and returns the reversed list.
////reverse<T> : (l : List<T>) -> List<T>;
func reverse<T>(l : List.List<T>) : List.List<T> {
		let a : [var T] = Array.thaw(List.toArray(l));
		var a_size : Nat = a.size();
		var index : Nat = a_size - 1; 
		List.iterate(l, func (x : T) {
			if (index >= 0) {
				a[index] := x;
				if (index > 0) index -= 1;
			}
		});
		return List.fromArray(Array.freeze(a));
	};

//Write a function is_anonymous that takes no arguments but returns a Boolean indicating if the caller is anonymous or not.
////is_anynomous : () -> async Bool; 
	public shared ({caller}) func is_anynomous() : async Bool {
		return Principal.isAnonymous(caller);
	};

//Write a function find_in_buffer that takes two arguments, buf of type Buffer and val of type T, and returns the optional index of the first occurrence of "val" in "buf".
////find_in_buffer<T> :  (buf: Buffer.Buffer<T>, val: T, equal: (T,T) -> Bool) -> ?Nat


//Take a look at the code we've seen before in this guide:
// module {
//     let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

//     public shared ({ caller }) func add_username(name : Text) : async () {
//       usernames.put(caller, name);
//     };

//     func get_usernames : () : async [(Principal, Text)]{
//      ();
//     };
// };

//Add a function called get_usernames that will return an array of tuples (Principal, Text) which contains all the entries in usernames.
// get_usernames : () -> async [(Principal, Text)];
let usernames = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);
public shared ({ caller }) func get_usernames() : async [(Principal, Text)] {
		return Iter.toArray<(Principal, Text)>(usernames.entries());
};
}
