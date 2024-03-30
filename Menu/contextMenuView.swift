import SwiftUI

struct ContextMenuView: View {
    
    
    
    var body: some View {
        Button(action: {
            // Code
        }, label: {
            Text("Show Context Menu")
        }).contextMenu {
            Button(action: {
                // Code
            }) {
                Label("Copy", systemImage: "doc.on.doc")
            }
            Button(action: {
                // Code
            }) {
                Label("Share", systemImage: "square.and.arrow.up")
            }
            Button(action: {
                // Code
            }) {
                Label("Favorite", systemImage: "heart")
            }
            Divider()
            Button(action: {
                // Code
            }) {
                Label("Remove", systemImage: "trash")
            }
        }
    }
}
