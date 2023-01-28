import UIKit

var greeting = "Hello, playground"

struct User {
    let id: UUID
    let email: String
}

protocol Area { 
    func getArea() -> Double
}

struct Rectangle: Area {
    let length: Double
    let breadth: Double
    
    func getArea() -> Double {
        return length * breadth
    }
}

struct Square: Area {
    let side: Double
    
    func getArea() -> Double {
        return side * side
    }
}

let rectangleArea = Rectangle(length: 100, breadth: 80)
print(rectangleArea.getArea())
let squareArea = Square(side: 10)
print(squareArea.getArea())

