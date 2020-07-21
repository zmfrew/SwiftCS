import SwiftUI

struct ContentView: View {
    let text: String
    
    var body: some View {
        Text("Hello \(text).")
            .font(.largeTitle)
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(text: "binary search tree")
        }
    }
}
