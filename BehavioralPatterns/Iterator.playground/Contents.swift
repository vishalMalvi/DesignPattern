import Foundation

// custom collection
struct MyCollection<T>: Sequence {
    var elements: [T]
    
    //  makeIterator() method to return an iterator for the collection
    func makeIterator() -> MyIterator<T> {
        return MyIterator(elements: self.elements)
    }
}

//  custom iterator
struct MyIterator<T>: IteratorProtocol {
    var current = 0
    let elements: [T]
    
    //  next() method to return the next element in the collection
    mutating func next() -> T? {
        if current < elements.count {
            let element = elements[current]
            current += 1
            return element
        } else {
            return nil
        }
    }
}

// Usage
let collection = MyCollection(elements: [1, 2, 3, 4, 5, 6])
for element in collection {
    print(element)
}

