import Foundation

// Abstraction Protocol
protocol RemoteControl {
    var device: Device { get set }
    func turnOn()
    func turnOff()
}

// Implementation Protocol
protocol Device {
    func isOn() -> Bool
    func turnOn()
    func turnOff()
}

// Concrete Implementation Classes
class TV: Device {
    var isSwitchedOn = false
    
    func isOn() -> Bool {
        return isSwitchedOn
    }
    
    func turnOn() {
        isSwitchedOn = true
        print("TV is turned on")
    }
    
    func turnOff() {
        isSwitchedOn = false
        print("TV is turned off")
    }
}

class SetupBox: Device {
    var isSwitchedOn = false
    
    func isOn() -> Bool {
        return isSwitchedOn
    }
    
    func turnOn() {
        isSwitchedOn = true
        print("Setup Box is turned on")
    }
    
    func turnOff() {
        isSwitchedOn = false
        print("Setup Box is turned off")
    }
}

// Abstraction Implementation
class RemoteControlImpl: RemoteControl {
    var device: Device
    
    init(device: Device) {
        self.device = device
    }
    
    func turnOn() {
        device.turnOn()
    }
    
    func turnOff() {
        device.turnOff()
    }
}
// Usage
let tv = TV()
let remote = RemoteControlImpl(device: tv)

remote.turnOn() //"TV is turned on"
remote.turnOff() //"TV is turned off"

let setupBox = SetupBox()
remote.device = setupBox
remote.turnOn() //"Setup Box is turned on"
remote.turnOff() //"Setup Box is turned off"
