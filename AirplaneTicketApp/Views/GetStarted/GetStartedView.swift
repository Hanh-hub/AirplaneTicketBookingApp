//
//  GetStartedView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import SwiftUI


struct GetStartedView: View {
    @Binding var wasOpened: Bool
    var body: some View {
        VStack {
            // Display airplane image
            Image("airplane")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .clipped()
                .padding(.vertical)

            // Localized text
            Text(NSLocalizedString("discover_best_dates", comment: "Discover best dates to fly text"))
                .fixedSize(horizontal: false, vertical: true)
                .padding()
                .formatText(color: .black, fontName: "Montserrat-Bold", fontSize: 60)
                .multilineTextAlignment(.center)

            // Additional text
            Text("Booking and saving made easy")
                .formatText(color: .black, fontName: "Montserrat-Regular", fontSize: 14)
                .padding()

            // Get Started button
            Button(action: {
                wasOpened = true
            }) {
                CustomButton(title: "Get Started")
            }
            .padding(.top, 40)
            .padding(.horizontal, 25)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: "F2F2F2")
            .edgesIgnoringSafeArea(.all))
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView(wasOpened: .constant(false))
            .preferredColorScheme(.dark)
    }
}

