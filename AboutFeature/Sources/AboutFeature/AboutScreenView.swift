import SwiftUI

struct AboutScreenView: View {
    var body: some View {
        GeometryReader { geometry in
            List {
                AboutHeaderView()
            }
        }
    }
}
