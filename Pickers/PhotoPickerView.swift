import SwiftUI
import PhotosUI

struct PhotoPickerView: View {
    
    @State private var selectedPhotos: [PhotosPickerItem] = []

    var body: some View {
        PhotosPicker(selection: $selectedPhotos,
                     matching: .images,
                     photoLibrary: .shared()) {
            Text("Select Multiple Photos")
        }
        .onChange(of: selectedPhotos) { oldState, newState in
            // Handle the new selection if needed, such as loading the selected photo assets
            for photo in newState {
                // Example of handling each selected photo
                Task {
                    // Assuming you want to load the UIImage for each selected photo
                    if let data = try? await photo.loadTransferable(type: Data.self),
                       let image = UIImage(data: data) {
                        // Do something with the image, e.g., display it or store it
                        print("Image loaded")
                    }
                }
            }
        }
    }
}
