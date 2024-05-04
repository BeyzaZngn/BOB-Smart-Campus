//
//  KariyerView.swift
//  Social Media App
//
//  Created by Beyza Zengin on 4.05.2024.
//

import SwiftUI

struct KariyerView: View {
    var body: some View {
        VStack {
            Form {
                Section {
                    Text("Üniversitemiz Sağlık Kültür ve Spor Dairesi Başkanlığı bünyesinde faaliyet gösteren Kariyer ve Gelecek Topluluğu olarak, 28 Aralık 2022 tarihinde Üniversitemiz İktisadi İdari Bilimleri Amfi 2’de ülkemizin köklü ve değerli firmalarından olan, Albaraka Türk Katılım Bankası A.Ş., Marbaş Menkul Değerler A.Ş. ve Viennalife Hayat ve Emeklilik A.Ş.’yi ağırladık.")
                } header: {
                    Text("Nedir?")
                        .textCase(nil)
                }
                
            }
        }
    }
}

#Preview {
    KariyerView()
}
