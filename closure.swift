// Double in :- this means the closure takes two parameters of type Double and returns a Double value.
// We cannot make a closure without parameters and return type. If we don't want to pass any parameter or return any value, we can use () in place of parameters and return type.
let calculateSalery = {(basicSalery : Double , bonus : Double) -> Int in
    return (Int)(basicSalery + bonus)
}
let salery = calculateSalery(1000.0, 200.0)
print("Salery is \(salery)")