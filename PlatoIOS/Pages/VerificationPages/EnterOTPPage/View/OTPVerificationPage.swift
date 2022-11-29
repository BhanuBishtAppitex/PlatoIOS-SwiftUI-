//
//  OTPVerificationPage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct OTPVerificationPage: View {
    
    
    @State var isLinkActivate: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                VStack(alignment: .leading){
                    Text("Verify it's you")
                        .font(.custom(C.Fonts.Poppins.semiBold, size: 25))
                        .foregroundColor(Color(C.Colors.textPrimary))
                        .padding(.top, 100)
                    Text("For your security, please enter the code that we’ve sent to your mobile number")
                        .font(.custom(C.Fonts.Poppins.regular, size: 14))
                        .padding(.top, 6)
                        .foregroundColor(Color(C.Colors.textSecondary))
                    Text("Enter OTP")
                        .padding(.top, 20)
                        .font(.custom(C.Fonts.Poppins.regular, size: 14))
                        .foregroundColor(Color(C.Colors.accentColor))
                    OTPView()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("29:25")
                                .font(.custom(C.Fonts.Poppins.semiBold, size: 17))
                                .foregroundColor(Color(C.Colors.textPrimary))
                            HStack(spacing: 18) {
                                Button {
                                    print("relode button pressed")
                                } label: {
                                    Image("Reload")
                                        .frame(maxWidth: 20, maxHeight: 20)
                                }
                                Text("Resend the Code")
                                    .font(.custom(C.Fonts.Poppins.semiBold, size: 17))
                                    .foregroundColor(Color(C.Colors.blueBlur))
                                    .padding(.leading, 0)
                            }
                        }
                        Spacer()
                        NavigationLink(destination: AddCoverImagePage(), isActive: $isLinkActivate) {
                            Button {
                                print("confirm otp button pressed")
                                self.isLinkActivate = true
                            } label: {
                               Image("OtpVerificationButton")
                            }
                        }
                        .frame(maxWidth: 53, maxHeight: 53)
                    }.padding()
                        .frame(height: 58)
                    Spacer()
                    
                }.padding(.horizontal, 16)
            }
        }.navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .ignoresSafeArea()
    }
}

struct OTPVerificationPage_Previews: PreviewProvider {
    static var previews: some View {
        OTPVerificationPage()
    }
}


//MARK: - OTPVIew
struct OTPView: View {
    
    @State var otpOne: String = ""
    @State var otpTwo: String = ""
    @State var otpThree: String = ""
    @State var otpFour: String = ""
    
    var body: some View {
        HStack {
            VStack {
                TextField(text: $otpOne) {
                }.frame(minWidth: 49)
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(maxHeight: 1)
            }
            VStack {
                TextField(text: $otpOne) {
                }.frame(minWidth: 49)
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(maxHeight: 1)
            }
            VStack {
                TextField(text: $otpOne) {
                }.frame(minWidth: 49)
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(maxHeight: 1)
            }
            VStack {
                TextField(text: $otpOne) {
                    
                }.frame(minWidth: 49)
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(maxHeight: 1)
            }
        }.padding(.top, 50)
        Spacer()
    }
}

struct OTPViewPreviews: PreviewProvider {
    static var previews: some View {
        OTPView()
    }
}
