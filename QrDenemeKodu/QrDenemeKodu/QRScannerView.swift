import SwiftUI
import AVFoundation

struct QRScannerView: View {
    @State private var isShowingScanner = false
    @State private var scannedCode: String?
    @State private var scanCount = 0 // Eklediğimiz sayaç
    
    var body: some View {
        VStack {
            if !isShowingScanner {
                Button(action: {
                    self.isShowingScanner = true
                }) {
                    Text("QR Kod Tara")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            } else {
                ScannerView(scannedCode: $scannedCode, isShowingScanner: $isShowingScanner, scanCount: $scanCount) // Sayaç ekledik
                    .edgesIgnoringSafeArea(.all)
            }
            
            Text("Tarama Sayısı: \(scanCount)") // Sayaç değerini gösteren metin
                .padding()
            
            // Bakiye gösterimi
            CreditCardView(balance: scanCount)
            
        }
    }
}

struct ScannerView: UIViewControllerRepresentable {
    @Binding var scannedCode: String?
    @Binding var isShowingScanner: Bool
    @Binding var scanCount: Int // Sayaç
    
    func makeUIViewController(context: Context) -> ScannerViewController {
        let scannerViewController = ScannerViewController()
        scannerViewController.delegate = context.coordinator
        return scannerViewController
    }
    
    func updateUIViewController(_ uiViewController: ScannerViewController, context: Context) {
        // Nothing to update
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(scannerView: self)
    }
    
    class Coordinator: NSObject, ScannerViewControllerDelegate {
        var scannerView: ScannerView
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        
        func didFindCode(_ code: String) {
            scannerView.scanCount += 1 // Sayaçı artır
            scannerView.scannedCode = code
            scannerView.isShowingScanner = false
        }
    }
}

protocol ScannerViewControllerDelegate {
    func didFindCode(_ code: String)
}

class ScannerViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {
    var delegate: ScannerViewControllerDelegate?
    var captureSession: AVCaptureSession!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else {
            return
        }
        
        do {
            let input = try AVCaptureDeviceInput(device: captureDevice)
            captureSession = AVCaptureSession()
            captureSession.addInput(input)
            
            let metadataOutput = AVCaptureMetadataOutput()
            captureSession.addOutput(metadataOutput)
            
            metadataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            metadataOutput.metadataObjectTypes = [.qr]
            
            let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
            previewLayer.frame = view.layer.bounds
            previewLayer.videoGravity = .resizeAspectFill
            view.layer.addSublayer(previewLayer)
            
            captureSession.startRunning()
        } catch {
            print(error)
        }
    }
    
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        if let metadataObject = metadataObjects.first {
            guard let readableObject = metadataObject as? AVMetadataMachineReadableCodeObject else { return }
            guard let stringValue = readableObject.stringValue else { return }
            delegate?.didFindCode(stringValue)
        }
    }
}

#Preview {
    QRScannerView()
}
