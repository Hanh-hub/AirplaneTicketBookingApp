//
//  ViewModel.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject{
   // @Published var flight: Flight?
    
    @Published var startingCity: String = ""
    @Published var destinationCity: String = ""
    @Published var roundTrip: Bool = false
    @Published var departDate: Date = Date()
    @Published var returnDate: Date = Date().addingTimeInterval(3600*24*7)
    @Published var passengers: Int = 1
    @Published var cabinClass: FlightClass = .business
    
//    init(flight: Flight? = nil) {
//        self.flight = flight
//    }
    
}
