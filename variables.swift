// Let can only be assigned once, and cannot be reassigned.
// Let values cannot be changed after they are set. They are immutable.
let a = "Hello, World!";
print(a);
// let a = "new";
//Var can be reassigned and changed. They are mutable.
var b = "Hello, World!";
b = "new";
print(b);
// Expilictly declaring the type of variable 
let c: String = "Expilicitly declaring the type of variable";
print(c);

// Array Defining with different types of data
var array : [Any] = [1, 2, 3, "Hello", 4.5, true]
print(array);
//or 
var array2 = [1, 2, 3, "Hello", 4.5, true] as [Any]
print(array2);