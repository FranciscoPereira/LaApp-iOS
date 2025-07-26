import SwiftUI

public struct PrimaryButtonComponent: View {
    private let action: () -> Void
    private let title: String
    private let enabled: Bool
    
    public init(
        title: String,
        enabled: Bool = true,
        action: @escaping () -> Void
    ) {
        self.action = action
        self.title = title
        self.enabled = enabled
    }
    
    public var body: some View {
            Button(action: action) {
                Text(title)
                    .font(.h3)
                    .foregroundColor(.secondary)
                .frame(
                    height: 50
                )
            }
            .clipShape(.capsule)
            .frame(maxWidth: .infinity)
            .background(Color.primary)
            .clipShape(.capsule)
            .disabled(!enabled)
            .opacity(enabled ? 1 : 0.6)
    }
}

#if DEBUG
#Preview {
    VStack {
        PrimaryButtonComponent(
            title: "Sign Up",
            action: {}
        )
        .padding()
        PrimaryButtonComponent(
            title: "Sign Up - disabled",
            enabled: false,
            action: {}
        )
        .padding()
        Spacer()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.background)
}
#endif
