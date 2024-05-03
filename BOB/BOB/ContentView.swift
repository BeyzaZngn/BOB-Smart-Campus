//
//  ContentView.swift
//  BOB
//
//  Created by Beyza Zengin on 3.05.2024.
//

import SwiftUI

struct ContentView: View {
    let destinations: [AnyView] = [
        AnyView(WhatToWearToday()),
        AnyView(ThirdView()),
        AnyView(EleventhView())
    ]
    
    let destinationNames = ["Bugün ne giymeli", "ThirdView", "EleventhView"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                Image
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                    ForEach(destinations.indices, id: \.self) { index in
                        NavigationLink(destination: destinations[index]) {
                            Text("\(destinationNames[index])")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding()
            }
            .navigationBarTitle("Kütahya Dumlupınar Üniversitesi", displayMode: .inline)
        }
    }
}

struct SecondView: View {
    var body: some View {
        Text("İkinci Sayfa")
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

struct ThirdView: View {
    var body: some View {
        Text("Üçüncü Sayfa")
            .font(.largeTitle)
            .foregroundColor(.green)
    }
}

// Diğer sayfaların tanımları...

struct EleventhView: View {
    var body: some View {
        Text("On Birinci Sayfa")
            .font(.largeTitle)
            .foregroundColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





