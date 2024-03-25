import SwiftUI

struct CircularProgressView: View {
    
    let progress: Double
    
    var body: some View {
        
        ZStack{
            Circle()
                .stroke(
                    Color.pink.opacity(0.5),
                    lineWidth: 10)
            Circle()
                .trim(from: 0,to: progress)
                .stroke(Color.pink,style: StrokeStyle(lineWidth: 10,lineCap: .round))
                .rotationEffect(.degrees(-90))
        }

    }
}

#Preview {
    CircularProgressView(progress:0.25)
}
