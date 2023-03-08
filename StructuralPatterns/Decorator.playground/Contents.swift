// Component protocol
protocol Pizza {
    func getDescription() -> String
    func getCost() -> Double
}

// Concrete component
class MargheritaPizza: Pizza {
    func getDescription() -> String {
        return "Margherita Pizza"
    }
    
    func getCost() -> Double {
        return 10.0
    }
}

// Decorator abstract class
class PizzaDecorator: Pizza {
    private let pizza: Pizza
    
    init(pizza: Pizza) {
        self.pizza = pizza
    }
    
    func getDescription() -> String {
        return pizza.getDescription()
    }
    
    func getCost() -> Double {
        return pizza.getCost()
    }
}

// Concrete decorator 1
class TomatoSauce: PizzaDecorator {
    override init(pizza: Pizza) {
        super.init(pizza: pizza)
    }
    
    override func getDescription() -> String {
        return super.getDescription() + ", Tomato Sauce"
    }
    
    override func getCost() -> Double {
        return super.getCost() + 1.0
    }
}

// Concrete decorator 2
class MozzarellaCheese: PizzaDecorator {
    override init(pizza: Pizza) {
        super.init(pizza: pizza)
    }
    
    override func getDescription() -> String {
        return super.getDescription() + ", Mozzarella Cheese"
    }
    
    override func getCost() -> Double {
        return super.getCost() + 2.0
    }
}


var pizza: Pizza = MargheritaPizza()
print(pizza.getDescription()) //Margherita Pizza
print(pizza.getCost()) // 10.0

// Decorate with Tomato Sauce
pizza = TomatoSauce(pizza: pizza)
print(pizza.getDescription()) // Margherita Pizza, Tomato Sauce
print(pizza.getCost()) // 11.0

// Decorate with Mozzarella Cheese
pizza = MozzarellaCheese(pizza: pizza)
print(pizza.getDescription()) //Margherita Pizza, Tomato Sauce, Mozzarella Cheese
print(pizza.getCost()) // 13.0
