import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            StartView(alertColor: .black)
                .preferredColorScheme(.dark)
               
        }
    }
}
