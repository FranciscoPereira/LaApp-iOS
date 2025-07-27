import SwiftUI

public struct TextFieldComponent: View {
    private let title: String
    @Binding private var text: String
    
    public init(
        title: String,
        text: Binding<String>
    ) {
        self.title = title
        self._text = text
    }
    
    public var body: some View {
        VStack(spacing: Spacing.x4) {
            HStack {
                Text(title)
                    .font(.h3)
                Spacer()
            }
            TextField("", text: $text)
                .frame(height: 50)
                .background(Color.white)
                .clipShape(Capsule())
                .font(.body)
                
        }
        .padding(.horizontal)
    }
}

#if DEBUG
#Preview {
    TextFieldComponent_Preview()
}

struct TextFieldComponent_Preview: View {
    var body: some View {
        VStack {
            TextFieldComponent(
                title: "Title",
                text: .constant("")
            )
            Spacer()
        }
        .background(AppTheme.light.colors.background)
    }
}
#endif
