import SwiftUI

public struct CardViewModifier: ViewModifier {
    public init() {}
    
    public func body(content: Content) -> some View {
        content
            .padding()
            .fixedSize(horizontal: false, vertical: true)
            .background(Color.primary.opacity(0.1))
            .clipShape(.rect(cornerRadius: 20))
    }
}
