//
//  IntroductoryPage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct IntroductoryPage: View {
    
    var data = ModelForIntroductoryPage.self
    @State var mainText: String = ModelForIntroductoryPage.mainText[0]
    @State var secondText: String = ModelForIntroductoryPage.secondText[0]
    @State var mainImage: String = ModelForIntroductoryPage.mainImage[0]
    var numberOfPages = ModelForIntroductoryPage.mainText.count
    @State var currentPage: Int = 0
    
    
    
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            VStack {
                Image(mainImage)
                    .padding()
                Text(mainText)
                               .font(.custom(C.Fonts.Poppins.semiBold, size: 30))
                               .padding()
                Text(secondText)
                                .font(.custom(C.Fonts.Poppins.regular, size: 14))
                                .foregroundColor(Color(C.Colors.textBlur))
                                .multilineTextAlignment(.center)
                                .lineLimit(3)
                                .padding(.horizontal, 58)
                Button {
                    if currentPage < numberOfPages-1 {
                        let pageNumber = currentPage+1
                        mainText = data.mainText[pageNumber]
                        secondText = data.secondText[pageNumber]
                        currentPage = pageNumber
                    } else {
                        print("next button pressed")
                        //EnterPhoneNumberPage()
                    }
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(maxHeight: 49)
                            .padding(.horizontal)
                        Text("Continue").font(.custom(C.Fonts.Poppins.semiBold, size: 17))
                            .foregroundColor(.white)
                    }
                }
                Text("By continuing you agree to the terms of use")
                    .font(.custom(C.Fonts.Poppins.regular, size: 14))
                    .foregroundColor(Color(C.Colors.textBlur))
                    .padding()
            }
        }
            
    }
}

struct IntroductoryPage_Previews: PreviewProvider {
    static var previews: some View {
        IntroductoryPage()
    }
}
