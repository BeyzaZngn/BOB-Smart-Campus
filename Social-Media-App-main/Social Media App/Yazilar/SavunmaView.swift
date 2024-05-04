//
//  SavunmaView.swift
//  Social Media App
//
//  Created by Beyza Zengin on 4.05.2024.
//

import SwiftUI

struct SavunmaView: View {
    var body: some View {
        VStack {
            Form {
                Section {
                    Text("Uzay ve Havacılık Topluluğu olarak üniversitemiz Sağlık Kültür ve Spor Daire Başkanlığı bünyesinde 9 Aralık tarihinde Savunma Sanayii Buluşması düzenlendi. Etkinlikte Savunma Sanayi Başkanlığı Kurumsal Yönetim ve Koordinasyon Daire Başkanı Emin ASILTÜRK Savunma Sanayii Başkanlığı faaliyetleri hakkında sunum yaptı. Ardından Savunma Sanayi Başkanlığı’nda Uçak Daire Başkanı Abdurrahman Şeref CAN MMU VE UÇAK PROJELERİ konulu sunumunu gerçekleştirdi.")
                } header: {
                    Text("Nedir?")
                        .textCase(nil)
                }
                
            }
        }
    }
}

#Preview {
    SavunmaView()
}

