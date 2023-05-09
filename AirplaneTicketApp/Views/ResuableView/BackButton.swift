//
//  ResuableView.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import SwiftUI

struct BackButton: View {
    var body: some View {
        HStack {
            Image(systemName: "arrow.left")
                .resizable()
                .foregroundColor(.black)
                .frame(width: 30, height: 20)
                .padding(.leading, 25)
            Spacer()
        }
    }
}



struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton()
    }
}
