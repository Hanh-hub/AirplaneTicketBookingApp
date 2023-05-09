//
//  CustomButton.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/9/23.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .formatText(color: .white, fontName: "Montserrat-Regular", fontSize: 16)
            Spacer()
            Image(systemName: "chevron.right.2")
                .font(.headline)
                .foregroundColor(.white)
        }
        .formatButton()
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title: "Get Started")
    }
}
