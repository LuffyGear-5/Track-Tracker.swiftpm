import SwiftUI

struct m3200: View {
    @State var inputText: String = ""
    @AppStorage("stringArray3") var arrayStorage: String = ""
    @State var strings: [String] = []
    @State var dates: [Date] = []
    @State var currentDate = Date()
    @State var errorMessage: String? = nil

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var sortedEntries: [(text: String, date: Date, originalIndex: Int)] {
        return strings.indices.map { i in
            (text: strings[i], date: dates[i], originalIndex: i)
        }
        .sorted { $0.text.lowercased() < $1.text.lowercased() }
    }

    var body: some View {
        VStack {
            List {
                ForEach(sortedEntries, id: \.originalIndex) { entry in
                    HStack {
                        Text(entry.text)
                        Spacer()
                        Text(formattedDate(entry.date))
                            .font(.caption)
                    }
                }
                .onDelete(perform: deleteItemsSorted)
            }

            if let errorMessage = errorMessage {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding(.bottom, 5)
            }

            HStack {
                TextField("Enter you time in '00:00' format", text: $inputText)
                    .keyboardType(.default)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button("Add") {
                    if Double(inputText) == nil && !inputText.isEmpty {
                        strings.append(inputText)
                        dates.append(currentDate)
                        saveArray()
                        errorMessage = nil
                        inputText = ""
                    } else {
                        errorMessage = "Numeric input is not allowed."
                    }
                }
            }
            .padding()
        }
        .onAppear {
            loadArray()
        }
        .onReceive(timer) { input in
            currentDate = input
        }
    }

    func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter.string(from: date)
    }

    func saveArray() {
        let combined = zip(strings, dates).map { "\($0)|\($1.timeIntervalSince1970)" }
        arrayStorage = combined.joined(separator: ",")
    }

    func loadArray() {
        let entries = arrayStorage.split(separator: ",")
        strings = []
        dates = []
        for entry in entries {
            let parts = entry.split(separator: "|")
            if parts.count == 2,
               let timestamp = TimeInterval(parts[1]) {
                strings.append(String(parts[0]))
                dates.append(Date(timeIntervalSince1970: timestamp))
            }
        }
    }

    func deleteItemsSorted(at offsets: IndexSet) {
        let indicesToDelete = offsets.map { sortedEntries[$0].originalIndex }
        for index in indicesToDelete.sorted(by: >) {
            strings.remove(at: index)
            dates.remove(at: index)
        }
        saveArray()
    }
}
