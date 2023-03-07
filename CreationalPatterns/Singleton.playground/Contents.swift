import Foundation

class MySingleton {
    
    static let sharedInstance = MySingleton()
    
    // private initialser
    private init () {}
    
    func doSomething() {
        print("Hello from the singleton :) ")
    }
}

MySingleton.sharedInstance.doSomething()
