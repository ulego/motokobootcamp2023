1 Nat32
2  
actor {
    public func multiply(x : Int, y : Int) : Int {
        x * y;
    };
   }; 
3  
import Float "mo:base/Float";
import Int "mo:base/Int";

actor {
    public func sqrt(x : Int, y : Int) : Float {
        Float.sqrt(Float.add(Float.fromInt(x * y), 10.3));
    };
};  
