import SwiftUI

struct AizView: View {
    var body: some View {
        VStack {
            Form {
                Section {
                    Text("Üniversitemiz Sağlık Kültür ve Spor Dairesi bünyesinde faaliyet gösteren Müzik Topluluğu olarak 22/04/2022 tarihinde Kütahya ili Çavdarhisar ilçesi sınırları içerisinde bulunan Aizanoi Antik Kenti’ne topluluk üyelerimizden 45 kişinin katılımı ile bir kültürel gezi düzenledik. Gezimiz kapsamında Aizanoi Antik Kenti, Antik Amfi Tiyatro, Penkalas Köprüsü ve İlk Borsa Binasını gezip tanıma fırsatımız oldu. Gezimiz kapsamında Aizanoi Antik Kenti içerisinde canlı müzik yaparak ve çöp toplayarak keyifli bir zaman geçirdik.")
                } header: {
                    Text("Nedir?")
                        .textCase(nil)
                }
                
            }
        }
    }
}

#Preview {
    AizView()
}

