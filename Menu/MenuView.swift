import SwiftUI

struct MenuView: View {
    @State private var selectedView: LayoutOption = .list
    
    var body: some View {
        
        Menu(content: {
            ControlGroup {
                Button(action: {
                    // Code
                }) {
                    Image(systemName: "pin.fill")
                }
                
                Button(action: {
                    // Code
                }) {
                    Image(systemName: "lock")
                }
                
                Button(action: {
                    // Code
                }) {
                    Image(systemName: "magnifyingglass")
                }
            }
            
            Section {
                Button(action: {
                    // Code
                }) {
                    Label("Move File", systemImage: "folder")
                }
                
                Button(action: {
                    // Code
                }) {
                    Label("New Folder", systemImage: "folder.badge.plus")
                }
            }
            
            Picker(selection: $selectedView,
                   label: Text("Picker")
            ) {
                ForEach(LayoutOption.allCases, id: \.rawValue) { view in
                    Label(view.rawValue, systemImage: view.icon)
                        .tag(view)
                }
            }
            
            Menu(content: {
                Button(action: {
                    // Code
                }) {
                    Label("Copy", systemImage: "doc.on.doc")
                }
                Button(action: {
                    // Code
                }) {
                    Label("Favorite", systemImage: "heart")
                }
                Button(action: {
                    // Code
                }) {
                    Label("Share", systemImage: "square.and.arrow.up")
                }
            }, label: {
                Text("Submenu")
            })
            
            Divider()
            
            Button(role: .destructive, action: {
                // Code
            }) {
                Label("Delete", systemImage: "trash"
                )
            }
        }, label: {
            Text("Show Menu")
        }).menuStyle(.button)
    }
    
    enum LayoutOption: String, Codable, CaseIterable {
        case list = "List"
        case grid = "Grid"
        
        var icon: String {
            switch self {
            case .list: return "list.dash"
            case .grid: return "square.grid.3x2"
            }
        }
    }
    
}
