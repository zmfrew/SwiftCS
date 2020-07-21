import SwiftUI

struct AppNavigationView: View {
    private let arr = [
        "linked list",
        "queue",
        "stack",
        "tree",
        "binary tree",
        "binary search tree"
    ]
    
    var body: some View {
        NavigationView {
            List(arr, id: \.self) { item in
                NavigationLink(destination: ContentView(text: item)) {
                    Image(systemName: "bolt.heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 25)
                    Text(item)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AppNavigationView()
        }
    }
}
