//
//  Converter.swift
//  EX7
//
//  Created by Carl Hinkle on 7/3/16.
//  Copyright © 2016 Carl Hinkle. All rights reserved.
//

import Foundation

class AreaCalculator {
  let conversionFactor = 0.3048
  
  required init() {
    
  }
  
  func ftToMeters(feet: Double) -> Double {
    return conversionFactor * feet
  }
  
  func area(length: Double, width: Double) -> Double {
    return length * width
  }
  
}