//
//  RoundTripToggleView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import SwiftUI

struct RoundTripToggleView: View {
    @Binding var roundTripMode: Bool
    var body: some View {
        HStack{
            Image(systemName: "repeat")
                .resizable()
                .frame(width: 20, height: 20)
            Text("Round trip")
                .formatText(color: .black, fontName:"Montserrat-Regular" , fontSize: 14)
                .padding(.leading, 10)
            Spacer()
            Toggle(isOn: $roundTripMode, label: {})
        }
    }
}

struct RoundTripToggleView_Previews: PreviewProvider {
    
    static var previews: some View {
        RoundTripToggleView(roundTripMode: .constant(false))
    }
}
