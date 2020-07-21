import SwiftUI

struct AppNavigationView: View {
    private let dataStructures = [
        "linked list",
        "queue",
        "stack",
        "tree",
        "binary tree",
        "binary search tree"
    ]
    
    private let algorithms = [
        "bubble sort",
        "merge sort",
        "binary search",
        "insertion sort"
    ]
    
    private let miscellaneous = [
        "arc",
        "processes",
        "threads",
        "dispatch queues"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Data Structures")) {
                    ForEach(dataStructures, id: \.self) { dataStructure in
                        NavigationLink(destination: ContentView(text: dataStructure)) {
                            Image(systemName: "bolt.heart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 25)
                            Text(dataStructure)
                        }
                    }
                }
                
                Section(header: Text("Algorithms")) {
                    ForEach(algorithms, id: \.self) { algorithm in
                        NavigationLink(destination: ContentView(text: algorithm)) {
                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 25)
                            Text(algorithm)
                        }
                    }
                }
                
                Section(header: Text("Miscellaneous")) {
                    ForEach(miscellaneous, id: \.self) { item in
                        NavigationLink(destination: ContentView(text: item)) {
                            Image(systemName: "heart.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 25)
                            Text(item)
                        }
                    }
                }
            }
            .navigationTitle(Text("SwiftCS"))
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
