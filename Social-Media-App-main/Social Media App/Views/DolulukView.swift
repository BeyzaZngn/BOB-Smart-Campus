import SwiftUI
import Firebase
import FirebaseDatabase

class ViewModel: ObservableObject {
    @Published var personCountGsf: Int = 0
    @Published var personCountBedesten: Int = 0
    @Published var personCountKutuphane: Int = 0

    private var refGsf = FirebaseManager.shared.database.reference().child("Yemekhaneler").child("Güzel Sanatlar Fakültesi").child("Kişi Sayisi")
    private var refBedesten = FirebaseManager.shared.database.reference().child("Yemekhaneler").child("Bedesten").child("Kişi Sayisi:")
    private var refKutuphane = FirebaseManager.shared.database.reference().child("Kütüphane").child("Kişi Sayisi")
    private var handleGsf: DatabaseHandle?
    private var handleBedesten: DatabaseHandle?
    private var handleKutuphane: DatabaseHandle?
    
    init() {
        observeData()
    }
    
    func observeData() {
        handleGsf = refGsf.observe(.value) { snapshot in
            if let count = snapshot.value as? Int {
                self.personCountGsf = count
            }
        }
        
        handleBedesten = refBedesten.observe(.value) { snapshot in
            if let count = snapshot.value as? Int {
                self.personCountBedesten = count
            }
        }
        
        handleKutuphane = refKutuphane.observe(.value) { snapshot in
            if let count = snapshot.value as? Int {
                self.personCountKutuphane = count
            }
        }
    }
    
    deinit {
        if let handleGsf = handleGsf {
            refGsf.removeObserver(withHandle: handleGsf)
        }
        if let handleBedesten = handleBedesten {
            refBedesten.removeObserver(withHandle: handleBedesten)
        }
        if let handleKutuphane = handleKutuphane {
            refKutuphane.removeObserver(withHandle: handleKutuphane)
        }
    }
}

struct DolulukView: View {
    @ObservedObject private var viewModel = ViewModel()
    
    var body: some View {
        
        Form {
            Section("BEDESTEN Yemekhane"){
                Image("bedesten")
                    .resizable()
                    .scaledToFit()
                Text("Bedesten Yemekhanesinde Sırada Bekleyen Kişi Sayısı: \(viewModel.personCountBedesten)")
                    .padding()
            }

            Section("Güzel Sanatlar Fakültesi Yemekhane"){
                Image("gsf")
                    .resizable()
                    .scaledToFit()
                Text("Güzel Sanatlar Fakültesi Yemekhanesinde Sırada Bekleyen Kişi Sayısı: \(viewModel.personCountGsf)")
                    .padding()
            }
            
            Section("Kütüphane"){
                Image("kutuphane")
                    .resizable()
                    .scaledToFit()
                Text("Kütüphane Doluluk Oranı: \(viewModel.personCountKutuphane)")
                    .padding()
            }
        }
    }
}

#Preview {
    DolulukView()
}
