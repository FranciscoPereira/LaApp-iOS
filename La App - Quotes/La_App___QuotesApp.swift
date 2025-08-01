import SwiftUI
import SwiftData
import DesignSystem

@main
struct Application: App {
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            QuoteModel.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    private var appConfig: AppConfigModel {
        guard
            let authorURL = Bundle.main.url(
                forResource: "Author",
                withExtension: "plist"
            )
        else {
            fatalError("Unable to load Author.plist")
        }
        
        let author: Author
        do {
            let data = try Data(contentsOf: authorURL)
            let decoder = PropertyListDecoder()
            author = try decoder.decode(Author.self, from: data)
        } catch {
            fatalError("Unable to decode Author.plist: \(error)")
        }
        
        return AppConfigModel(author: author, image: Image("Author"))
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(appConfig: appConfig)
        }
        .modelContainer(sharedModelContainer)
    }
}

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String, dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .deferredToDate, keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = dateDecodingStrategy
        decoder.keyDecodingStrategy = keyDecodingStrategy

        do {
            return try decoder.decode(T.self, from: data)
        } catch DecodingError.keyNotFound(let key, let context) {
            fatalError("Failed to decode \(file) from bundle due to missing key '\(key.stringValue)' not found – \(context.debugDescription)")
        } catch DecodingError.typeMismatch(_, let context) {
            fatalError("Failed to decode \(file) from bundle due to type mismatch – \(context.debugDescription)")
        } catch DecodingError.valueNotFound(let type, let context) {
            fatalError("Failed to decode \(file) from bundle due to missing \(type) value – \(context.debugDescription)")
        } catch DecodingError.dataCorrupted(_) {
            fatalError("Failed to decode \(file) from bundle because it appears to be invalid JSON")
        } catch {
            fatalError("Failed to decode \(file) from bundle: \(error.localizedDescription)")
        }
    }
}
