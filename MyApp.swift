import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            StartView(alertColor: .black, blue: 0.96, green: 0.76, red: 0.35, customColor: .red)
                .preferredColorScheme(.dark)
               
        }
    }
}
