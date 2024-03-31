import SwiftUI

struct ColorPickerView: View {
    @State private var color: Color = .accentColor

    var body: some View {
        ColorPicker("Color",
            selection: $color)
    }
}
