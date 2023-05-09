//
//  FormView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import SwiftUI

struct FormView: View {
    var imageName: String
    var rotation: Double
    var placeholder: String
    @Binding var text: String

    var body: some View {
        HStack {
            Image(systemName: imageName)
                .resizable()
                .foregroundColor(.black)
                .rotationEffect(.degrees(rotation))
                .frame(width: 20, height: 20)
                .padding(8)

            TextField(placeholder, text: $text)
                .font(.custom("Montserrat-Medium", size: 16))
                .foregroundColor(Color.black.opacity(0.8))
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView(imageName: "airplane", rotation: -45, placeholder: "From", text: .constant("Austin"))
    }
}
