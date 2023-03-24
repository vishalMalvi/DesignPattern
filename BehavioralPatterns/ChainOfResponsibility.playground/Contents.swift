import Foundation

struct Purchase {
    let number: Int
    let amount: Int
}

// protocol
protocol PurchaseApprover {
    var nextApprover: PurchaseApprover? { get set }
    func approve(purchase: Purchase) -> String
}

class Manager: PurchaseApprover {
    var nextApprover: PurchaseApprover?
    
    func approve(purchase: Purchase) -> String {
        if purchase.amount <= 1000 {
            return "Manager approved purchase \(purchase.number)"
        } else if let next = nextApprover {
            return next.approve(purchase: purchase)
        } else {
            return "Purchase \(purchase.number) requires an approver that can handle the amount"
        }
    }
}

class Supervisor: PurchaseApprover {
    var nextApprover: PurchaseApprover?
    
    func approve(purchase: Purchase) -> String {
        if purchase.amount <= 5000 {
            return "Supervisor approved purchase \(purchase.number)"
        } else if let next = nextApprover {
            return next.approve(purchase: purchase)
        } else {
            return "Purchase \(purchase.number) requires an approver that can handle the amount"
        }
    }
}

class Director: PurchaseApprover {
    var nextApprover: PurchaseApprover?
    
    func approve(purchase: Purchase) -> String {
        if purchase.amount <= 10000 {
            return "Director approved purchase \(purchase.number)"
        } else {
            return "Purchase \(purchase.number) requires an approver that can handle the amount"
        }
    }
}

// Usage
let manager = Manager()
let supervisor = Supervisor()
let director = Director()

manager.nextApprover = supervisor
supervisor.nextApprover = director

let purchase1 = Purchase(number: 1, amount: 500)
let purchase2 = Purchase(number: 2, amount: 5000)
let purchase3 = Purchase(number: 3, amount: 15000)

print(manager.approve(purchase: purchase1))
print(manager.approve(purchase: purchase2))
print(manager.approve(purchase: purchase3))
