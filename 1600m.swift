import SwiftUI

struct RunEntry: Identifiable {
    let id = UUID()
    let time: TimeInterval
}

struct m1600: View {
    @State private var timeText: String = ""
    @State private var runs: [RunEntry] = []

    var body: some View {
        NavigationView {
            VStack {
                List(runs) { run in
                    Text("Time: \(formatTime(run.time))")
                }

                Spacer()

                HStack {
                    TextField("Time (minutes)", text: $timeText)
                        .keyboardType(.decimalPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()

                    Button("Add Run") {
                        addRun()
                    }
                    .padding()
                }
            }
        }
    }

    func addRun() {
        guard let timeMinutes = Double(timeText), timeMinutes > 0 else { return }

        let timeInSeconds = timeMinutes * 60
        let newRun = RunEntry(time: timeInSeconds)
        runs.append(newRun)

        timeText = ""
    }

    func formatTime(_ seconds: TimeInterval) -> String {
        let minutes = Int(seconds) / 60
        let seconds = Int(seconds) % 60
        return "\(minutes)m \(seconds)s"
    }
}
