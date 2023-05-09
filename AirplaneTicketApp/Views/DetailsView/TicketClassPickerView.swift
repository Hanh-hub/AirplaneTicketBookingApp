//
//  TicketClassPickerView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import SwiftUI
enum FlightClass: String, Identifiable, CaseIterable {
    case business = "Business"
    case economy = "Economy"
    case first = "First Class"
    
    var id: String{self.rawValue}
    
    var icon: String {
        switch self {
          case .business:
              return "briefcase"
          case .economy:
              return "dollarsign.circle"
          case .first:
              return "star"
          }
    }
}
struct TicketClassPickerView: View {
    @Binding var selectedClass: FlightClass
    @Binding var countedPassenger: Int
    var body: some View {
        VStack {
            HStack {
                Image(systemName: selectedClass.icon)
                    .resizable()
                    .frame(width: 20, height: 20)
                Picker("Select class", selection: $selectedClass){
                    ForEach(FlightClass.allCases) { flightClass in
                        Text(flightClass.rawValue).tag(flightClass)
                    }
                }
                .frame(width: 150, height: 30)
                .background(Color.white)
                .pickerStyle(MenuPickerStyle())
                Spacer()
            }
            Divider()
                .padding(.horizontal, 20)
            
            HStack {
                Image(systemName: "person.circle")
                
                Stepper(value: $countedPassenger, in: 1...20 ){
                    Text("\(countedPassenger) passenger\(countedPassenger>1 ? "s" : "")")
                        .formatText(color: .black, fontName: "Montserrat-Regular", fontSize: 15)
                }
                .padding(.leading, 10)
            }
            .padding(.vertical, 5)
        }
    }
}

struct TicketClassPickerView_Previews: PreviewProvider {
    static var previews: some View {
        TicketClassPickerView(selectedClass: .constant(.business), countedPassenger: .constant(1))
    }
}
