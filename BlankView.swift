import SwiftUI



struct BlankView: View {
    @State private var isScaledUp = false

        var body: some View {
            VStack {
                Circle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
                    .scaleEffect(isScaledUp ? 2.0 : 1.0)  // scale up or normal
                    .animation(.easeInOut(duration: 0.5), value: isScaledUp)

                Button("Toggle Scale") {
                    isScaledUp.toggle()
                }
                .padding()
            }
        }
    }

#Preview {
    BlankView()
}
