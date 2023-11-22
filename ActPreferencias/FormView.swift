//
//  FormView.swift
//  ActPreferencias
//
//  Created by Fernanda.M Guzman on 19/11/23.
//

import SwiftUI

struct FormView: View {
    @AppStorage("myName") var myName : String = ""
    @State var name : String = ""
    @AppStorage("myAge") var myAge : Int = 0
    @State var age : String = ""
    @AppStorage("myWeight") var myWeight: Double = 0.0 // Almacenamiento como Double
    @State var weight: String = ""
    @AppStorage("myHeight") var myHeight: Double = 0.0
    @State var height : String = ""
    @AppStorage("myAnime") var myAnime : String = ""
    @State var anime : String = ""
    
    var body: some View {
        ZStack{
            Image("anime")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .opacity(0.8)
                .ignoresSafeArea()
                .overlay(
                    VStack(){
                        Rectangle()
                        .fill(Color.pink)
                        .frame(width: 350, height: 80)
                        .cornerRadius(15)
                        .overlay(
                            HStack {
                                Text("Name")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                TextField("Name", text: $name)
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.white)
                                    .background(Color.clear)
                            }
                        )
                        Rectangle()
                        .fill(Color.green)
                        .frame(width: 350, height: 80)
                        .cornerRadius(15)
                        .overlay(
                            HStack {
                                Text("Age")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                TextField("Your age", text: $age)
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.white)
                                    .background(Color.clear)
                                    .keyboardType(.numberPad)
                            }
                        )
                        Rectangle()
                        .fill(Color.purple)
                        .frame(width: 350, height: 80)
                        .cornerRadius(15)
                        .overlay(
                            HStack {
                                Text("Weight")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                TextField("Ur weight", text: $weight)
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.white)
                                    .background(Color.clear)
                                    .keyboardType(.numberPad)
                            }
                        )
                        Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 350, height: 80)
                        .cornerRadius(15)
                        .overlay(
                            HStack {
                                Text("Height")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                TextField("Your height", text: $height)
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.white)
                                    .background(Color.clear)
                                    .keyboardType(.numberPad)
                            }
                        )
                        Rectangle()
                        .fill(Color.teal)
                        .frame(width: 350, height: 80)
                        .cornerRadius(15)
                        .overlay(
                            HStack {
                                Text("Fav anime")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                TextField("Anime", text: $anime)
                                    .padding(.horizontal, 10)
                                    .foregroundColor(.white)
                                    .background(Color.clear)
                            }
                        )
                    Button(action:{
                        myName = name
                        myAnime = anime
                        if let number = Int(age) {
                            myAge = number
                        }
                        if let number = Double(weight) {
                            myWeight = number
                        }
                        if let number = Double(height) {
                            myHeight = number
                        }
                    }){
                        Text("Send")
                            .font(.title)
                            .frame(width: 350, height: 80)
                            .background(.white).foregroundColor(.black).bold()
                            .cornerRadius(15)
                    }
                    })
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
