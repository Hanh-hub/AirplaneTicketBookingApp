//
//  ContentView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("wasOpened") var wasOpened = false
    
    var body: some View {
        // If the app has not been opened before on this device show GetStartedView
        if !wasOpened {
            GetStartedView(wasOpened: $wasOpened)
        } else {
            FlightView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
