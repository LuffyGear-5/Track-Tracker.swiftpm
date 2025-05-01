//import SwiftUI
//
//
//struct RunEntry: Identifiable {
//    let id = UUID()
//    let time: TimeInterval
//}
//
//struct m1600: View {
//    @State private var timeText: String = ""
//    @State private var runs: [RunEntry] = []
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                Form {
//                    TextField("Time (minutes)", text: $timeText)
//                        .keyboardType(.decimalPad)
//
//                    Button("Add Run") {
//                        addRun()
//                    }
//                }
//
//                List(runs) { run in
//                    Text("Time: \(formatTime(run.time))")
//                }
//            }
//            .navigationTitle("Run Times")
//        }
//    }
//
//    func addRun() {
//        guard let timeMinutes = Double(timeText) else { return }
//
//        let timeInSeconds = timeMinutes * 60
//        let newRun = RunEntry(time: timeInSeconds)
//        runs.append(newRun)
//
//        timeText = ""
//    }
//
//    func formatTime(_ seconds: TimeInterval) -> String {
//        let minutes = Int(seconds) / 60
//        let seconds = Int(seconds) % 60
//        return "\(minutes)m \(seconds)s"
//    }
//}
//
//
import SwiftUI

struct TestView: View {
    @State private var inputText: String = ""
    @State private var numbers: [Double] = []

    var body: some View {
        VStack {
                
                List {
                    ForEach(sortedNumbers, id: \.self) { number in
                        Text("\(number, specifier: "%.2f")")
                    }
                    
                }
            HStack{
                TextField("Enter your time", text: $inputText)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button(action: addNumber) {
                    Text("Add")
                        .padding(.horizontal)
                }
            }
        }
    }
    
    var sortedNumbers: [Double] {
        numbers.sorted(by: <)
    }

    func addNumber() {
        if let number = Double(inputText) {
            numbers.append(number)
            inputText = ""
        }
    }
}

#Preview {
    TestView()
}




