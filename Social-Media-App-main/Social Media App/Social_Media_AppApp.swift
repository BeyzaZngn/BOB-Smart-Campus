import SwiftUI
import Firebase

@main
struct Social_Media_AppApp: App {
    
    init() {
        FirebaseApp.configure()
        }
    
    var body: some Scene {
        WindowGroup {
            DolulukView()
        }
    }
}
