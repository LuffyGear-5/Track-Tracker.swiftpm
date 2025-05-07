import SwiftUI


struct TestView: View {
 @State var currentDate = Date()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
           Text("Current Date and Time:")
                .font(.headline)
            Text(currentDate.formatted(date: .long, time: .standard))
                .font(.title2)
                .padding()
        }
        .padding()
        .onReceive(timer) { input in
            currentDate = input
        }
    }
}

#Preview {
    TestView()
}
