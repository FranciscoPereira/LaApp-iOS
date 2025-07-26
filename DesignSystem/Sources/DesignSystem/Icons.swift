import SwiftUI

public enum Icons {
    public static let main = Image(.icon)
}

#if DEBUG
#Preview {
    Icons_Preview()
}

struct Icons_Preview: View {
    var body: some View {
        List {
            row(title: "Icon", image: Icons.main)
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
