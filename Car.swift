//
//  Car.swift
//  MVVM Example
//
//  Created by Kota_Nakatsubo on 2017/09/23.
//  Copyright © 2017年 Kota_Nakatsubo. All rights reserved.
//

import Foundation

class Car {
    var model: String
    var make: String
    var kilowatts: Int
    var photoURL: String

    init(model: String, make: String, kilowatts: Int, photoURL: String) {
        self.model = model
        self.make = make
        self.kilowatts = kilowatts
        self.photoURL = photoURL
    }


}
