//
//  main.swift
//  Square
//
//  Created by Andrew Rock on 19/2/19.
//  Copyright © 2019 Andrew Rock. All rights reserved.
//
// Print the square of a number input by the user.

import Foundation

print("Enter a number: ", terminator: "")
if let input: String = readLine() {
    if let x = Float(input) {
        print("The square of the number = \(x * x)")
    } else {
        print("Bad number.")
    }
} else {
    print("Bad input.")
}
