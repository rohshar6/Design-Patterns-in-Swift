import UIKit

protocol DogSound {
    func bark()
}

protocol DuckSound {
    func quack()
}

class Dog: DogSound {
    func bark() {
        print("bark")
    }
}

class Duck: DuckSound {
    func quack() {
        print("quack")
    }
}
