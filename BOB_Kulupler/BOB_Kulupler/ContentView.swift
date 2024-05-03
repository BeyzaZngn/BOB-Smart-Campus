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
    let buttonNames = ["Careify", "Artun İHA", "URAZ"]
    
    var body: some View {
       
        ScrollView {
            VStack {
                LazyVGrid(columns: columns, spacing: 15) {
                    ForEach(buttonNames.indices, id: \.self) { index in
                        NavigationLink(destination: destinationView(for: index)) {
                            Text("\(buttonNames[index])")                                .padding()
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
    
    func destinationView(for index: Int) -> some View {
        switch index {
        case 0:
            return AnyView(DetailViewFirst())
        case 1:
            return AnyView(DetailViewSecond())
        case 2:
            return AnyView(DetailViewThird())
        default:
            return AnyView(EmptyView())
        }
    }
}


struct DetailViewFirst: View {
    var body: some View {
        VStack {
            Form {
                Section {
                    Text("Takımımız 2021 yılında, TEKNOFEST Uluslararası İHA yarışmasının ilk rapor gönderimine 14 gün kala 14 Şubat'ta kurulmuştur. Bilgisayar ve Elektronik mühendisliği bölümlerden bir grup öğrenci bir araya gelip rapor yazıp başvuru yapmıştır. Bilgisayar ve elektronik kısımlarından tam puan alınmış, mekanik eksikliğinden dolayı başarıya ulaşılamamıştır.")
                } header: {
                    Text("Kimdir?")
                        .textCase(nil)
                }
                Section {
                    
                    HStack {
                        Button(action: {
                            if let url = URL(string: "https://www.careify.app") {
                                UIApplication.shared.open(url)
                            }
                        }, label: {
                            Image("png-clipart-computer-icons-website-icon-text-globe-thumbnail")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .cornerRadius(10)
                        })
                        Text("Web Sitesi")
                    }
                    
                } header: {
                    Text("Sosyal Medya")
                        .textCase(nil)
                }
            }
        }
        .navigationTitle("Careify Takımı")
    }
}

struct DetailViewSecond: View {
    var body: some View {
        VStack {
            Form {
                Section {
                    Text("Takımımız 2021 yılında, TEKNOFEST Uluslararası İHA yarışmasının ilk rapor gönderimine 14 gün kala 14 Şubat'ta kurulmuştur. Bilgisayar ve Elektronik mühendisliği bölümlerden bir grup öğrenci bir araya gelip rapor yazıp başvuru yapmıştır. Bilgisayar ve elektronik kısımlarından tam puan alınmış, mekanik eksikliğinden dolayı başarıya ulaşılamamıştır.")
                } header: {
                    Text("Kimdir?")
                        .textCase(nil)
                }
                Section {
                    HStack {
                        Button(action: {
                            if let url = URL(string: "https://www.linkedin.com/company/artuniha/") {
                                UIApplication.shared.open(url)
                            }
                        }, label: {
                            Image("LinkedIn_logo_initials")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .cornerRadius(10)
                        })
                        Text("LinkedIn")
                    }
                    
                    HStack {
                        Button(action: {
                            if let url = URL(string: "https://www.instagram.com/artuniha?igsh=MWlkZWsyaDlvazVp") {
                                UIApplication.shared.open(url)
                            }
                        }, label: {
                            Image("Instagram_icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .cornerRadius(10)
                        })
                        Text("Instagram")
                    }
                    
                } header: {
                    Text("Sosyal Medya")
                        .textCase(nil)
                }
            }
        }
        .navigationTitle("Artun İHA Takımı")
    }
}

struct DetailViewThird: View {
    var body: some View {
        VStack {
            Form {
                Section {
                    Text("URAZ Model Uydu Takımı 2021 yılında Kütahya Dumlupınar Üniversitesi, Uzay ve Havacılık Topluluğu bünyesinde havacılık bilimi ve endüstrisine ilgili öğrenciler tarafından kurulmuştur. Aynı zamanda TEKNOFEST Koordinartörlüğü bünyesinde yer almaktadır.Bu öğrenciler; Bilim ve Teknolojik gelişmelere teşvik etmek, bilgi ve tecrübelerini katlayarak paylaşmak amacıyla 2021-2022 yılından itibaren Teknofest 7.Model Uydu ve 8.Model Uydu Yarışmalarına katılım sağlamıştır.")
                } header: {
                    Text("Kimdir?")
                        .textCase(nil)
                }
                Section {
                    HStack {
                        Button(action: {
                            if let url = URL(string: "https://www.linkedin.com/company/urazmut/?originalSubdomain=tr") {
                                UIApplication.shared.open(url)
                            }
                        }, label: {
                            Image("LinkedIn_logo_initials")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .cornerRadius(10)
                        })
                        Text("LinkedIn")
                    }
                    
                    HStack {
                        Button(action: {
                            if let url = URL(string: "https://www.instagram.com/urazmut?igsh=MWwxa3hqaHNiZ3FzMw==") {
                                UIApplication.shared.open(url)
                            }
                        }, label: {
                            Image("Instagram_icon")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .cornerRadius(10)
                        })
                        Text("Instagram")
                    }
                    
                } header: {
                    Text("Sosyal Medya")
                        .textCase(nil)
                }
            }
        }
        .navigationTitle("Uraz Model Uydu Takımı")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
