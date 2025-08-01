import SwiftUI
import DesignSystem

struct AboutListView: View {
    struct Item: Identifiable {
        var id: String { title }
        
        let title: String
        let subtitle: String
        let icon: Image
    }
    
    let title: String
    let icon: Image
    let items: [Item]
    
    var body: some View {
        VStack {
            HStack {
                icon
                    .background(Color.accent)
                    .clipShape(.rect(cornerRadius: 8))
                Text(title)
                    .bold()
                Spacer()
            }
            ForEach(items) { item in
                makeItem(
                    icon: item.icon,
                    title: item.title,
                    subtitle: item.subtitle
                )
            }
        }
        .modifier(CardViewModifier())
    }
}

private extension AboutListView {
    func makeItem(
        icon: Image,
        title: String,
        subtitle: String
    ) -> some View {
        HStack {
            VStack {
                icon
                    .background(Color.accent)
                    .clipShape(.rect(cornerRadius: 8))
                Spacer()
            }
            VStack(alignment: .leading) {
                Text(title)
                    .bold()
                Text(subtitle)
            }
            .multilineTextAlignment(.leading)
            Spacer()
        }
    }
}

#Preview {
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
}
