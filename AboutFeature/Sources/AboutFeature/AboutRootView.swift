import SwiftUI

public struct AboutRootView: View {
    private let author: String
    private let title: String
    private let subtitle: String
    private let image: Image
    
    public init(
        author: String,
        title: String,
        subtitle: String,
        image: Image
    ) {
        self.author = author
        self.title = title
        self.subtitle = subtitle
        self.image = image
    }
    
    public var body: some View {
        AboutScreenView(
            author: author,
            title: title,
            subtitle: subtitle,
            image: image
        )
    }
}
