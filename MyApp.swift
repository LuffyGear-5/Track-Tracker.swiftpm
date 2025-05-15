import SwiftUI

@main
struct MyApp: App {
    @State var alertColor: Color = .black
    var body: some Scene {
        WindowGroup {
            StartView(alertColor: $alertColor)
                .preferredColorScheme(.dark)
               
        }
    }
}
