import SwiftUI

struct SmartScroll: View {
    let axes: Axis.Set = [.horizontal]
    var body: some View {

        ScrollView(axes, showsIndicators: false) {
            LazyHStack(spacing: 8.0) {
                ForEach(0..<10) { item in
                    Rectangle()
                        .fill(.tint)
                        .aspectRatio(1.0, contentMode: .fit)
                        .containerRelativeFrame(axes, count: 2, span: 1, spacing: 10)
                }
            }
            .scrollTargetLayout()
            .contentMargins(20, for: .scrollContent)
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

//Smart Scrolling
//.scrollTargetBehavior(.viewAligned)
//.scrollTargetLayout()
// scrollTargetLayout() and scrollTargetBehavior make the frame fully show in the view, choose the nearest one.

//.contentMargins(20, for: .scrollContent)
// give margin to every content

//.containerRelativeFrame(.horizontal, count: 2, span: 1, spacing: 10)
//seperate the screen to count, each content take the number of span.

#Preview {
    SmartScroll()
}
