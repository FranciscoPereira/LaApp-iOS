import SwiftUI

public struct ThemeColors : Sendable{
    public let background: Color
    public let foreground: Color
    public let card: Color
    public let cardForeground: Color
    public let primary: Color
    public let primaryForeground: Color
    public let secondary: Color
    public let secondaryForeground: Color
    public let accent: Color
    public let accentForeground: Color
    public let muted: Color
    public let mutedForeground: Color
    public let sidebar: Color
    public let sidebarForeground: Color
    
    // MARK: - Presets
    
    public static let light = ThemeColors(
        background: Color(hex: "#fafaf9"),
        foreground: Color(hex: "#1a1a2e"),
        card: .white,
        cardForeground: Color(hex: "#1a1a2e"),
        primary: Color(hex: "#2d1b69"),
        primaryForeground: .white,
        secondary: Color(hex: "#d4af37"),
        secondaryForeground: Color(hex: "#1a1a2e"),
        accent: Color(hex: "#6366f1"),
        accentForeground: .white,
        muted: Color(hex: "#f8f9fa"),
        mutedForeground: Color(hex: "#6b7280"),
        sidebar: Color(hex: "#fafaf9"),
        sidebarForeground: Color(hex: "#1a1a2e")
    )
    
    public static let dark = ThemeColors(
        background: Color(hex: "#0f0f23"),
        foreground: Color(hex: "#f8fafc"),
        card: Color(hex: "#16213e"),
        cardForeground: Color(hex: "#f8fafc"),
        primary: Color(hex: "#6366f1"),
        primaryForeground: .white,
        secondary: Color(hex: "#d4af37"),
        secondaryForeground: Color(hex: "#0f0f23"),
        accent: Color(hex: "#8b5cf6"),
        accentForeground: .white,
        muted: Color(hex: "#1e293b"),
        mutedForeground: Color(hex: "#94a3b8"),
        sidebar: Color(hex: "#0f0f23"),
        sidebarForeground: Color(hex: "#f8fafc")
    )
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default: (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(.sRGB,
                  red: Double(r) / 255,
                  green: Double(g) / 255,
                  blue: Double(b) / 255,
                  opacity: Double(a) / 255)
    }
}

#if DEBUG
#Preview("Light") {
    ColorPreview(theme: .light)
}

#Preview("Dark") {
    ColorPreview(theme: .dark)
}

struct ColorPreview: View {
    let theme: AppTheme
    
    var body: some View {
        List {
            row(title: "background", color: theme.colors.background)
            row(title: "foreground", color: theme.colors.foreground)
            row(title: "card", color: theme.colors.card)
            row(title: "cardForeground", color: theme.colors.cardForeground)
            row(title: "primary", color: theme.colors.primary)
            row(title: "primaryForeground", color: theme.colors.primaryForeground)
            row(title: "secondary", color: theme.colors.secondary)
            row(title: "secondaryForeground", color: theme.colors.secondaryForeground)
            row(title: "accent", color: theme.colors.accent)
            row(title: "accentForeground", color: theme.colors.accentForeground)
            row(title: "muted", color: theme.colors.muted)
            row(title: "mutedForeground", color: theme.colors.mutedForeground)
            row(title: "sidebar", color: theme.colors.sidebar)
            row(title: "sidebarForeground", color: theme.colors.sidebarForeground)
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
