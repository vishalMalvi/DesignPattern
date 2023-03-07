import Foundation

// Protocol
protocol Animal {
    func speak()
}

// Implements Animal Protocol
class Dog: Animal {
    func speak() {
        print("🐶 Woof")
    }
}

class Cat: Animal {
    func speak() {
        print("🐱 Meow")
    }
}

// Animal type enum
enum AnimalType {
    case dog
    case cat
}

// Define the factory
class AnimalFactory {
    
    static func createAnimal(ofType type: AnimalType) -> Animal {
        switch type {
        case .dog:
            return Dog()
        case .cat:
            return Cat()
        }
    }
}

// Usage
let dog = AnimalFactory.createAnimal(ofType: .dog)
dog.speak()

let cat = AnimalFactory.createAnimal(ofType: .cat)
cat.speak()


