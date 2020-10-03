//
//  Wage.swift
//  hourIOSApp
//
//  Created by Aakarsh Yadav on 03/10/20.
//

import Foundation
class Wage {
    class func getHours(forWage wage:Double,andPrice price:Double) -> Int {
        return Int(ceil(price/wage))
    }
}
