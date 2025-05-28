import SwiftUI

@main
struct MyApp: App {
    @State private var showApp = false
    var body: some Scene {
        WindowGroup {
            ZStack{
                if showApp {
                    StartView(alertColor: .black, blue: 0.96, green: 0.76, red: 0.35, customColor: .red)
                        .transition(.opacity)
                } else {
                    Image("NewLogo")
                        .resizable()
                        .frame(width: 135, height: 135)
                        .imageScale(.large)
                    .transition(.opacity)
                    .foregroundStyle(.white)
                }
            }
            .animation(.easeInOut(duration: 0.25), value: showApp)
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation {
                        showApp = true
                    }
                }
            }
            .preferredColorScheme(.dark)
        }
        
    }
}

