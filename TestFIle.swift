import SwiftUI

struct TestView: View {
    @State private var inputText: String = ""
    @State private var numbers: [Int] = []

    var body: some View {
        VStack {
            HStack {
                TextField("Enter your time", text: $inputText)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button(action: addNumber) {
                    Text("Add")
                        .padding(.horizontal)
                }
            }

            List {
                ForEach(sortedNumbers, id: \.self) { number in
                    Text("\(number)")
                }
            }
        }
    }

    var sortedNumbers: [Int] {
        numbers.sorted(by: <)
    }

    func addNumber() {
        if let number = Int(inputText) {
            numbers.append(number)
            inputText = ""
        }
    }
}

#Preview {
    TestView()
}
