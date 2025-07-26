import SwiftUI

public extension Color {
    static let primary = Color("PrimaryColor", bundle: .module)
    static let secondary = Color("SecondaryColor", bundle: .module)
    static let background = Color("BackgroundColor", bundle: .module)

}

#if DEBUG
#Preview {
    ColorPreview()
}

struct ColorPreview: View {
    var body: some View {
        List {
            row(title: "Primary", color: .primary)
            row(title: "Secondary", color: .secondary)
            row(title: "Background", color: .background)
        }
    }
    
    @ViewBuilder
    private func row(
        title: String,
        color: Color
    ) -> some View {
        HStack {
            Rectangle()
                .fill(color)
                .frame(width: 20, height: 20)
            Text(title)
        }
    }
}
#endif
