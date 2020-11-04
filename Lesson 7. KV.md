# Homework
////
//  main.swift
//  Lesson 7
//
//  Created by Vasiliy Knyazev on 11/4/20.
//

import Foundation

enum CarErrors: String, Error {
    
    case noFuel
    case engineCheck
    case bodyCheck
}

enum TruckErrors: String, Error {
    
    case engineCargo
    case engineTruck
    case engineTrailer
}

struct Car: Error {
    var fuel: Int?
    var engine: String?
}

/*class SomeCar {
    var amountFuel: Int
    var engineWork: String
    
    init(amountFuel: Int, engineWork: String) {
    self.amountFuel = amountFuel
    self.engineWork = engineWork
    }
}*/
func startCar(_ model: Int) throws -> String {
    
    var text = ""

    switch model {
    case 1:
        throw CarErrors.noFuel
    case 2:
        throw CarErrors.engineCheck
    case 3:
        throw CarErrors.bodyCheck
        
    case 4:
        throw TruckErrors.engineCargo
    case 5:
        throw TruckErrors.engineTruck
    case 6:
        throw TruckErrors.engineTrailer
    default:
        text = "Start"
    }
    
    return text
}
do {
    try startCar(6)
} catch {
    if error is CarErrors {
        let error = error as! CarErrors
            switch error {
            case .noFuel:
                print("No fuel")
            case .engineCheck:
                print("Engine Check")
            case .bodyCheck:
                print("Body Check")
        }
        
    } else  if error is TruckErrors {
        let error = error as! TruckErrors
            switch error {
            case .engineCargo:
                print("Проверьте двигатель грузовика")
            case . engineTruck:
                print("Проверьте двигатель трака")
            case .engineTrailer:
                print("Проверьте двигатель трейлера")
        }
            
    }
 }

