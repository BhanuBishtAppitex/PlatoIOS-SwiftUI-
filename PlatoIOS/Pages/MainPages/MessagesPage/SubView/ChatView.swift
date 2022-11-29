//
//  ChatView.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 29/11/22.
//

import SwiftUI

struct ChatView: View {
    @State var text: String = ""
    @State var data =  ChatData.data
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(maxHeight: 100)
                .foregroundColor(Color(C.Colors.accentBlur))
                .overlay(alignment: .bottomLeading) {
                    HStack {
                        HStack(spacing: 34) {
                            Button {
                                print("Back Button Pressed")
                            } label: {
                                Image("BackArrow")
                            }.padding(.bottom, 10)
                                .padding(.horizontal, 10)
                            
                            HStack(spacing: 18){
                                Image("ProfileImage")
                                    .frame(width: 40, height: 40, alignment: .leading)
                                VStack(alignment: .leading) {
                                    Text("Ariana Gray")
                                    Text("Online")
                                }
                            }
                        }
                        Spacer()
                        HStack(spacing: 12) {
                            HStack {
                                Image("VideoCallIcon")
                                Image("CallIcon")
                            }
                            Button {
                                print("Option Button Pressed")
                            } label: {
                                Image("OptionIcon")
                            }
                        }
                        
                        
                    }.padding(.bottom, 10)
                        .padding(.horizontal, 10)
                    
                    
                }
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(data, id: \.id) { result in
                    if result.senderDetail == .Sender {
                        HStack {
                            MessageView(message: result.message, time: result.time, backgroundColor: Color(C.Colors.accentBlur), textColor: Color(C.Colors.textSecondary))
                            Spacer(minLength: 80)
                        }
                    } else {
                        HStack {
                            Spacer(minLength: 80)
                            MessageView(message: result.message, time: result.time, backgroundColor: Color(C.Colors.accentColor), textColor: .white)
                        }
                      
                        
                    }
                }
            }.padding()
            Spacer()
            HStack(alignment: .center) {
                HStack(spacing: 4) {
                    Button {
                        print("Emoji Button Pressed")
                    } label: {
                        Circle()
                            .frame(width: 45, height: 45, alignment: .center)
                            .foregroundColor(Color(C.Colors.accentBlur))
                            .overlay {
                                Image("Smiley")
                            }
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(C.Colors.accentBlur))
                        TextField("Type message here", text: $text)
                            .padding()
                    }.frame(height: 45)
                }
                Spacer()
                HStack(spacing: 10){
                    Button {
                        print("Camera Icon Pressed")
                    } label: {
                        Image("CameraIcon")
                    }
                    Button {
                        print("MicroPhone Icon Pressed")
                    } label: {
                        Image("MicrophoneIcon")
                    }
                    
                }
            }.padding(.bottom, 100) //45
                .padding(.horizontal, 20)
        }
        .ignoresSafeArea()
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}


//MARK: - Chat Row View

struct MessageView: View {
    @State var message: String = ""
    @State var time: String = ""
    @State var backgroundColor: Color
    @State var textColor: Color
    var body: some View {
        ZStack {
            HStack {
                Text(message)
                    .foregroundColor(textColor)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.custom(C.Fonts.Poppins.regular, size: 17))
                    .padding()
                VStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(maxWidth: 30)
                        .foregroundColor(.clear)
                    Text(time)
                        .multilineTextAlignment(.trailing)
                        .foregroundColor(textColor)
                        .font(.custom(C.Fonts.Poppins.regular, size: 10))
                }.padding()
            }
            .background {
               RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(backgroundColor)
                    
            }.frame(minHeight: 30)
        }
    }
}

struct MessageViewPreview: PreviewProvider {
    static var previews: some View {
        MessageView( backgroundColor: .clear, textColor: .white)
    }
}



