import SwiftUI



struct Shotput: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.quaternary, in: Capsule())
    }
}
