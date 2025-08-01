import SwiftUI
import SwiftData

@Model
final class QuoteModel {
    @Attribute(.unique)
    var title: String
    var icon: Data
    var saved: Bool
    var body: String
    var author: String
    var reference: String
    
    init(
        title: String,
        icon: Data,
        saved: Bool,
        body: String,
        author: String,
        reference: String
    ) {
        self.title = title
        self.icon = icon
        self.saved = saved
        self.body = body
        self.author = author
        self.reference = reference
    }
}
