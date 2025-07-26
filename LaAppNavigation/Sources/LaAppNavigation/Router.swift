import SwiftUI

public final class Router: ObservableObject {
    @Published public var path = NavigationPath()
    
    public init() {}
    
    // Go to a new route
    public func navigate(to route: Route) {
        path.append(route)
    }
    
    // Return to previous page
    public func navigateBack() {
        path.removeLast()
    }
    
    // Return to home page
    public func navigateToRoot() {
        path.removeLast(path.count)
    }
    
    // Go back to a specific view
    public func popToView(count: Int) {
        path.removeLast(count)
    }
}

public extension Router {
    func canNavigateBack() -> Bool {
        return path.count > 0
    }
}
