//
//  ContentView.swift
//  ActPreferencias
//
//  Created by Fernanda.M Guzman on 19/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            WelcomeView()
                .tabItem(){
                    VStack{
                        Text("Info")
                        Image(systemName: "house.fill")
                    }
                }
            FormView()
                .tabItem(){
                    VStack{
                        Text("Info")
                        Image(systemName: "info.circle.fill")
                    }
                }
        }
        .accentColor(Color.purple)
        .padding()
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
