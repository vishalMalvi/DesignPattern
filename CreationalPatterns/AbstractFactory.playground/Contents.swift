import Foundation

// Protocol
protocol Shirt {
    func getDescription() -> String
}

protocol Pants {
    func getDescription() -> String
}

// Abstract Factory
protocol ClothingFactory {
    func createShirt() -> Shirt
    func createPants() -> Pants
}

// Concrete factory
class MenClothingFactory: ClothingFactory {
    func createShirt() -> Shirt {
        return MenShirt()
    }
    
    func createPants() -> Pants {
        return MenPants()
    }
}

class WomenClothingFactory: ClothingFactory {
    func createShirt() -> Shirt {
        return WomenShirt()
    }
    
    func createPants() -> Pants {
        return WomenPants()
    }
}

// Concrete product MenShirt conforms to Shirt
class MenShirt: Shirt {
    func getDescription() -> String {
        return "Men's Shirt"
    }
}

// Concrete product MenShirt conforms to Pants
class MenPants: Pants {
    func getDescription() -> String {
        return "Men's Pants"
    }
}

// Concrete product WomenShirt conforms to Shirt
class WomenShirt: Shirt {
    func getDescription() -> String {
        return "Women's Shirt"
    }
}

// Concrete product WomenShirt conforms to Pants
class WomenPants: Pants {
    func getDescription() -> String {
        return "Women's Pants"
    }
}


let menClothingFactory = MenClothingFactory()
let womenClothingFactory = WomenClothingFactory()

let menShirt = menClothingFactory.createShirt()
let menPants = menClothingFactory.createPants()

let womenShirt = womenClothingFactory.createShirt()
let womenPants = womenClothingFactory.createPants()

print(menShirt.getDescription()) // Men's Shirt
print(menPants.getDescription()) // Men's Pants

print(womenShirt.getDescription()) // Women's Shirt
print(womenPants.getDescription()) // Women's Pants
