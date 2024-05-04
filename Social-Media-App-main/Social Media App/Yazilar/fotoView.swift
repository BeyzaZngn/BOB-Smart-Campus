//
//  fotoView.swift
//  Social Media App
//
//  Created by Beyza Zengin on 4.05.2024.
//

import SwiftUI

struct fotoView: View {
    var body: some View {
        VStack {
            Form {
                Section {
                    Text("Üniversitemiz Sağlık Kültür ve Spor Daire Başkanlığına bağlı olarak faaliyet gösteren Fotoğrafçılık ve Sinema Topluluğu olarak 21.12.2021 tarihinde Bedesten Cep Sinema Salonu’nda yaptığımız fotoğraf çekim eğitimi şu şekilde gerçekleşmiştir:   21 Aralık saat 13:00’da cep sinema salonu açılmıştır. Saat 13:40’da üyelerimizin yoğun katılımıyla eğitimimiz başlamıştır. Eğitimimizin ilk oturumunda fotoğrafın tarihçesinden bahsedilmiştir. İkinci oturumda ise fotoğraf makinasının temel kavramları olan Enstantane, Diyafram ve ISO kavramlarından bahsedilmiştir. Etkinliğimizin üçüncü oturumunda anlattığımız bilgileri uygulamalı olarak gösterdik ve üyeler ile karşılıklı bilgi alışverişinde bulunduk. Etkinliğimiz toplam üç saat sürmüştür, 16:40’da bitmiştir. Cep sinemasının temizliği ve sistem kontrolleri yapıldıktan sonra saat 17:00’da kapatılmıştır.")
                } header: {
                    Text("Nedir?")
                        .textCase(nil)
                }
                
            }
        }
    }
}

#Preview {
    fotoView()
}
