import SwiftUI

public extension Color {
    static let background = Color("BackgroundColor", bundle: .module)
    static let foreground = Color("ForegroundColor", bundle: .module)
    static let card = Color("CardColor", bundle: .module)
    static let cardForeground = Color("CardForegroundColor", bundle: .module)
    static let primaryColor = Color("PrimaryColor", bundle: .module)
    static let primaryForeground = Color("PrimaryForegroundColor", bundle: .module)
    static let secondary = Color("SecondaryColor", bundle: .module)
    static let secondaryForeground = Color("SecondaryForegroundColor", bundle: .module)
    static let accent = Color("AccentColor", bundle: .module)
    static let accentForeground = Color("AccentForegroundColor", bundle: .module)
    static let muted = Color("MutedColor", bundle: .module)
    static let mutedForeground = Color("MutedForegroundColor", bundle: .module)
    static let sidebar = Color("SidebarColor", bundle: .module)
    static let sidebarForeground = Color("SidebarForegroundColor", bundle: .module)
}

#if DEBUG
#Preview {
    ColorPreview()
}

struct ColorPreview: View {
    var body: some View {
        List {
            row(title: "BackgroundColor", color: .background)
            row(title: "ForegroundColor", color: .foreground)
            row(title: "CardColor", color: .card)
            row(title: "CardForegroundColor", color: .cardForeground)
            row(title: "PrimaryColor", color: .primaryColor)
            row(title: "PrimaryForegroundColor", color: .primaryForeground)
            row(title: "SecondaryColor", color: .secondary)
            row(title: "SecondaryForegroundColor", color: .secondaryForeground)
            row(title: "AccentColor", color: .accent)
            row(title: "AccentForegroundColor", color: .accentForeground)
            row(title: "MutedColor", color: .muted)
            row(title: "MutedForegroundColor", color: .mutedForeground)
            row(title: "SidebarColor", color: .sidebar)
            row(title: "SidebarForegroundColor", color: .sidebarForeground)
            row(title: "Primary", color: .background)
            row(title: "Secondary", color: .foreground)
            row(title: "Background", color: .card)
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
