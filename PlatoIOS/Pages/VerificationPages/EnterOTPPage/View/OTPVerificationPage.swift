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
            //MARK: - mainView
            VStack(alignment: .leading){
                VStack(alignment: .leading, spacing: 6) {
                    Text("Verify it's you")
                        .font(.custom(C.Fonts.Poppins.semiBold, size: 25))
                        .foregroundColor(Color(C.Colors.textPrimary))
                    Text("For your security, please enter the code that we’ve sent to your mobile number")
                        .font(.custom(C.Fonts.Poppins.regular, size: 14))
                        .foregroundColor(Color(C.Colors.textSecondary))
                }
                Spacer()
                Text("Enter OTP")
                    .font(.custom(C.Fonts.Poppins.regular, size: 14))
                    .foregroundColor(Color(C.Colors.accentColor))
                //MARK: - OTPView
                OTPView()
                Spacer()
                //MARK: - BottomView
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
                    //.frame(height: 58)
                Spacer()
                Spacer()
                
            }.padding(.horizontal, 16)
        }.navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .ignoresSafeArea()
    }
}

struct OTPVerificationPage_Previews: PreviewProvider {
    static var previews: some View {
        OTPView()
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
            CustomTextField(text: otpOne, placeholderText: "")
                .multilineTextAlignment(.center)
            CustomTextField(text: otpTwo, placeholderText: "")
                .multilineTextAlignment(.center)
            CustomTextField(text: otpThree, placeholderText: "")
                .multilineTextAlignment(.center)
            CustomTextField(text: otpFour, placeholderText: "")
                .multilineTextAlignment(.center)
        }.padding(.top, 20)
        .padding(.bottom, 10)
        Spacer()
    }
}



