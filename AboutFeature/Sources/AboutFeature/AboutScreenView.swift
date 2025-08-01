import SwiftUI
import DesignSystem

struct AboutScreenView: View {
    private let author: String
    private let title: String
    private let subtitle: String
    private let image: Image
    
    init(
        author: String,
        title: String,
        subtitle: String,
        image: Image
    ) {
        self.author = author
        self.title = title
        self.subtitle = subtitle
        self.image = image
    }
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    AboutHeaderView(
                        author: author,
                        title: title,
                        subtitle: subtitle,
                        image: image
                    )
                    AboutDescriptionView(
                        title: "Revolutionary Mind",
                        icon: Icons.brain,
                        description: "Sigmund Freud revolutionized our understanding of the human psyche by revealing the profound influence of unconscious desires, fears, and  memories on conscious behavior."
                    )
                    AboutListView(
                        title: "Fundamental Discoveries",
                        icon: Icons.idea,
                        items: [
                            .init(
                                title: "The Unconscious Mind",
                                subtitle: "The hidden realm of repressed thoughts and desires",
                                icon: Icons.brain
                            ),
                            .init(
                                title: "Dream Analysis",
                                subtitle: "Dreams as the royal road to the unconscious",
                                icon: Icons.eye
                            ),
                            .init(
                                title: "Psychosexual Development",
                                subtitle: "How early experiences shape adult personality",
                                icon: Icons.thunder
                            ),
                            .init(
                                title: "Defense Mechanisms",
                                subtitle: "The ego's strategies to protect against anxiety",
                                icon: Icons.heart
                            )
                        ]
                    )
                    VStack {
                        QuoteView(text: "The goal of all life is death, and, looking backwards, that from inanimate things came to life.")
                        HStack {
                            Spacer()
                            Text("— Freud on the death drive")
                                .font(.caption)
                            Spacer()
                        }
                    }
                    .modifier(CardViewModifier())
                }
            }
        }
    }
}
