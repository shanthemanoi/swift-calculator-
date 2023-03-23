class Calculator {
    
    func add(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }
    
    func subtract(_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }
    
    func multiply(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }
    
    func divide(_ num1: Double, _ num2: Double) -> Double {
        guard num2 != 0 else {
            fatalError("Error: Division by zero")
        }
        return num1 / num2
    }
    
}

// Example usage:
let calculator = Calculator()

print("Enter the first number:")
guard let num1 = Double(readLine() ?? "") else {
    fatalError("Error: Invalid input")
}

print("Enter the second number:")
guard let num2 = Double(readLine() ?? "") else {
    fatalError("Error: Invalid input")
}

print("Enter the operation (+, -, *, /):")
guard let operation = readLine() else {
    fatalError("Error: Invalid input")
}

var result: Double

switch operation {
case "+":
    result = calculator.add(num1, num2)
case "-":
    result = calculator.subtract(num1, num2)
case "*":
    result = calculator.multiply(num1, num2)
case "/":
    result = calculator.divide(num1, num2)
default:
    fatalError("Error: Invalid operation")
}

print("Result: \(result)")

