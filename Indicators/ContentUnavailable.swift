struct ContentUnavailable: View {
    var body: some View {
        
        ContentUnavailableView {
            Label("No Mail", systemImage: "tray.fill")
        } description: {
            Text("New mails you receive will appear here.")
        } actions: {
            //action code
        }
        
        ContentUnavailableView.search
    }
}
