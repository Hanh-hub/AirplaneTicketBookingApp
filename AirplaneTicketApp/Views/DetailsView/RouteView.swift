//
//  RouteView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import SwiftUI

struct RouteView: View {
    var body: some View {
        ZStack {
            Divider()
                .padding(.horizontal, 35)
            HStack{
                Image(systemName: "circle")
                Spacer()
                Image(systemName: "airplane")
                Spacer()
                Image(systemName: "circle")
            }
         //   .padding(.horizontal, 20)
        }
    }
}

struct RouteView_Previews: PreviewProvider {
    static var previews: some View {
        RouteView()
    }
}
