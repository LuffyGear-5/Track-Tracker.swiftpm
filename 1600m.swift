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
                Form {
                    TextField("Time (minutes)", text: $timeText)
                        .keyboardType(.decimalPad)

                    Button("Add Run") {
                        addRun()
                    }
                }

                List(runs) { run in
                    Text("Time: \(formatTime(run.time))")
                }
            }
            .navigationTitle("Run Times")
        }
    }

    func addRun() {
        guard let timeMinutes = Double(timeText) else { return }

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


