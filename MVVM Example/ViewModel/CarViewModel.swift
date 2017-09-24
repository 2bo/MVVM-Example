//
//  CarViewModel.swift
//  MVVM Example
//
//  Created by Kota_Nakatsubo on 2017/09/23.
//  Copyright © 2017年 Kota_Nakatsubo. All rights reserved.
//

import Foundation

class CarViewModel {
    private var car: Car
    static let horsepowerPerKilowatt = 1.34102209

    var modelText: String {
        return car.model
    }

    var makeText: String {
        return car.make
    }
    var horsepowerText: String {
        let horsepower = Int(round(Double(car.kilowatts) * CarViewModel.horsepowerPerKilowatt))
        return "\(horsepower) HP"
    }
    var titleText: String {
        return "\(car.make) \(car.model)"
    }
    var photoURL: URL? {
        return URL(string: car.photoURL)
    }

    init(car: Car) {
        self.car = car
    }
}
