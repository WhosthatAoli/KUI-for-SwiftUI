@State private var vibrateOnSilent: Bool = true

var body: some View {
    Toggle("Switch", isOn: $vibrateOnSilent)
        .toggleStyle(SwitchToggleStyle(tint: .accentColor))
}
