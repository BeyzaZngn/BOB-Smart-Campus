import SwiftUI
import FirebaseAuth

struct AddPostView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var postTitle = ""
    @State private var selectedImage: UIImage?
    @State private var isShowingImagePicker = false
    @State private var errorMessage = ""
    @State private var selectedKategori = "Kayıp İlanı"
    
    let kategoriler = ["Kayıp İlanı", "Alım - Satım İlanı"]
    
    var addPostViewModel = AddPostViewModel()
    
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Image(systemName: "person.crop.circle.fill")
                    .font(.system(size: 40))
                    .foregroundColor(.blue)
                TextField("Metninizi buraya giriniz...", text: $postTitle)
                    .padding(10)
                    .frame(maxWidth: .infinity)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            
            Picker("Please choose a color", selection: $selectedKategori) {
                ForEach(kategoriler, id: \.self) {
                    Text($0)
                }}
            
            Button {
                isShowingImagePicker.toggle()
            } label: {
                VStack {
                    if let image = selectedImage {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                            .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                            )
                    } else {
                        Image(systemName: "photo.on.rectangle.angled")
                            .font(.system(size: 50))
                            .frame(width: 300, height: 300)
                            .foregroundColor(.blue)
                            .cornerRadius(10)
                            .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                }
            }
            .padding()
            
            Text(errorMessage)
                .bold()
                .foregroundColor(.red)
            
            Button {
                if selectedImage == nil {
                    errorMessage = "You must select an image first"
                    return
                }
                
                guard let email = Auth.auth().currentUser?.email else { print("Current user not authenticated.")
                    return
                }
                
                let name = email.components(separatedBy: "@").first ?? ""
                
                addPostViewModel.addPost(name: name, postTitle: postTitle, image: selectedImage, date: Date(), kategori: selectedKategori)
                
                dismiss()
            } label: {
                Text("Paylaş")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
            }
            
            Spacer()


            
        }
        .cornerRadius(20)
        .padding(.horizontal, 20)
        .padding(.vertical, 25)
        .sheet(isPresented: $isShowingImagePicker) {
            ImagePicker(image: $selectedImage)
        }
    }
}

struct AddPostView_Previews: PreviewProvider {
    static var previews: some View {
        AddPostView()
    }
}
