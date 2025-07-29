import SwiftUI

public enum Icons {
    public static let brain = Image(.brain)
    public static let heart = Image(.heart)
    public static let thunder = Image(.thunder)
    public static let eye = Image(.eye)
    public static let idea = Image(.idea)
    public static let person = Image(.person)
    public static let share = Image(.share)
    public static let play = Image(.play)
    public static let quotes = Image(.quotes)
}

#if DEBUG
#Preview {
    Icons_Preview()
}

struct Icons_Preview: View {
    var body: some View {
        List {
            row(title: "brain", image: Icons.brain)
            row(title: "heart", image: Icons.heart)
            row(title: "thunder", image: Icons.thunder)
            row(title: "eye", image: Icons.eye)
            row(title: "idea", image: Icons.idea)
            row(title: "share", image: Icons.share)
            row(title: "play", image: Icons.play)
            row(title: "quotes", image: Icons.quotes)
        }
    }
    
    @ViewBuilder
    private func row(
        title: String,
        image: Image
    ) -> some View {
        HStack {
            Text(title)
            Spacer()
            image
        }
    }
}
#endif
