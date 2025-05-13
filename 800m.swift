import SwiftUI

struct m800: View {
    @State var inputText: String = ""
    @AppStorage("doubleArray") var arrayStorage: String = ""
    @State var doubles: [Double] = []
    @State var dates: [Date] = []
    @State var currentDate = Date()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    var sortedEntries: [(time: Double, date: Date, originalIndex: Int)] {
        return doubles.indices.map { i in
            (time: doubles[i], date: dates[i], originalIndex: i)
        }
        .sorted { $0.time < $1.time }
    }
    
    var body: some View {
        VStack {
            List {
                ForEach(sortedEntries, id: \.originalIndex) { entry in
                    HStack {
                        Text("\(entry.time, specifier: "%.2f") seconds")
                        Spacer()
                        Text(formattedDate(entry.date))
                            .font(.caption)
                    }
                }
                .onDelete(perform: deleteItemsSorted)
            }
            
            HStack {
                TextField("Enter your time", text: $inputText)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button("Add Number") {
                    if let number = Double(inputText) {
                        doubles.append(number)
                        dates.append(currentDate)
                        saveArray()
                        inputText = ""
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
        let combined = zip(doubles, dates).map { "\($0)|\($1.timeIntervalSince1970)" }
        arrayStorage = combined.joined(separator: ",")
    }
    
    func loadArray() {
        let entries = arrayStorage.split(separator: ",")
        doubles = []
        dates = []
        for entry in entries {
            let parts = entry.split(separator: "|")
            if parts.count == 2,
               let value = Double(parts[0]),
               let timestamp = TimeInterval(parts[1]) {
                doubles.append(value)
                dates.append(Date(timeIntervalSince1970: timestamp))
            }
        }
    }

    
    func deleteItemsSorted(at offsets: IndexSet) {
        let indicesToDelete = offsets.map { sortedEntries[$0].originalIndex }
        for index in indicesToDelete.sorted(by: >) {
            doubles.remove(at: index)
            dates.remove(at: index)
        }
        saveArray()
    }
}
