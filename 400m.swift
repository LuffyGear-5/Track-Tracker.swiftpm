import SwiftUI

struct m400: View {
    @State private var inputText: String = ""
    @AppStorage("doubleArray") var arrayStorage: String = ""
    @State private var doubles: [Double] = []
    @State private var dates: [Date] = []
    @State private var currentDate = Date()
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            ForEach(doubles.indices, id: \.self) { i in
                HStack {
                    Text("\(doubles[i], specifier: "%.2f") seconds")
                    Text(formattedDate(dates[i]))
                        .font(.caption)
                        .padding()
                }
            }
            .onDelete(perform: deleteItems)
            
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
        // Convert to a string format (e.g., JSON)
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
    
    func deleteItems(at offsets: IndexSet) {
        doubles.remove(atOffsets: offsets)
        dates.remove(atOffsets: offsets)
        saveArray()
    }
}
