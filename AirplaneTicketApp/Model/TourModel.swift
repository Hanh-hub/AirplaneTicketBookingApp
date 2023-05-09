//
//  TourModel.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import Foundation
import SwiftUI

struct Tour {
    let id = UUID()
    var city: String
    var country: String
    var image: Image
}

let tours: [Tour] = [
    Tour(city: "Paris", country: "France", image: Image("Paris")),
    Tour(city: "London", country: "UK", image: Image("London")),
    Tour(city: "Berlin", country: "Germany", image: Image("Berlin"))
]

struct Flight {
    let departDate: String
    let roundStrip: Bool
    let returnDate: String?
    let passengers: Int
    let  fromCity: String
    let toCity: String
}
