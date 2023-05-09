//
//  CalculatedView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import SwiftUI

struct RouteOptionView: View {

    @EnvironmentObject var viewModel: ViewModel
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM d, YYYY"
        return ScrollView{
            BackButton()
                .onTapGesture {
                    mode.wrappedValue.dismiss()
                }
                .padding(.vertical)
            VStack{
                
                HStack {
                    Text("Options:")
                        .formatText(color: .black, fontName: "Montserrat-Bold", fontSize: 24)
                    Spacer()
                }
                .padding()
                
                VStack{
                   
                    HStack{
                        FlightSummaryLine(title: "From", value: viewModel.startingCity, alignment: "leading")
                        Spacer()
                        FlightSummaryLine(title: "To", value: viewModel.destinationCity, alignment: "trailing" )
                    }
                   
                    Divider()
                    
                    HStack{
                        FlightSummaryLine(title: "Depart", value:  "\(dateFormatter.string(from: viewModel.departDate))", alignment: "leading")
                        Spacer()
                        if viewModel.roundTrip {
                            FlightSummaryLine(title: "Return", value:  "\(dateFormatter.string(from: viewModel.returnDate))", alignment: "traling")
                        }
                    }
                    Divider()
                    
                    HStack{
                        Text("\(viewModel.passengers) passenger\(viewModel.passengers==1 ? "" : "s"), \(viewModel.cabinClass.rawValue)")
                        Spacer()
                    }
                }
                .formatContainer(height: 200)
                .padding(.vertical, 10)
                
                HStack{
                    Text("Here what we found!")
                        .formatText(color: .black, fontName: "Montserrat-Regular", fontSize: 24)
                    Spacer()
                }
                .padding()
                
                
                LazyVStack(spacing: 20){
                    ForEach(1..<10){i in
                        HStack{
                            Text("Option \(i)")
                                .formatText(color: .black, fontName: "Montserrat-Regular", fontSize: 16)
                            Spacer()
                        }
                        .formatContainer(height: 80)
                        
                    }
                }
            }
        }
        .padding()
        .formatVStack()
        .navigationBarBackButtonHidden(true)
    }
}

struct RouteOptionView_Previews: PreviewProvider {
    static var previews: some View {
        RouteOptionView().environmentObject(ViewModel())
    }
}
