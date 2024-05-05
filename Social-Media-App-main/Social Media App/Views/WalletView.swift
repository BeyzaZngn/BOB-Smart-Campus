import SwiftUI

struct WalletView: View {
    var balance: Double = 255.90 // Sayaçtan alınan değeri tutacak değişken
    
    var body: some View {
        VStack {
            cardSection
            HStack {
                payButton
                recycleToEarnButton
            }
        }
    }
}

extension WalletView {
    private var cardSection: some View {
        VStack {
            Spacer()
            Text("5234 5678 9345 3421")
                .font(.title)
                .foregroundColor(.white)
                .padding()
            
            Spacer()
            
            VStack {
                HStack {
                    Text("Bakiye: \(balance.formatted())") // Sayaç değerini burada göstereceğiz
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                }
            }
            
            Spacer()
            
            HStack {
                Text("01/25")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Text("CVV: 123")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
            }
            .padding(.horizontal)
        }
        .frame(width: 350, height: 200)
        .background(Color.blue)
        .cornerRadius(20)
        .shadow(radius: 5)
        .padding()
    }
    
    private var payButton: some View {
        Button {
            
        } label: {
            Text("Ödeme Yap")
                .font(.headline)
                .frame(width: 110, height: 30)
        }
        .buttonStyle(.borderedProminent)
    }
    
    private var recycleToEarnButton: some View {
        Button {
            
        } label: {
            Image(systemName: "arrow.3.trianglepath")
            Text("Dönüştür ve Kazan")
                .font(.headline)
                .frame(width: .infinity, height: 30)
        }
        .buttonStyle(.borderedProminent)
    }
}

#Preview {
    WalletView()
}
