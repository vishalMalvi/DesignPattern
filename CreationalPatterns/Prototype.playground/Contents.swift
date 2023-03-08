import Foundation

// Protocol
protocol Prototype {
    func clone() -> Prototype
}

// Person Apple which implements the protocol Prototype
class Person: Prototype {
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    //  for cloning the object
    func clone() -> Prototype {
        return Person(name: self.name, age: self.age)
    }
}


// Create an instance of the Person class
let person1 = Person(name: "Alex", age: 30)

// Clone the person1 object
let person2 = person1.clone() as! Person

// Change the name and age of the cloned object
person2.name = "Yash"
person2.age = 25

print(person1.name) // Alex
print(person1.age) // 30
print(person2.name) // Yash
print(person2.age) // 25

