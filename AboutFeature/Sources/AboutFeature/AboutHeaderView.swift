import SwiftUI
import DesignSystem

struct AboutHeaderView: View {
    let author: String
    let title: String
    let subtitle: String
    let image: Image
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                image
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
                Text(author)
                    .font(.headline)
                Text(title)
                    .foregroundColor(Color.accent)
                Text(subtitle)
                    .font(.caption)
            }
            Spacer()
        }
    }
    
}

#Preview {
    AboutHeaderView(
        author: "Sigmund Freud",
        title: "The father of Psychoanalysis",
        subtitle: "1856-1939",
        image: Icons.brain
    )
}
