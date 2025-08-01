import SwiftUI
import DesignSystem

struct AboutDescriptionView: View {
    let title: String
    let icon: Image
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                icon 
                    .background(Color.accent)
                    .clipShape(.rect(cornerRadius: 8))
                Text(title)
                Spacer()
            }
            Text(description)
        }
        .modifier(CardViewModifier())
    }
}

#Preview {
    AboutDescriptionView(
        title: "Fundamental Discoveries",
        icon: Icons.idea,
        description: "Sigmund Freud revolutionized our understanding of the human psyche by revealing the profound influence of unconscious desires, fears, and memories on conscious behavior."
    )
}
