//
//  BBTView.swift
//  Social Media App
//
//  Created by Beyza Zengin on 4.05.2024.
//

import SwiftUI

struct BBTView: View {
    var body: some View {
        VStack {
            Form{
                Section{
                    Text("BBT Hackathon & Teknoloji Festivali Nedir? BBT Hackathon & Teknoloji Festivali, Kütahya Dumlupınar Üniversitesi Bilgisayar Bilişim Topluluğu tarafından düzenlenen bir etkinliktir. Bu hackathon mobil, web ve masaüstü teknolojilerine ilgi duyan katılımcıların bir araya gelerek belirli bir süre içinde projeler geliştirdiği bir maratondur. Bu sene ilkini düzenleyeceğimiz BBT Hackathon & Teknoloji Festivali etkinliğimiz (3-4-5 Mayıs) tarihlerinde gerçekleşecektir. Bu etkinliğimizde, takımlarıyla katılacak yarışmacıların 48 saat içerisinde ortaya konulan konu ile alakalı bir mobil, web ya da masüstü uygulama çıkarmalarını bekleyeceğiz. Jüri karşısına çıkacak uygulamalarda en iyi olan üç uygulamaya ödül verilecektir.")
                } header: {
                    Text("Nedir?")
                        .textCase(nil)
                }
            }
                
        }
        
        
    }
}

#Preview {
    BBTView()
}
