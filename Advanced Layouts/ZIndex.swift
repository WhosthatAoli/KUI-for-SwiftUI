struct ZIndex: View {
    @State var index0 = 0.0
    @State var index1 = 0.0
    @State var index2 = 0.0
    
    var body: some View {
        
        ZStack {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 240, height: 160)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .zIndex(index0)
                .onTapGesture {
                    index0 = 2
                    index1 = 0
                    index2 = 0
                }
            Rectangle()
                .fill(Color.red)
                .frame(width: 240, height: 160)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .zIndex(index1)
                .onTapGesture {
                    index1 = 2
                    index0 = 0
                    index2 = 0
                }
            Rectangle()
                .fill(Color.blue)
                .frame(width: 240, height: 160)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                .zIndex(index2)
                .onTapGesture {
                    index2 = 2
                    index0 = 0
                    index1 = 0
                }
        }
        .frame(height:240)
    }
}
