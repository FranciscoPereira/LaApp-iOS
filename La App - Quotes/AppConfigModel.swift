import Foundation
import SwiftUI

struct AppConfigModel {
    let author: Author
    let image: Image
}

struct Author: Decodable {
    let name: String
    let title: String
    let subtitle: String
}
