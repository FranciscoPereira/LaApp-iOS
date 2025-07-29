import SwiftUI

public struct CardView: View {
    
    public init() {}
    
    public var body: some View {
            VStack {
                HStack {
                    
                    Icons.brain
                        .background(Color.accent)
                        .clipShape(.rect(cornerRadius: 8))
                    Text("Type of card")
                        .font(.headline)
                    Button(action: {
                        
                    }) {
                        Icons.heart
                            .foregroundColor(Color.accent)
                    }
                }
                HStack {
                    Icons.quotes
                    Spacer()
                }
                Text("The interpretation of dreams is the royal road to a knowledge of the unconscious activities of the mind.")
                    .padding()
                    .multilineTextAlignment(.center)
                    .font(.body)
                HStack {
                    Spacer()
                    Icons.quotes
                        .rotationEffect(.radians(.pi))
                }
                HStack {
                    Spacer()
                    //                Image(systemName: "person.circle")
                    Text("Sigmund Freud")
                        .font(.caption)
                    Icons.brain
                }
                Text("From 'The Interpretation of Dreams' (1900)")
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
            .padding()
        .fixedSize(horizontal: false, vertical: true)
        .background(Color.primary.opacity(0.1))
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    CardView()
        .frame(width: 320)
}
