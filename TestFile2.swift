import SwiftUI



class ListViewModel: ObservableObject {
    @Published var items: [String] {
        didSet {
            UserDefaults.standard.set(items, forKey: "SavedItems")
        }
    }

    init() {
        self.items = UserDefaults.standard.stringArray(forKey: "SavedItems") ?? []
    }

    func addItem(_ item: String) {
        items.append(item)
    }
}
