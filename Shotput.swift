import SwiftUI

struct Shotput: View {
    @State private var inputText: String = ""
    @State private var numbers: [Double] = []
    @State private var numbers2: [Double] = []

    private let metersKey = "SavedMeters2"
    private let feetKey = "SavedFeet2"

    var body: some View {
        VStack {
            HStack {
                List {
                    ForEach(Array(numbers.enumerated()), id: \.element) { index, number in
                        Text("\(number, specifier: "%.2f")m")
                    }
                    .onDelete(perform: deleteNumber)
                }

                List {
                    ForEach(Array(numbers2.enumerated()), id: \.element) { index, number in
                        Text("\(number, specifier: "%.2f")Ft")
                    }
                    .onDelete(perform: deleteNumber2)
                }
            }

            HStack {
                TextField("Enter your distance in meters", text: $inputText)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button(action: addNumber) {
                    Text("Add")
                        .padding(.horizontal)
                }
            }
        }
        .onAppear(perform: loadData)
    }

    func addNumber() {
        if let number = Double(inputText) {
            numbers.append(number)
            numbers2.append(number * 3.28084)
            inputText = ""
            saveData()
        }
    }

    func deleteNumber(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
        numbers2.remove(atOffsets: offsets)
        saveData()
    }

    func deleteNumber2(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
        numbers2.remove(atOffsets: offsets)
        saveData()
    }

    func saveData() {
        UserDefaults.standard.set(numbers, forKey: metersKey)
        UserDefaults.standard.set(numbers2, forKey: feetKey)
    }

    func loadData() {
        numbers = UserDefaults.standard.array(forKey: metersKey) as? [Double] ?? []
        numbers2 = UserDefaults.standard.array(forKey: feetKey) as? [Double] ?? []
    }
}

#Preview {
    Discus()
}
