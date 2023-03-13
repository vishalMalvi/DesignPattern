import Foundation

// Define the protocol for the original object and the proxy
protocol Image {
    func display()
}

// Implement the original object
class RealImage: Image {
    private let filename: String
    
    init(filename: String) {
        self.filename = filename
        loadFromDisk()
    }
    
    func display() {
        print("Displaying image: \(filename)")
    }
    
    private func loadFromDisk() {
        print("Loading image from disk: \(filename)")
    }
}

// Implement the proxy object
class ImageProxy: Image {
    private var realImage: RealImage?
    private let filename: String
    
    init(filename: String) {
        self.filename = filename
    }
    
    func display() {
        if realImage == nil {
            realImage = RealImage(filename: filename)
        }
        realImage?.display()
    }
}

// Usage
let image = ImageProxy(filename: "example.jpg")
image.display() // this will print "Loading image from disk: example.jpg" and "Displaying image: example.jpg"
image.display() // this will only print "Displaying image: example.jpg", because the image is already loaded
