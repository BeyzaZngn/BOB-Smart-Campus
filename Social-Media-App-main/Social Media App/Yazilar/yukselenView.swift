//
//  yukselenView.swift
//  Social Media App
//
//  Created by Beyza Zengin on 4.05.2024.
//

import SwiftUI

struct yukselenView: View {
    var body: some View {
        VStack {
            Form {
                Section {
                    Text("İnovasyon ve Liderlik Topluluğu olarak öğrenci arkadaşlarımızla kadının toplumdaki yerini anlatmayı hedeflediğimiz “Yükselen Topuklar“etkinliğimizi 04/03/2022 tarihinde okulumuzun konferans salonunda yüz yüze olarak gerçekleştirdik. Bu etkinliğimiz; bütün kadınlarımızı hedef alarak alanında uzman konuşmacıların, bir kadın ne ister bakış açısıyla yaptığımız etkinliğimizdir. İş dünyası ve toplumdaki kadınların başarısı ve bu alandaki yeni projelerin konuşulduğu Yükselen Topuklar etkinliğimizde 4 farklı kadın konuşmacımızı ağırladık. Kadının iş dünyasındaki önemi ve bir kadın olarak nasıl başarıya ulaşılabileceği konusunda uzamanlar tarafından bilgi edindik. Fuaye alanımızda öğrencilerimize çeşitli ikramlarda bulunduk.")
                } header: {
                    Text("Nedir?")
                        .textCase(nil)
                }
                
            }
        }
    }
}

#Preview {
    yukselenView()
}
