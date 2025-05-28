import SwiftUI

struct NoBackSwipeModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(DisableSwipeBackView())
    }
}

struct DisableSwipeBackView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let controller = UIViewController()
        controller.view.backgroundColor = .clear
        controller.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

extension View {
    func disableBackSwipe() -> some View {
        self.modifier(NoBackSwipeModifier())
    }
}
