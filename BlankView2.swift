import SwiftUI

struct BlankView2: View {
    @State private var move = false

    var body: some View {
        VStack(spacing: 50) {
            Text("EaseIn")
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                .offset(x: move ? 200 : 0)
                .animation(.easeIn(duration: 1), value: move)

            Text("EaseOut")
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
                .offset(x: move ? 200 : 0)
                .animation(.easeOut(duration: 1), value: move)

            Text("EaseInOut")
            Rectangle()
                .fill(Color.purple)
                .frame(width: 100, height: 100)
                .offset(x: move ? 200 : 0)
                .animation(.easeInOut(duration: 1), value: move)

            Button("Animate") {
                move.toggle()
            }
            .padding()
        }
    }
}
#Preview {
    BlankView2()
}
