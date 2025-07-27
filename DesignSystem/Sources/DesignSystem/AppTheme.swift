import Combine
import SwiftUICore

@Observable
public final class ThemeProvider {
    public var currentTheme: AppTheme = .light
    
    public init(currentTheme: AppTheme) {
        self.currentTheme = currentTheme
    }
}


public enum AppTheme: CaseIterable, Codable {
    case light, dark
    
    public var colors: ThemeColors {
        switch self {
        case .light: return ThemeColors.light
        case .dark: return ThemeColors.dark
        }
    }
}
