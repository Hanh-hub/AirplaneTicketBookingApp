//
//  TourView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import SwiftUI

struct TourView: View {
    var tour: Tour
    var body: some View {
        VStack{
            tour.image
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .frame(maxWidth: .infinity, maxHeight: 250)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding(4)
            Spacer()
            
            HStack {
                Text(tour.city)
                    .bold()
                Spacer()
                Text(tour.country)
            }
            .padding(.horizontal, 10)
            
          Spacer()
          
        }
        .frame(width: 230, height: 300, alignment: .center)
        .background(Color(hex: "#F0F0F0"))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        
    }
}

struct TourView_Previews: PreviewProvider {
    static var previews: some View {
        TourView(tour: tours[0] )
    }
}
