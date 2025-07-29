import SwiftUI
import DesignSystem

struct AboutHeaderView: View {
    var body: some View {
        VStack(alignment: .center) {
            Icons.brain
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(20)
            Text("Sigmund Freud")
                .font(.headline)
            Text("The father of Psychoanalysis")
                .foregroundColor(Color.accent)
            Text("1856-1939")
                .font(.caption)
        }
    }
    
}

#Preview {
    AboutHeaderView()
}
