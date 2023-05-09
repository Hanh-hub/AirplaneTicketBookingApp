//
//  Extension.swift
//  AirplaneTicketApp
//
//  Created by Hanh Vo on 5/8/23.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(.sRGB, red: Double(r) / 255, green: Double(g) / 255, blue:  Double(b) / 255, opacity: Double(a) / 255)
    }
}


struct CustomTextStyle: ViewModifier {
    var color: Color
    var fontName: String
    var fontSize: CGFloat

    func body(content: Content) -> some View {
        content
            .foregroundColor(color)
            .font(.custom(fontName, size: fontSize))
    }
}


struct CustomContainer: ViewModifier {
    var height: Int
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: CGFloat(self.height))
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            //.padding(.horizontal, 25)
    }
}

struct Buttons: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(height: 60)
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
    }
}

struct CustomVStack: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: "F2F2F2").edgesIgnoringSafeArea(.all))
    }
}


extension View {
    func formatText(color: Color, fontName: String, fontSize: CGFloat) -> some View {
        self.modifier(CustomTextStyle(color: color, fontName: fontName, fontSize: fontSize))
    }
    
    func formatContainer(height: Int) -> some View {
        self.modifier(CustomContainer(height: height))
        
    }
    
    func formatButton() -> some View {
        self.modifier(Buttons())
    }
    
    func formatVStack() -> some View {
        self.modifier(CustomVStack())
    }
}



