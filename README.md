# Homework
//
//  main.swift
//  L3 Князев Василий
//
//  Created by Vasiliy Knyazev on 10/20/20.
//

import Foundation

enum windowState {
    case open, closed
}

enum engineState {
    case start, stop
}

enum trunkState {
    case full, empty
}

struct passengerCar {
    var year: Int
    var name: String
    var color: String
    mutating func changeColor(c:String) {
        switch c {
        case "red":
            self.color = "red"
        case "black":
            self.color = "black"
        case "white":
            self.color = "white"
            
        default:
            print("Error")
        }
    }
    var windows: windowState {
        willSet {
            if newValue == .open {
                print("\(name)Окна открыты")
            } else {
                print("\(name)Окна закрыты")
        }
    }
}
    var engine: engineState {
        willSet {
            if newValue == .start {
                print("\(name) Двигатель заведен")
            } else {
                print("\(name)Двигатель заглушен")
        }
    }
}
    var trunkVolume: Double {
        willSet {
            if (trunkState == .empty) && (trunkVolume > 0) && (trunkVolume != 0) && (newValue < trunkVolume) {
                let space = trunkVolume - newValue
                print("\(name) trunk free: \(space)")
            }   else { print("Error or \(name) багажник заполнен")}
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunk() {
        self.trunkState = .empty
        print ("\name багажник пуст")
    }
}

struct heavyTruck {
    var year: Int
    var name: String
    var color: String
    mutating func changeColor(c:String) {
        switch c {
        case "red":
            self.color = "red"
        case "black":
            self.color = "black"
        case "white":
            self.color = "white"
            
        default:
            print("Error")
        }
    }
    var windows: windowState {
        willSet {
            if newValue == .open {
                print("\(name) Окна открыты")
            } else {
                print("\(name) Окна закрыты")
        }
    }
}
    var engine: engineState {
        willSet {
            if newValue == .start {
                print("\(name) Двигатель заведен")
            } else {
                print("\(name) Двигатель заглушен")
        }
    }
}
    var truckBody: Double {
        willSet {
            if (trunkState == .empty) && (truckBody > 0) && (truckBody != 0) && (newValue < truckBody) {
                let space = truckBody - newValue
                print("\(name) trunk free: \(space)")
            }   else { print("Error or \(name) багажник заполнен")}
        }
    }
    var trunkState : trunkState
    mutating func emptyTrunk() {
        self.trunkState = .empty
        print ("\name багажник пуст")
    }
}

var car1 = passengerCar(year: 2020, name: "Tesla", color: "clear", windows: .open, engine: .start, trunkVolume: 500.0 , trunkState: .empty)
var car2 = passengerCar(year: 2018, name: "Toyota", color: "clear", windows: .closed, engine: .stop, trunkVolume: 550.0 , trunkState: .full)
    
var truck1 = heavyTruck(year: 2015, name: "Volvo", color: "clear", windows: .closed, engine: .stop, truckBody: 10000.0 , trunkState: .full)
var truck2 = heavyTruck(year: 2016, name: "Scania", color: "clear", windows: .open, engine: .stop, truckBody: 15000.0 , trunkState: .empty)

car1.engine = .start
car1.trunkVolume = 370.0
car1.changeColor(c: "red")
car2.engine = .start
car2.trunkVolume = 560.0
car2.changeColor(c: "white")
car2.windows = .open
    
truck1.engine = .start
truck1.windows = .open
truck2.engine = .start
truck2.truckBody = 15000
    
print("Информация о автомобиле: \(car1.year), \(car1.name), color: \(String(describing: car1.color)), free trunkVolume: \(car1.trunkVolume), engine: \(car1.engine)")

 

