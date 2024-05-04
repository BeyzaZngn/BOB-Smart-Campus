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
                        
                        NavigationLink(destination: SavunmaView()) {
                            VStack(alignment: .leading) {
                                Image("savunma")
                                    .resizable()
                                    .scaledToFit()
                                Text("Savunma Sanayii Buluşması")
                                    .fontWeight(.semibold)
                                Text("9 Aralık")
                                Text("11.00")
                            }
                        }
        
                    }
                    
                    if dizi[1] == true {
                        NavigationLink(destination: TirmanisView()) {
                            VStack(alignment: .leading) {
                                Image("dpu-tirmanis")
                                    .resizable()
                                    .scaledToFit()
                                Text("29 Ekim 100. Yıl Anma Tırmanışı")
                                    .fontWeight(.semibold)
                                Text("29 Ekim")
                                Text("09.45")
                            }
                        }
                        
                        NavigationLink(destination: FitView()) {
                            VStack(alignment: .leading) {
                                Image("fit")
                                    .resizable()
                                    .scaledToFit()
                                Text("Fit Konuşmalar")
                                    .fontWeight(.semibold)
                                Text("6 Aralık")
                                Text("11.00")
                            }
                        }
        
                    }
                    
                    if dizi[2] == true {
                        NavigationLink(destination: fotoView()) {
                            VStack(alignment: .leading) {
                                Image("foto")
                                    .resizable()
                                    .scaledToFit()
                                Text("Temel Fotoğraf Eğitimi")
                                    .fontWeight(.semibold)
                                Text("21 Aralık")
                                Text("13.00")
                            }
                        }
                        
                        NavigationLink(destination: AizView()) {
                            VStack(alignment: .leading) {
                                Image("aiz")
                                    .resizable()
                                    .scaledToFit()
                                Text("Aizanoi Antik Kenti Gezisi")
                                    .fontWeight(.semibold)
                                Text("22 Nisan")
                                Text("09.00")
                            }
                        }
        
                    }
                    
                    if dizi[3] == true {
                        NavigationLink(destination: yukselenView()) {
                            VStack(alignment: .leading) {
                                Image("kar")
                                    .resizable()
                                    .scaledToFit()
                                Text("Dumlupınar Finans ve Kariyer Zirvesi")
                                    .fontWeight(.semibold)
                                Text("28 Aralık")
                                Text("11.00")
                            }
                        }
                        
                        NavigationLink(destination: SavunmaView()) {
                            VStack(alignment: .leading) {
                                Image("savunma")
                                    .resizable()
                                    .scaledToFit()
                                Text("Yükselen Topuklar")
                                    .fontWeight(.semibold)
                                Text("4 Mart")
                                Text("11.00")
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
