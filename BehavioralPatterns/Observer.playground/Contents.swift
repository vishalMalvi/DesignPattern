import Foundation

// Protocol for observers
protocol Observer: AnyObject {
    func update()
}

// Protocol for subjects
protocol Subject {
    func addObserver(_ observer: Observer)
    func removeObserver(_ observer: Observer)
    func notifyObservers()
}

// A concrete subject class
class TemperatureSensor: Subject {
    var temperature: Double = 0
    private var observers = [Observer]()
    
    func addObserver(_ observer: Observer) {
        observers.append(observer)
    }
    
    func removeObserver(_ observer: Observer) {
        observers = observers.filter { $0 !== observer }
    }
    
    func notifyObservers() {
        observers.forEach { $0.update() }
    }
    
    func updateTemperature(newTemperature: Double) {
        temperature = newTemperature
        notifyObservers()
    }
}

// A concrete observer class
class Display: Observer {
    private let sensor: TemperatureSensor
    
    init(sensor: TemperatureSensor) {
        self.sensor = sensor
        self.sensor.addObserver(self)
    }
    
    deinit {
        sensor.removeObserver(self)
    }
    
    func update() {
        print("Temperature is now \(sensor.temperature) degrees.")
    }
}

// Usage
let sensor = TemperatureSensor()
let display = Display(sensor: sensor)
sensor.updateTemperature(newTemperature: 25.0) // Temperature is now 25.0 degrees.
sensor.removeObserver(display)
