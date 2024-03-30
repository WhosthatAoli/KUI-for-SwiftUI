struct SliderContinuousView: View {
    @State private var volume: Double = 50.0

    var body: some View {
        Slider(value: $volume,
            in: 0...100,
            minimumValueLabel: Image(systemName: "speaker"),
            maximumValueLabel: Image(systemName: "speaker.wave.3"),
            label: {
                Text("Volume")
            }
        )
    }
}

struct SliderSteppedView: View {
    @State private var rating: Double = 5

    var body: some View {
        Slider(value: $rating,
            in: 0...10,
            step: 1,
            minimumValueLabel: Text("0"),
            maximumValueLabel: Text("10"),
            label: {
                Text("Rating")
            }
        )
    }
}
