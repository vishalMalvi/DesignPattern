import Foundation

// strategy protocol
protocol WeaponStrategy {
    func attack()
}

//  Sword strategies
class Sword: WeaponStrategy {
    func attack() {
        print("Swinging sword!")
    }
}

//  Bow strategies
class Bow: WeaponStrategy {
    func attack() {
        print("Firing arrow!")
    }
}

//  the Player class that uses the WeaponStrategy
class Player {
    var currentWeapon: WeaponStrategy
    
    init(withWeapon weapon: WeaponStrategy) {
        self.currentWeapon = weapon
    }
    
    func attack() {
        currentWeapon.attack()
    }
}


let sword = Sword()
let bow = Bow()
let player = Player(withWeapon: sword)

player.attack() // Swinging sword!

player.currentWeapon = bow
player.attack() // Firing arrow!
