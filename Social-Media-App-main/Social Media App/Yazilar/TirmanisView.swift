import SwiftUI

struct TirmanisView: View {
    var body: some View {
        VStack {
            Form {
                Section {
                    Text("Üniversitemiz Sağlık kültür ve Spor Bakanlığı bünyesinde faaliyet gösteren Dağcılık Topluluğu Bursa Uludağ bölgesinde 28-29 Ekim 2023 tarihleri arasında 29 Ekim 100. Yıl Anma Tırmanış faaliyeti için sporcularımız 28 Ekim Cumartesi günü saat 09:45’te Kütahya’dan yola çıktı. Öğlene doğru Bursa’ya varıldı. Alışveriş merkezine geçilip tırmanış için gerekli olan ekipman eksikleri tamamlandı. Tırmanış günü sabah saat 06:00’da kalkılıp kahvaltının ardından yola çıkıldı. Saat 07:15’te buluşma noktasına varıldı ve otobüsle rotanın başlangıcı olan Büyükdeliler köyüne gidildi. ")
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
