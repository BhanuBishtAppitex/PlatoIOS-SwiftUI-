//
//  CustomHeaderView.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 29/11/22.
//

import SwiftUI

struct CustomHeaderView: View {
    var titleText: String
    var body: some View {
        VStack {
            HStack {
                Text(titleText)
                    .frame(maxHeight: 40)
                    .foregroundColor(Color(C.Colors.accentColor))
                    .padding()
                    .background(Color(C.Colors.accentBlur))
                    .cornerRadius(40, corners: [.topRight, .bottomRight])
            
            }
        }
            
           
    }
}

struct CustomHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CustomHeaderView(titleText: "Recent Calls")
    }
}
