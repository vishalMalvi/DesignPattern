import Foundation

// Adaptee
class FahrenheitSensor {
    
    func getTemperature() -> Double {
        let temperature = Double.random(in: -459.67...1000)
        print("Fahrenheit temperature: \(temperature)")
        return temperature
    }
}

// Target
protocol CelsiusSensor {
    func getTemperature() -> Double
}

// Adapter
class FahrenheitToCelsiusAdapter: CelsiusSensor {
    
    private let fahrenheitSensor: FahrenheitSensor
    
    init(fahrenheitSensor: FahrenheitSensor) {
        self.fahrenheitSensor = fahrenheitSensor
    }
    
    func getTemperature() -> Double {
        let fahrenheitTemperature = fahrenheitSensor.getTemperature()
        let celsiusTemperature = (fahrenheitTemperature - 32) * 5/9
        print("Celsius temperature: \(celsiusTemperature)")
        return celsiusTemperature
    }
}

// Client
class TemperatureMonitor {
    
    private let celsiusSensor: CelsiusSensor
    
    init(celsiusSensor: CelsiusSensor) {
        self.celsiusSensor = celsiusSensor
    }
    
    func displayTemperature() {
        let temperature = celsiusSensor.getTemperature()
        print("Current temperature is \(temperature) degrees Celsius.")
    }
}

// Usage
let fahrenheitSensor = FahrenheitSensor()
let adapter = FahrenheitToCelsiusAdapter(fahrenheitSensor: fahrenheitSensor)
let monitor = TemperatureMonitor(celsiusSensor: adapter)
monitor.displayTemperature()

