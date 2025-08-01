import SwiftUI
import DesignSystem

struct SavedScreenView: View {
    var body: some View {
        List {
            CardView(
                title: "Dreams & Unconscious",
                icon: Icons.brain,
                saved: false,
                description: "The interpretation of dreams is the royal road to a knowledge of the unconscious activities of the mind.",
                author: "Sigmund Freud",
                reference: "From 'The Interpretation of Dreams' (1900)",
                actionWatchVideo: {},
                actionShare: {}
            )
        }
    }
}

#Preview {
    SavedScreenView()
}
