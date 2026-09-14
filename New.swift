let a = "Hello, World!";
print(a);

// String Interpolation
let name = "Alice"
let lastName = "Smith"
print("Hello, \(name) \(lastName)!") // Output: Hello, Alice Smith!

// Without Interpolation
print("Hello, " + name + " " + lastName + "!") // Output: Hello, Alice Smith!

// DIff erence between Interpolation and Concatenation
// In memory usage, string interpolation is generally more efficient than concatenation, especially when dealing with multiple strings. Interpolation allows the compiler to optimize the string creation process, while concatenation creates multiple intermediate strings, which can lead to increased memory usage and slower performance.

