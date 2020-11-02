# Homework
//
//  main.swift
//  Lesson-6
//
//  Created by Vasiliy Knyazev on 11/1/20.
//
import Foundation

enum Books {
    case fantasy, adventure, science
}

protocol SomeBook{
    var numberOfBooks: Int { get set}
    
}

struct Book: SomeBook {
    var numberOfBooks: Int
    var genre: Books
}

extension Book: CustomStringConvertible{
    var description: String {
        return "In library \(numberOfBooks)  \(genre)"
    }
}
   

struct Queue<T: SomeBook> {
    private var elements: [T] = []

    mutating func enqueue(element: T) {
        elements.append(element)
    }
    mutating func dequeue()->T? {
        return elements.removeLast()
    }
    
    var amountOfBooks : Int{
        var numberOfBooks = 0
        for element in elements {
            numberOfBooks += element.numberOfBooks
        }
        return numberOfBooks
    }
    subscript (elements: Int ...) -> Int{
        var numberOfBooks = 0
        for index in elements where index < self.elements.count {
            numberOfBooks += self.elements[index].numberOfBooks
        }
        return numberOfBooks
    }

}

extension Queue{
    func filtred(predicate: (T) -> Bool) -> [T] {
        var myArr = [T]()
        for elem in elements {
            if predicate(elem){
                myArr.append(elem)
            }
        }
        return myArr
    }
}


var loadsOfBooks = Queue<Book>()

loadsOfBooks.enqueue(element: Book(numberOfBooks: 8, genre: .fantasy))
loadsOfBooks.enqueue(element: Book(numberOfBooks: 37, genre: .adventure))
loadsOfBooks.enqueue(element: Book(numberOfBooks: 5, genre: .science))



loadsOfBooks[0, 1, 2, 3]
let bigBouquet = loadsOfBooks.filtred(predicate: {$0.numberOfBooks > 8})
print("Big Library")
