//
//  SideMenuView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/9/23.
//

import SwiftUI

struct SideMenuView: View {
    //@Environment(\.dismiss) var dismiss
    @Environment(\.presentationMode) var presentationMode
    var body: some View {

            VStack(alignment: .leading, spacing: 30) {
                MenuItemView(title: "Home", imageName: "house.fill")
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                
                MenuItemView(title: "Profile", imageName: "person.fill")
                MenuItemView(title: "Settings", imageName: "gearshape.fill")
            }
            .padding()
            .formatVStack()
            
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
