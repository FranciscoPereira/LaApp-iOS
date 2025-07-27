import SwiftUI

public struct SecondaryButtonComponent: View {
    private let action: () -> Void
    private let title: String
    
    public init(
        title: String,
        action: @escaping () -> Void
    ) {
        self.action = action
        self.title = title
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
            .frame(maxWidth: .infinity)
            .background(Color.clear)
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(Color.secondary, lineWidth: 1)
            }
    }
}

#if DEBUG
#Preview {
    VStack {
        SecondaryButtonComponent(
            title: "Log In",
            action: {}
        )
        .padding()
        Spacer()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.background)
}
#endif
