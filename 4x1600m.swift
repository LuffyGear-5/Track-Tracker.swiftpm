import SwiftUI


struct m4x1600: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.quaternary, in: Capsule())
    }
}
