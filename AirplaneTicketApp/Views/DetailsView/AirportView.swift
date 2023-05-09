//
//  AirportView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import SwiftUI

struct AirportView: View {
    var city: String
    var alignment: Alignment
    
    var body: some View {
        VStack(alignment: alignment == .leading ? .leading : .trailing) {
            Text(aeroports[city] ?? "XXX")
                .foregroundColor(.black)
                .font(.custom("Montserrat-Bold", size: 32))
            Text(city)
                .foregroundColor(.gray)
                .font(.custom("Montserrat-Regular", size: 14))
            
        }
    }
}

struct AirportView_Previews: PreviewProvider {
    static var previews: some View {
        AirportView(city: "London", alignment: .leading)
    }
}
