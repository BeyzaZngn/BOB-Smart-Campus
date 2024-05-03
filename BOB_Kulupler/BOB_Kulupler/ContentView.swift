//
//  ContentView.swift
//  BOB_Kulupler
//
//  Created by Beyza Zengin on 3.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: SecondView()) {
                Text("Takımlarımız")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .font(.headline)
                    .cornerRadius(10)
            }
        }
    }
}

struct SecondView: View {
    let columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 3)
    
    var body: some View {
        ScrollView {
            
            VStack {
                LazyVGrid(columns: columns, spacing: 15) {
                    ForEach(1...3, id: \.self) { index in
                        NavigationLink(destination: DetailViewFirst(buttonIndex: index)) {
                            Text("Buton \(index)")
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.yellow)
                                .foregroundColor(.white)
                                .font(.headline)
                                .cornerRadius(10)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct DetailViewFirst: View {
    let buttonIndex: Int
    
    var body: some View {
        VStack {
            Form{
                Section ("Careify") {
                    
                    Text("Buton \(buttonIndex) Tıklandı!")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
    
    struct DetailViewSecond: View {
        let buttonIndex: Int
        
        var body: some View {
            VStack {
                Form{
                    Section ("Careify") {
                        
                        Text("Buton \(buttonIndex) Tıklandı!")
                    }
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
        
        struct DetailViewThird: View {
            let buttonIndex: Int
            
            var body: some View {
                VStack {
                    Form{
                        Section ("Careify") {
                            
                            Text("Buton \(buttonIndex) Tıklandı!")
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
    }
    
}
