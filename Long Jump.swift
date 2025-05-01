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
                    ForEach(sortedNumbers, id: \.self) { number in
                        Text("\(number, specifier: "%.2f")m")
                    }
                    
                }
            }

            HStack{
                TextField("Enter your distance", text: $inputText)
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
        numbers.sorted(by: >)
    }

    func addNumber() {
        if let number = Double(inputText) {
            numbers.append(number)
            inputText = ""
            numbers2.append(number)
            inputText2 = ""
        }
    }
}
