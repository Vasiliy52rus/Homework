//Homework 
//  main.swift
//  L4 Князев Василий
//
//  Created by Vasiliy Knyazev on 10/24/20.
//

import Foundation


enum Action {
    //MARK:- TruckCar actions
    case raseBody, lowerBody
    //MARK:- SportCar actions
    case raseSpoiler, lowerSpoiler
}

class Car {
    var year: Int
    var model: String
    var numberOfDoors: Int
    var engine: String
    
    init(year: Int, model: String, numberOfDoors: Int, engine: String) {
        self.year = year
        self.model = model
        self.numberOfDoors = numberOfDoors
        self.engine = engine
    }
    func handleAction (_ action: Action) {}
}
class TruckCar: Car {
    var fillTrunk: Bool
    var action: Action
    init(fillTrunk: Bool, action: Action, year: Int, model: String, numberOfDoors: Int, engine: String) {
        self.fillTrunk = fillTrunk
        self.action = action
        super.init(year: year, model: model, numberOfDoors: numberOfDoors, engine: engine)
    }
    override func handleAction(_ action: Action) {
        self.action = .lowerBody
        print("Кузов опущен")
    }
}
class SportCar: Car {
    var speed: Int
    var action: Action
    init(speed: Int, action: Action, year: Int, model: String, numberOfDoors: Int, engine: String) {
        self.speed = speed
        self.action = action
        super.init(year: year, model: model, numberOfDoors: numberOfDoors, engine: engine)
    }
    override func handleAction(_ action: Action) {
        self.action = .raseSpoiler
        print("Спойлер поднят")
    }
}
var car = Car(year: 2005, model: "Toyota", numberOfDoors: 4, engine: "Diesel")
var car1 = TruckCar(fillTrunk: true, action: .lowerBody, year: 2007, model: "Volvo", numberOfDoors: 2, engine: "Diesel")
var car2 = SportCar(speed: 250, action: .raseSpoiler, year: 2020, model: "Ferrari", numberOfDoors: 2, engine: "Petrol")

print(car.model)
print(car.engine)
print(car.numberOfDoors)
print(car1.model)
print(car1.engine)
print(car1.action)
print(car1.handleAction(.lowerBody))
print(car2.model)
print(car2.speed)
print(car2.engine)
print(car2.action)
print(car2.handleAction(.raseSpoiler))
