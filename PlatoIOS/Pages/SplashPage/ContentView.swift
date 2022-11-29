//
//  ContentView.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct ContentView: View {
    
   
    var body: some View {
            
        NavigationView {
            ZStack {
                Color(C.Colors.accentColor).ignoresSafeArea()
                Text("PLATO").font(.custom(C.Fonts.Monoton.medium, size: 50))
                    
                NavigationLink(destination: IntroductoryPage()) {
                    Text("DemoText")
                }
                
               
                
            }
        }
        
    }
    
    
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
