//
//  Untitled.swift
//  CarServiceManager
//
//  Created by Eden Harvey on 11/27/24.
//
import SwiftUI
import Foundation

public struct CarListViewModel {
    var cars: [Car]
    var isShowingCarDetail = false
    var isShowingAddCarSheet = false
    var selectedCar: Car?
    
    /// Highlight a car to be shown in our sheet
    public mutating func highlightCar(car: Car) {
        if cars.contains(car) {
            selectedCar = car
            self.isShowingCarDetail = true
        }
    }
    public mutating func newCar() {
        withAnimation {
            addCar(car: Car(id: UUID(), make: "Ferrari", model: "LaFerrari", year: 1999, milage: 0, serviceRecords: []))
            isShowingAddCarSheet = false
        }
    }
    /// Add new car to the user's
    private mutating func addCar(car: Car) {
        self.cars.append(car)
    }
}


