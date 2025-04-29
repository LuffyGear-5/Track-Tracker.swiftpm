import SwiftUI



struct HighJump: View {
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
                TextField("Enter your Distance", text: $inputText)
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
