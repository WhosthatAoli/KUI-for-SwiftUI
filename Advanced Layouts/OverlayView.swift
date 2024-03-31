struct OverlayView: View {
    var body: some View {
        let alignment: Alignment = .center
        let x: CGFloat = 0.0
        let y: CGFloat = 0.0

        Rectangle()
            .fill(.quaternary)
            .overlay(alignment: alignment) {
                Circle()
                    .fill(Color.accentColor)
                    .frame(width: 20, height: 20)
                    .offset(x: x, y: y)

            }
        

        Rectangle()
            .fill(.quaternary)
            .overlay {
                Circle()
                    .fill(Color.accentColor)
                    .frame(width: 20, height: 20)
                    .position(x: x, y: y)
            }
    }
}
