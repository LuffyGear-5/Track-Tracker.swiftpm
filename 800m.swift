import SwiftUI


struct m800: View {
    @State private var inputText: String = ""
    @AppStorage("doubleArray") var arrayStorage: String = "[]"
    @State private var doubles: [Double] = []

    var body: some View {
        VStack {
            List {
                ForEach(doubles.indices, id: \.self) { i in
                    Text("\(doubles[i], specifier: "%.2f") seconds")
                }
                .onDelete(perform: deleteItems)
            }

            HStack {
                TextField("Enter your time", text: $inputText)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button("Add Number") {
                    if let number = Double(inputText) {
                        doubles.append(number)
                        saveArray()
                        inputText = ""
                    }
                }
            }
        }
        .onAppear {
            loadArray()
        }
    }

    private func saveArray() {
        if let encoded = try? JSONEncoder().encode(doubles),
           let jsonString = String(data: encoded, encoding: .utf8) {
            arrayStorage = jsonString
        }
    }

    private func loadArray() {
        if let data = arrayStorage.data(using: .utf8),
           let decoded = try? JSONDecoder().decode([Double].self, from: data) {
            doubles = decoded
        }
    }

    private func deleteItems(at offsets: IndexSet) {
        doubles.remove(atOffsets: offsets)
        saveArray()
    }
}
