struct StepperView: View {
    @State private var count: Int = 0

    var body: some View {
        Stepper("\(count)",
            value: $count,
            in: 0...100
        )
    }
}
