//
//  MenuItemView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/9/23.
//

import SwiftUI

struct MenuItemView: View {
    let title: String
    let imageName: String

       var body: some View {
           HStack {
               Image(systemName: imageName)
                   .resizable()
                   .frame(width: 20, height: 20)
                   .foregroundColor(Color.blue)
               Text(title)
                   .font(.system(size: 20))
                   .foregroundColor(Color.black)
               Spacer()
           }
           .padding(.horizontal)
       }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(title: "Home", imageName: "star")
    }
}
