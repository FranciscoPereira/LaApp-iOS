import SwiftUI

public extension Font {
    static let h1: Font = Font.system(size: 34, weight: .bold)
    static let h2: Font = Font.system(size: 28, weight: .bold)
    static let h3: Font = Font.system(size: 24, weight: .bold)
    static let body: Font = Font.system(size: 17, weight: .regular)
}

#if DEBUG
#Preview {
    Font_Preview()
}

struct Font_Preview: View {
    var body: some View {
        List {
            Text("Hello, Heading 1!").font(.h1)
            Text("Hello, Heading 2!").font(.h2)
            Text("Hello, Heading 3!").font(.h3)
            Text("Hello, Body!").font(.body)
        }
    }
}

#endif
