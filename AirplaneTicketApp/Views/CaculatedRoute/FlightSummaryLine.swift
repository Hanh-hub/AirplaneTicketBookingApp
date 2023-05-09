//
//  RouteSummaryView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import SwiftUI



struct FlightSummaryLine: View {
    var title: String
    var value: String
    var alignment: String
    
    var body: some View {
        
        VStack(alignment: alignment == "leading" ? .leading : .trailing, spacing: 10) {
            Text(title)
            Text("\(value.isEmpty ? "XXX" : value)")
               
        }
        .formatText(color: .black, fontName: "Montserrat-Regular", fontSize: 14)
        
    }
}

struct RouteSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        FlightSummaryLine(title: "From", value: "London", alignment: "leading")
    }
}
