//
//  FlightView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import SwiftUI

struct FlightView: View {
    @AppStorage("userName") var userName = "Johnny"
    @StateObject var viewModel: ViewModel = ViewModel()
    @State var showMenu = false
   
    var body: some View {
        NavigationView {
            ZStack{
                ScrollView {
                    VStack {
                        HStack{
                            Text(NSLocalizedString("find_flights", comment: ""))
                                .fixedSize(horizontal: false, vertical: true)
                                .formatText(color: .black, fontName: "Montserrat-Bold", fontSize: 32)
                                .padding()
                                .padding(.trailing,40)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color(hex: "F2F2F2"))
                        //Form
                        VStack {
                            FormView(imageName: "airplane", rotation: -45, placeholder: "From", text: $viewModel.startingCity)
                            Divider()
                            FormView(imageName: "airplane", rotation: 45, placeholder: "To", text: $viewModel.destinationCity)
                        }
                        .formatContainer(height: 120)
                        .padding(.bottom)
                        
                        NavigationLink(destination: FlightDetailsView().environmentObject(viewModel)){
                            CustomButton(title: "Continue")
                                .padding(.bottom)
                        }

                        HStack{
                            Text("Best Tour")
                                .formatText(color: .black, fontName: "Montserrat-Bold", fontSize: 18)
                            Spacer()
                            NavigationLink(destination: {Text("Best Tour")}){
                                Image(systemName: "arrow.right")
                                    .renderingMode(.original)
                            }
                        }
                        ScrollView(.horizontal, showsIndicators: true){
                            LazyHGrid(rows: [GridItem(.fixed(1))]){
                                ForEach(tours, id: \.id){tour in
                                    TourView(tour: tour)
                                }
                            }
                        }
                        .frame(height: 320)
                        .padding(.bottom, 50)
                    }
                    .padding(.horizontal, 25)
                    .formatVStack()
                    .toolbar{
                        ToolbarItem(placement: .navigationBarLeading){
                            Text("Hi \(userName) !")
                                .padding(.horizontal,25)
                        }
                        ToolbarItem(placement: .navigationBarTrailing){
                            Image(systemName: "lineweight")
                                .padding(.horizontal,25)
                                .onTapGesture {
                                    withAnimation {
                                        showMenu.toggle()
                                    }
                                }
                        }
                    }
                }
                if showMenu {
                   SideMenuView()
                       .transition(.move(edge: .leading))
                }
            }
        }
    }
}

struct FlightView_Previews: PreviewProvider {
    static var previews: some View {
        FlightView()
    }
}
