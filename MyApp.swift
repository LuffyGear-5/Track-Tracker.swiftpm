import SwiftUI

@main
struct MyApp: App {
    @State private var showApp = false
    @State private var isAnimating = false
    var body: some Scene {
        WindowGroup {
            VStack{
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
                    
                    Circle()
                        .trim(from: 0.0, to: 0.9)
                        .stroke(Color.gray, lineWidth: 5)
                        .frame(width: 25, height: 25)
                        .rotationEffect(Angle(degrees: isAnimating ? 360 : 0))
                        .animation(Animation.linear(duration: 1.3).repeatForever(autoreverses: false), value: isAnimating)
                        .onAppear {
                            isAnimating = true
                        }
                }
            }
            .animation(.easeInOut(duration: 0.25), value: showApp)
            .onAppear() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.75) {
                    withAnimation {
                        showApp = true
                    }
                }
            }
            .preferredColorScheme(.dark)
        }
        
    }
}

