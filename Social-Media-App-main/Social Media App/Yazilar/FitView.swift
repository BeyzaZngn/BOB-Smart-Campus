//
//  FitView.swift
//  Social Media App
//
//  Created by Beyza Zengin on 4.05.2024.
//

import SwiftUI

struct FitView: View {
    var body: some View {
        VStack {
            Form {
                Section {
                    Text("Üniversitemiz Sağlık Kültür ve Spor Daire Başkanlığına bağlı olarak faaliyet gösteren Vücut Geliştirme Topluluğu olarak 06.12.2023 tarihli FİT TALKS paneli etkinliğimiz saygı duruşu ve İstiklal Marşımızdan hemen sonra panel konuşmacıları antreman bilimi, sakatlanma riski ve beslenme konusunda konuşmasını yapıp öğrencilerimizin sorularını cevapladı. Panel bitiminde ödüllerini taktimi için topluluk başkanı Cafer Can Gökçe konuşmacılara ödüllerini taktim etti.")
                } header: {
                    Text("Nedir?")
                        .textCase(nil)
                }
                
            }
        }
    }
}

#Preview {
    TirmanisView()
}
