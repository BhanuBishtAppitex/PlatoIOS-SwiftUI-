//
//  Extensions.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 30/11/22.
//

import Foundation
import SwiftUI
import UIKit

//MARK: - CustomTextField
struct CustomTextField: View {
    @State var text: String
    @State var placeholderText: String
    var body: some View {
        VStack(spacing: 2) {
            TextField(placeholderText,text: $text) {
            }.padding(.horizontal, 5)
                
            Rectangle()
                .foregroundColor(Color(C.Colors.underlineColor))
                .frame(height: 1)
        }
    }
}


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
