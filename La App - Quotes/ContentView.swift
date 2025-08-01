import SwiftUI
import SwiftData
import HomeFeature
import AboutFeature
import DesignSystem

struct ContentView: View {
    let appConfig: AppConfigModel
    
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
            HomeRootView()
                .tabItem {
                    Label(
                        title: {
                            Text("Saved")
                        },
                        icon: {
                            Icons.heart
                        }
                    )
                }
            HomeRootView()
                .tabItem {
                    Label(
                        title: {
                            Text("Library")
                        },
                        icon: {
                            Icons.idea
                        }
                    )
                }
            AboutRootView(
                author: appConfig.author.name,
                title: appConfig.author.title,
                subtitle: appConfig.author.subtitle,
                image: appConfig.image
            )
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
    ContentView(
        appConfig: AppConfigModel(
            author: Author(
                name: "Sigmund Freud",
                title: "The father of Psychoanalysis",
                subtitle: "1856-1939"
            ),
            image: Image("Author")
        )
    )
        .modelContainer(for: QuoteModel.self, inMemory: true)
}
