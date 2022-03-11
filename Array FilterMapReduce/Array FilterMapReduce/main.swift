//
//  main.swift
//  Array FilterMapReduce
//
//  Created by Bhumika Hirapara on 2/27/22.
//

import Foundation

//  MARK: - Higher Order Functions -> filter, map, reduce

struct Device {
    var type: String
    var price: Float
    var color: String
}

var myiMacPro = Device(type: "iMac Pro", price: 4999.00, color: "Space Grey")
var myiPhone6Plus = Device(type: "iPhone", price: 799.00, color: "White")
var myiPhone7 = Device(type: "iPhone", price: 699.00, color: "Black")
var myiPad = Device(type: "iPad", price: 599.00, color: "Space Grey")
var myAppleWatch = Device(type: "Apple Watch", price: 349.00, color: "Space Grey")
var myAppleTV = Device(type: "Apple TV", price: 199.00, color: "Black")

let myDevices = [myiMacPro, myiPhone6Plus, myiPhone7, myiPad, myAppleWatch, myAppleTV]


//  MARK: - For-in loop

var myPhone: [Device] = []
for device in myDevices {
    if device.type == "iPhone" {
        myPhone.append(device)
    }
}
print(myPhone)

//  MARK: - Array Filter

let iPhone = myDevices.filter({ return $0.type == "iPhone"})    // $0 -> placeholder that you are iterating every object of an array -> returns Bool value
let iPhone1 = myDevices.filter({return $0.type.contains("Apple")})

print(iPhone)
print(iPhone1)



//  MARK: - Array Map

//  Map iterate entire array and apply transformation to every object of that array -> means changing every object of an array

let canadianPrices: [Float] = myDevices.map({ return $0.price * 1.2})
print(canadianPrices)

//  MARK: - Array Reduce

//  Reducing all the elements into one single element using operators

var totalPrice: Float = 0.0
for price in canadianPrices {
    totalPrice += price
}
print("Using normal For loop: \(totalPrice)")

var totalCanadianPrice: Float = canadianPrices.reduce(0.0, +)   // starting from 0.0 and then add all objects of canadianPrices
print("Using Array Reduce: \(totalCanadianPrice)")
