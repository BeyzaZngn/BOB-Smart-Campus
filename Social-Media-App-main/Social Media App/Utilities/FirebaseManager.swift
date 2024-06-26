import Foundation
import Firebase
import FirebaseStorage
import FirebaseDatabase

class FirebaseManager: NSObject {
    let auth: Auth
    let storage: Storage
    let firestore: Firestore
    let database: Database
    
    static let shared = FirebaseManager()
    
    override init() {
        FirebaseApp.configure()
        
        auth = Auth.auth()
        storage = Storage.storage()
        firestore = Firestore.firestore()
        database = Database.database()
        
        super.init()
    }
}
