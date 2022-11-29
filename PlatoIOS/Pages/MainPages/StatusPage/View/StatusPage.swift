//
//  StatusPage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 29/11/22.
//

import SwiftUI

struct StatusPage: View {
    @State var navBarHidden: Bool = true
    var body: some View {
        NavigationView {
            ZStack(alignment: .center) {
                VStack( spacing: 0) {
                    Rectangle()
                        .frame(maxHeight: 113)
                        .foregroundColor(Color(C.Colors.accentColor))
                        .overlay(alignment: .bottom) {
                            HStack{
                                Text("Status")
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 20)
                                    .font(.custom(C.Fonts.Poppins.semiBold, size: 30))
                                    .padding(.vertical,20)
                                Spacer()
                                Image("SearchIcon")
                                    .padding(.horizontal, 20)
                            }
                        }
                    
                    StatusRow()
                    Spacer()
                }.ignoresSafeArea()
                
            }.ignoresSafeArea()
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarTitle("Hidden Title")
                .navigationBarHidden(self.navBarHidden)
                .onAppear {
                    self.navBarHidden = true
                }
                .navigationBarBackButtonHidden(true)
        }
        
        
        
    }
}

struct StatusPage_Previews: PreviewProvider {
    static var previews: some View {
        StatusPage()
    }
}

//MARK: - Status Row View


struct StatusRow: View {
    
    private var data = DataForStatusPage.data
    private var dataTwo = DataForStatusPage.dataTwo
    
    
    var body: some View {
        ZStack {
            Color.white
            List {
               
                Section {
                    ForEach(data, id: \.id) { result in
                        
                        HStack(spacing: 8) {
                            Image(result.profileImage)
                            VStack(alignment: .leading) {
                                Text(result.nameText)
                                Text(result.timeText)
                            }
                        }
                    }
                }
                header: {
                    HStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 40)
                            .frame(maxWidth: 164)
                            .foregroundColor(Color(C.Colors.accentBlur))
                            .overlay {
                                Text("Recent Updates")
                                    .foregroundColor(Color(C.Colors.accentColor))
                            }
                        Spacer()
                    }
                }
                .listRowSeparator(.hidden)
                Section {
                    ForEach(dataTwo, id: \.id) { result in
                        
                        HStack(spacing: 8) {
                            Image(result.profileImage)
                            VStack(alignment: .leading) {
                                Text(result.nameText)
                                Text(result.timeText)
                            }
                        }
                    }
                } header: {
                    HStack {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(height: 40)
                            .frame(maxWidth: 164)
                            .foregroundColor(Color(C.Colors.accentBlur))
                            .overlay {
                                Text("Views Updates")
                                    .foregroundColor(Color(C.Colors.accentColor))
                            }
                        Spacer()
                    }
                }
                .listRowSeparator(.automatic)
                
            
            }
            
        }.background {
            Color.white
        }
         
    }
}

struct StatusRowPreviews: PreviewProvider {
    static var previews: some View {
        StatusRow()
    }
}
