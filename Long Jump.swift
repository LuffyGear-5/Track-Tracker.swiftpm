import SwiftUI



struct LongJump: View {
    @State private var inputText: String = ""
    @State private var numbers: [Double] = []
    @State private var inputText2: String = ""
    @State private var numbers2: [Double] = []
    var body: some View {
        VStack {
            HStack{
                List {
                    ForEach(sortedNumbers, id: \.self) { number in
                        Text("\(number, specifier: "%.2f")m")
                    }
                    
                }
                List {
                    ForEach(sortedNumbers2, id: \.self) { number in
                        Text("\(number, specifier: "%.2f")Ft")
                    }
                    
                }
            }

            HStack{
                TextField("Enter your distance in meters", text: $inputText)
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
        return numbers.sorted(by: >)
    }
    var sortedNumbers2 : [Double]{
        return numbers2.sorted(by: >)
    }

    func addNumber() {
        if let number = Double(inputText) {
            numbers.append(number)
            inputText = ""
            let number1 = number * 3.28084
            numbers2.append(number1)
            inputText2 = ""
        }
    }
}
