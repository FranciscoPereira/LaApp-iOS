import SwiftUI

public struct CardView: View {
    private let title: String
    private let icon: Image
    private let saved: Bool
    private let description: String
    private let author: String
    private let reference: String
    private let actionWatchVideo: () -> Void
    private let actionShare: () -> Void
    
    public init(
        title: String,
        icon: Image,
        saved: Bool,
        description: String,
        author: String,
        reference: String,
        actionWatchVideo: @escaping () -> Void,
        actionShare: @escaping () -> Void
    ) {
        self.title = title
        self.icon = icon
        self.saved = saved
        self.description = description
        self.author = author
        self.reference = reference
        self.actionWatchVideo = actionWatchVideo
        self.actionShare = actionShare
    }
    
    public var body: some View {
            VStack {
                HStack {
                    icon
                        .background(Color.accent)
                        .clipShape(.rect(cornerRadius: 8))
                    Text(title)
                        .font(.headline)
                    Button(action: {
                        
                    }) {
                        Icons.heart
                            .foregroundColor(Color.accent)
                    }
                }
                QuoteView(text: description)
                HStack {
                    Spacer()
                    Text(author)
                        .font(.caption)
                    icon
                }
                Text(reference)
                    .font(.caption)
                HStack {
                    Button(action: {
                        
                    }) {
                        HStack {
                            Icons.play
                            Text("Watch video")
                                .foregroundColor(Color.white)
                        }
                        .padding()
                        .background(Color.primary)
                        
                        .clipShape(Capsule())
                    }
                    Text("Share")
                        .font(.caption)
                    Button(action: {
                        
                    }) {
                        Icons.share
                    }
                }
            }
            .modifier(CardViewModifier())
    }
}

#Preview {
    CardView(
        title: "Dreams & Unconscious",
        icon: Icons.brain,
        saved: false,
        description: "The interpretation of dreams is the royal road to a knowledge of the unconscious activities of the mind.",
        author: "Sigmund Freud",
        reference: "From 'The Interpretation of Dreams' (1900)",
        actionWatchVideo: {},
        actionShare: {}
    )
        .frame(width: 320)
}
