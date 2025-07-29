import SwiftUI
import SwiftData
import HomeFeature
import AboutFeature
import DesignSystem

struct ContentView: View {
    var body: some View {
        TabView {
            HomeRootView()
                .tabItem {
                    Label(
                        title: {
                            Text("Explore")
                        },
                        icon: {
                            Icons.brain
                        }
                    )
                }
            AboutRootView()
                .tabItem {
                    Label(
                        title: {
                            Text("About")
                        },
                        icon: {
                            Icons.person
                        }
                    )
                }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
