import Foundation

// Protocol
protocol Employee {
    var name: String { get }
    var salary: Double { get }
    func printDetails()
}


class Developer: Employee {
    let name: String
    let salary: Double
    
    init(name: String, salary: Double) {
        self.name = name
        self.salary = salary
    }
    
    func printDetails() {
        print("Developer: \(name), salary: \(salary)")
    }
}

// Composite
class Manager: Employee {
    let name: String
    let salary: Double
    var subordinates: [Employee] = []
    
    init(name: String, salary: Double) {
        self.name = name
        self.salary = salary
    }
    
    func add(subordinate: Employee) {
        subordinates.append(subordinate)
    }

    func printDetails() {
        print("Manager: \(name), salary: \(salary)")
        for subordinate in subordinates {
            subordinate.printDetails()
        }
    }
}

// Usage
let developer1 = Developer(name: "John", salary: 1000)
let developer2 = Developer(name: "Mike", salary: 1200)
let developer3 = Developer(name: "Sarah", salary: 1100)

let manager1 = Manager(name: "Jack", salary: 2000)
let manager2 = Manager(name: "Jane", salary: 2500)

manager1.add(subordinate: developer1)
manager1.add(subordinate: developer2)

manager2.add(subordinate: developer3)

let ceo = Manager(name: "Peter", salary: 5000)
ceo.add(subordinate: manager1)
ceo.add(subordinate: manager2)

ceo.printDetails()

