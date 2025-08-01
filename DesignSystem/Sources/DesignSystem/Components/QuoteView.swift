import SwiftUI

public struct QuoteView: View {
    private let text: String
    
    public init(text: String) {
        self.text = text
    }
    
    public var body: some View {
        VStack {
            HStack {
                Icons.quotes
                Spacer()
            }
            Text(text)
                .padding()
                .multilineTextAlignment(.center)
                .font(.body)
            HStack {
                Spacer()
                Icons.quotes
                    .rotationEffect(.radians(.pi))
            }
        }
    }
}

#Preview {
    QuoteView(
        text: "The interpretation of dreams is the royal road to a knowledge of the unconscious activities of the mind."
    )
}
