//
//  DatePickerView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import SwiftUI



struct DatePickerView: View {
//    @State var fromDate: Date = Date()
//    @State var toDate: Date = Date()
    @Binding var datePickerEnable: Bool
    @Binding var selectDate: Date
    var maxTime = TimeInterval((3600*24*365)*2)
    
    var rotation: Double

    var body: some View {
            HStack{
                Image(systemName: "arrow.right.circle")
                    .frame(width: 20, height: 20)
                    .rotationEffect(.degrees(rotation))
                
                DatePicker("", selection: $selectDate, in: Date()...Date().addingTimeInterval(maxTime), displayedComponents: .date)
                    .disabled(datePickerEnable ? false : true) //round trip = true -> disable = false
                    .accentColor(.black)
                    .frame(width: 120)
                Spacer()
            }
            .opacity(datePickerEnable == true ? 1 : 0.5)
            //.opacity(1)
            //.opacity(datePickerDisabled ? 1 : 0.5)
    }
}



struct DatePickerView_Previews: PreviewProvider {
   //@State static var roundTrip = true
    static var previews: some View {
        DatePickerView(datePickerEnable: .constant(false), selectDate:.constant(Date()), rotation: 45)
    }
}
