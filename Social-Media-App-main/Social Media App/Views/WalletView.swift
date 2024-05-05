import CodeScanner
import SwiftUI

struct Transaction: Identifiable {
    var id = UUID()
    var amount: Double
    var description: String
}

struct WalletView: View {
    @State private var transactions: [Transaction] = []
    @State private var isPresentingScanner = false
    @State private var scannedCode: String?
    
    @State var balance: Double = 255 // Sayaçtan alınan değeri tutacak değişken
    
    var body: some View {
        VStack {
            cardSection
            HStack {
                payButton
                recycleToEarnButton
            }
            
            Text("İşlem Geçmişi")
                .padding()
            List(transactions) { transaction in
                Text("\(transaction.amount.formatted())")
            }
        }
    }
    
    private func addTransaction(amount: Double, description: String) {
        let transaction = Transaction(amount: amount, description: description)
        transactions.append(transaction)
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
            isPresentingScanner = true // QR kod tarayıcıyı aç
        } label: {
            Text("Ödeme Yap")
                .font(.headline)
                .frame(width: 110, height: 30)
        }
        .buttonStyle(.borderedProminent)
        .sheet(isPresented: $isPresentingScanner) {
            ScannerSheet(scannedCode: $scannedCode, balance: $balance, transactions: $transactions, currentBalance: $balance)
        }
    }
    
    private var recycleToEarnButton: some View {
        Button {
            isPresentingScanner = true // QR kod tarayıcıyı aç
        } label: {
            Image(systemName: "turkishlirasign.arrow.circlepath")
            Text("Dönüştür ve Kazan")
                .font(.headline)
                .frame(width: .infinity, height: 30)
        }
        .buttonStyle(.borderedProminent)
        .sheet(isPresented: $isPresentingScanner) {
            ScannerSheet(scannedCode: $scannedCode, balance: $balance, transactions: $transactions, currentBalance: $balance)
        }
    }
}

struct ScannerSheet: View {
    @Binding var scannedCode: String?
    @Binding var balance: Double
    @Binding var transactions: [Transaction] // Bu satırı ekleyin
    @Environment(\.presentationMode) var presentationMode
    @Binding var currentBalance: Double // Bu satırı ekleyin

    var body: some View {
        CodeScannerView(codeTypes: [.qr], simulatedData: "Paul Hudson") { result in
            switch result {
            case .success(let scan):
                if let scannedValue = Double(scan.string) {
                    let amount = scannedValue
                    balance += amount // QR kod okunan değeri bakiyeye ekle
                    transactions.append(Transaction(amount: amount, description: "İşlem: "))
                    currentBalance = balance // Güncel bakiyeyi currentBalance olarak ayarla
                } else {
                    print("Hatalı QR kod.")
                }
            case .failure(let error):
                print("QR kod okuma başarısız: \(error.localizedDescription)")
            }
            presentationMode.wrappedValue.dismiss() // Sheet'i kapat
        }
        .onDisappear {
            // Clear the scanned code when the sheet is dismissed
            scannedCode = nil
        }
    }
}

#Preview {
    WalletView()
}
