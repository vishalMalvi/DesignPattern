import Foundation

// protocol for the commands
protocol Command {
    func execute()
}

//  class for LightOnCommand
class LightOnCommand: Command {
    let light: Light
    
    init(_ light: Light) {
        self.light = light
    }
    
    func execute() {
        light.turnOn()
    }
}

//  class for LightOffCommand
class LightOffCommand: Command {
    let light: Light
    
    init(_ light: Light) {
        self.light = light
    }
    
    func execute() {
        light.turnOff()
    }
}

//  the receiver
class Light {
    func turnOn() {
        print("Light turned on")
    }
    
    func turnOff() {
        print("Light turned off")
    }
}

//  the invoker
class RemoteControl {
    var command: Command?
    
    func pressButton() {
        command?.execute()
    }
}

// Usage
let light = Light()
let remoteControl = RemoteControl()
let lightOnCommand = LightOnCommand(light)
remoteControl.command = lightOnCommand

remoteControl.pressButton() //  Light turned on

// Change the command to turn the light off
let lightOffCommand = LightOffCommand(light)
remoteControl.command = lightOffCommand

remoteControl.pressButton() // Light turned off


