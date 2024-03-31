import SwiftUI

enum Flavor: String, CaseIterable, Identifiable, CustomStringConvertible {
    case chocolate
    case vanilla
    case strawberry
    case mint
    case coffee
    
    var id: Self { self }
    
    var description: String {
        switch self {
        case .chocolate: return "Chocolate"
        case .vanilla: return "Vanilla"
        case .strawberry: return "Strawberry"
        case .mint: return "Mint"
        case .coffee: return "Coffee"
        }
    }
}

struct PickerView: View {
    @State private var selectedFlavor: Flavor = .chocolate

    var body: some View {
        //don't use form in app code here, form in list lead to unexpected behavior. Section before can control the style here
      Form{
            Picker("Flavor",
                selection: $selectedFlavor) {
                    ForEach(Flavor.allCases) {
                        Text($0.description).tag($0)
                    }
                }
            
            VStack{
                HStack{
                    Text("Menu Style")
                        .font(.system(size: 12)) // Makes the font size smaller
                        .foregroundColor(.gray)
                    Spacer()
                }
                Picker("Flavor",
                    selection: $selectedFlavor) {
                        ForEach(Flavor.allCases) {
                            Text($0.description).tag($0)
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
            }

            VStack{
                HStack{
                    Text("Segment Style")
                        .font(.system(size: 12)) // Makes the font size smaller
                        .foregroundColor(.gray)
                    Spacer()
                }
                Picker("Flavor",
                    selection: $selectedFlavor) {
                        ForEach(Flavor.allCases) {
                            Text($0.description).tag($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
            }
            
            VStack{
                HStack{
                    Text("Wheel Style")
                        .font(.system(size: 12)) // Makes the font size smaller
                        .foregroundColor(.gray)
                    Spacer()
                }
                Picker("Flavor",
                    selection: $selectedFlavor) {
                        ForEach(Flavor.allCases) {
                            Text($0.description).tag($0)
                        }
                    }
                    .pickerStyle(WheelPickerStyle())
            }
            
    }
        

    }
}

