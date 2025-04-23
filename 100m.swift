import SwiftUI


struct m100: ViewModifier {
    func body(content: Content) -> some View {
        content
        Text("Change")
    }
}
