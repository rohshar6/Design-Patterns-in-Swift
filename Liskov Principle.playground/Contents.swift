import UIKit

class Shape {
    func getArea() -> Double {
        return .zero
    }
}

class Square: Shape {
    var side: Double = .zero
    override func getArea() -> Double {
        return side * side ✅
    }
}

class Rectangle: Shape {} ✅
