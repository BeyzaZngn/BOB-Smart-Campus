import SwiftUI
import Firebase

struct DolulukView: View {
    @State private var personCount: Int = 0
    
    var body: some View {
        VStack {
            Text("Kişi Sayısı: \(personCount)")
                .padding()
            
            Button("Veriyi Getir") {
                fetchData()
            }
            .padding()
        }
        .onAppear {
            // Uygulama başlatıldığında veriyi otomatik olarak getir
            fetchData()
        }
    }
    
    func fetchData() {
        let ref = Database.database().reference().child("Yemekhaneler").child("Güzel Sanatlar Fakültesi").child("Kişi Sayisi")
        
        ref.observeSingleEvent(of: .value) { snapshot in
            if let count = snapshot.value as? Int {
                self.personCount = count
            }
        }
    }
}


#Preview {
    DolulukView()
}
