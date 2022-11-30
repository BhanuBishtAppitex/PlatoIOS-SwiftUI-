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
    @State var isLinkActive = false
    
    var body: some View {
        NavigationView {
            //MARK: - MainView
            VStack {
                // main image
                Image(mainImage)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width-40, height: UIScreen.main.bounds.width-40, alignment: .center)
                    .padding(.top, 40)
                Spacer()
                Spacer()
                // introductory text
                VStack(alignment: .center, spacing: 10) {
                    Text(mainText)
                        .font(.custom(C.Fonts.Poppins.semiBold, size: 30))
                    Text(secondText)
                        .font(.custom(C.Fonts.Poppins.regular, size: 14))
                        .foregroundColor(Color(C.Colors.textBlur))
                        .fixedSize(horizontal: false, vertical: true)
                }.multilineTextAlignment(.center)
                Spacer()
                Spacer()
                // button
                NavigationLink(destination: EnterPhoneNumberPage(), isActive: $isLinkActive) {
                    Button {
                        if currentPage < numberOfPages-1 {
                            let pageNumber = currentPage+1
                            mainText = data.mainText[pageNumber]
                            secondText = data.secondText[pageNumber]
                            currentPage = pageNumber
                        } else {
                            print("next button pressed")
                            self.isLinkActive = true
                            
                        }
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(height: 49)
                                .padding(.horizontal)
                            Text("Continue").font(.custom(C.Fonts.Poppins.semiBold, size: 17))
                                .foregroundColor(.white)
                        }
                    }
                }
                
                Spacer()
                // terms and condition text
                Text("By continuing you agree to the terms of use")
                    .font(.custom(C.Fonts.Poppins.regular, size: 14))
                    .foregroundColor(Color(C.Colors.textBlur))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: true, vertical: false)
                    .padding(.horizontal,40)
                Spacer()
            }.padding()
                .ignoresSafeArea()
        }
    }
}

struct IntroductoryPage_Previews: PreviewProvider {
    static var previews: some View {
        IntroductoryPage()
    }
}
