//
//  EnterPhoneNumberPage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct EnterPhoneNumberPage: View {
    
    @State var phoneNumberTF: String = ""
    @State var isLinkActivate: Bool = false
    
    var body: some View {
        NavigationView {
            //MARK: - main view
            VStack(spacing: 26) {
                
                //MARK: - top text views
                //Spacer()
                Text("Phone Number")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom(C.Fonts.Poppins.semiBold, size: 25))
                    .foregroundColor(Color(C.Colors.textPrimary))
                Text("A verrification code via SMS will be sent to verify your phone number")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom(C.Fonts.Poppins.regular, size: 16))
                    .foregroundColor(Color(C.Colors.textSecondary))
                
               //MARK: - CenterView
                VStack(spacing:22) {
                    //MARK: - Country Code Selector
                    HStack {
                        Text("India")
                            .font(.custom(C.Fonts.Poppins.medium, size: 17))
                            .foregroundColor(Color(C.Colors.textPrimary))
                        Button {
                            print("Arrow down button pressed")
                        } label: {
                            Image("ArrowDown")
                                .frame(maxWidth: 29, maxHeight: 29)
                        }
                        Spacer()
                        Image("ArrowRight")
                    }.padding()
                        .background {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(C.Colors.accentBlur))
                        }
                    //MARK: - Enter Phone number view
                    HStack(spacing: 18){
                        Text("+91")
                            .font(.custom(C.Fonts.Poppins.medium, size: 17))
                        CustomTextField(text: phoneNumberTF, placeholderText: " Phone Number")
                    }
                }
                
                Spacer()
                
                //MARK: - Button
                NavigationLink(destination: OTPVerificationPage(), isActive: $isLinkActivate) {
                    Button {
                        print("Get Verification Code pressed")
                        self.isLinkActivate = true
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .frame(maxHeight: 49)
                                .padding()
                            Text("Get Verification Code")
                                .foregroundColor(.white)
                                .font(.custom(C.Fonts.Poppins.semiBold, size: 17))
                        }
                    }
                }
            }
            .ignoresSafeArea()
            .padding()
        } .navigationBarBackButtonHidden(true)
          .navigationBarHidden(true)
    }
}

struct EnterPhoneNumberPage_Previews: PreviewProvider {
    static var previews: some View {
        EnterPhoneNumberPage()
    }
}
