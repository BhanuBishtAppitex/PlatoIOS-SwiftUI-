//
//  EnterPhoneNumberPage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct EnterPhoneNumberPage: View {
    
    @State var phoneNumberTF: String = ""
    
    var body: some View {
        ZStack {
            Color.white
            
            VStack {
                HStack(alignment: .top){
                    Text("Phone Number")
                        .padding(.horizontal, 20)
                        .padding(.top, 40)
                        .font(.custom(C.Fonts.Poppins.semiBold, size: 25))
                        .foregroundColor(Color(C.Colors.textPrimary))
                    Spacer()
                }
                Text("A verrification code via SMS will be sent to verify your phone number")
                    .padding(.horizontal, 20)
                    .padding(.top, 6)
                    .font(.custom(C.Fonts.Poppins.regular, size: 16))
                    .foregroundColor(Color(C.Colors.textSecondary))
                
                ZStack {
                    
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
                }.frame(maxHeight: 50)
                    .padding()
        
                
                HStack(spacing: 18){
                    Text("+91")
                        .font(.custom(C.Fonts.Poppins.medium, size: 17))
                    VStack{
                        TextField("Phone Number", text: $phoneNumberTF)
                             .padding()
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(maxHeight: 1)
                    }
                }.padding()
                
                Spacer()
                
                Button {
                    print("Get Verification Code pressed")
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
    }
}

struct EnterPhoneNumberPage_Previews: PreviewProvider {
    static var previews: some View {
        EnterPhoneNumberPage()
    }
}
