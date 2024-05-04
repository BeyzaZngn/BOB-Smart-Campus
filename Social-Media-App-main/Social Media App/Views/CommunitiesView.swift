//
//  CommunitiesView.swift
//  Social Media App
//
//  Created by Ali Osman Öztürk on 4.05.2024.
//

import SwiftUI

struct CommunitiesView: View {
    @State var dizi = [false, false, false, false]

    let categories = ["Mühendislik", "Spor", "Sanat", "Sosyal"]

    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(categories.indices, id: \.self) { index in
                            Toggle("\(categories[index])", isOn: $dizi[index])
                                .frame(width: 150)
                                .toggleStyle(.button)
                                .frame(width: 150)
                                .font(.headline)
                                .background(Material.regularMaterial)
                                .cornerRadius(8)
                        }
                    }
                    .padding(.horizontal)
                }

                Form {
                    if dizi[0] == true {
                        NavigationLink(destination: BBTView()) {
                            VStack(alignment: .leading) {
                                Image("bbt")
                                    .resizable()
                                    .scaledToFit()
                                Text("BBT Hackathon ve Teknoloji Festivali")
                                    .fontWeight(.semibold)
                                Text("3-4-5 Mayıs")
                                Text("09.00")
                            }
                        }
                        
                        NavigationLink(destination: AddPostView()) {
                            VStack(alignment: .leading) {
                                Image("bbt")
                                    .resizable()
                                    .scaledToFit()
                                Text("BBT Hackathon ve Teknoloji Festivali")
                                    .fontWeight(.semibold)
                                Text("3-4-5 Mayıs")
                                Text("09.00")
                            }
                        }
                        
                        NavigationLink(destination: PostsView()) {
                            VStack(alignment: .leading) {
                                Image("bbt")
                                    .resizable()
                                    .scaledToFit()
                                Text("BBT Hackathon ve Teknoloji Festivali")
                                    .fontWeight(.semibold)
                                Text("3-4-5 Mayıs")
                                Text("09.00")
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CommunitiesView()
}
