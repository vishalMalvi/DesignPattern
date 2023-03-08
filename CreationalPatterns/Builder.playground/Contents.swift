import Foundation

class Car {
    
    var model: String
    var color: String
    
    init(model: String, color: String) {
        self.model = model
        self.color = color
    }
}

class CarBuilder {
    
    private var model: String?
    private var color: String?
    
    func setModel(_ model: String) -> CarBuilder {
        self.model = model
        return self
    }
    
    func setColor(_ color: String) -> CarBuilder {
        self.color = color
        return self
    }
    
    func build() -> Car? {
        guard let model = model, let color = color else {
            return nil
        }
        
        return Car(model: model, color: color)
    }
}

let carBuilder = CarBuilder()
let car = carBuilder.setModel("SUV")
                    .setColor("Red")
                    .build()

if let car = car {
    print("Car model: \(car.model), color: \(car.color)")
} else {
    print("Error building car")
}
