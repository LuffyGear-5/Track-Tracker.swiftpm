import SwiftUI

struct Shotput: View {
    @State private var inputText: String = ""
    @State private var numbers: [Double] = []
    @State private var numbers2: [Double] = []

    var body: some View {
        VStack {
            HStack {
                List {
                    ForEach(Array(numbers.enumerated()), id: \.offset) { index, number in
                        Text("\(number, specifier: "%.2f")m")
                    }
                    .onDelete(perform: deleteItems)
                }

                List {
                    ForEach(Array(numbers2.enumerated()), id: \.offset) { index, number in
                        Text("\(number, specifier: "%.2f")Ft")
                    }
                    .onDelete(perform: deleteItems)
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
    }

    func addNumber() {
        if let number = Double(inputText) {
            numbers.append(number)
            numbers2.append(number * 3.28084)
            inputText = ""
        }
    }

    func deleteItems(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
        numbers2.remove(atOffsets: offsets)
    }
}
#Preview {
    Shotput()
}