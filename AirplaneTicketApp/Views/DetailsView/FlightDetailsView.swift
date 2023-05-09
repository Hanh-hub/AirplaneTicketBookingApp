//
//  FlightDetailsView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import SwiftUI

struct FlightDetailsView: View {
    

    @EnvironmentObject var viewModel: ViewModel
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    
    var body: some View {
        VStack{
            BackButton()
                .onTapGesture {
                    mode.wrappedValue.dismiss()
                }
                .padding(.vertical)
            
            ScrollView{
                RouteView()
                    .padding(.horizontal, 20)
                    .padding(.top, 20)
                
                HStack{
                    AirportView(city: viewModel.startingCity, alignment: .leading)
                    Spacer()
                    AirportView(city: viewModel.destinationCity, alignment: .trailing)
                }
                .padding(.vertical, 20)
                .padding(.horizontal, 20)
                
                
                RoundTripToggleView(roundTripMode: $viewModel.roundTrip)
                .padding(.vertical, 10)
                .formatContainer(height: 50)
                
                
                VStack(alignment: .leading){
                    DatePickerView(datePickerEnable: .constant(true), selectDate: $viewModel.departDate, rotation: -45)
                    DatePickerView(datePickerEnable: $viewModel.roundTrip, selectDate: $viewModel.returnDate, rotation: 45)
                }
                .formatContainer(height: 120)
                .padding(.vertical,10)
                
                TicketClassPickerView(selectedClass: $viewModel.cabinClass , countedPassenger: $viewModel.passengers)
                    .formatContainer(height: 120)
                    .padding(.bottom,20)
                
                
                
                NavigationLink(destination: RouteOptionView().environmentObject(viewModel)
                ){
                    CustomButton(title: "Search Flights")
                }
            }
        }
        .padding()
        .formatVStack()
        .navigationBarBackButtonHidden(true)
    }
}

struct FlightDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FlightDetailsView().environmentObject(ViewModel())
    }
}
