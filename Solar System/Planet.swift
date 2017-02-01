//
//  Planet.swift
//  Solar System
//
//  Created by Michael Castillo on 1/31/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

import Foundation

struct Planet {

    let   name: String
    let imageName: String
    let diameter: Double
    let dayLength: Float
    let millionKMsFromSun: Double
    
    //if this was a class. i would need to init
    init(name:String, imageName: String, diameter: Double, dayLength: Float, millionKMsFromSun: Double) {
        self.name = name
        self.imageName = imageName
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKMsFromSun = millionKMsFromSun
    }
}
