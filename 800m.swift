import SwiftUI


struct m800: View {
    @State private var inputText: String = ""
    @AppStorage("doubleArray") var arrayStorage : String = "[]"
    var body: some View {
        VStack {
            let doubles = try? JSONDecoder().decode([Double].self, from: arrayStorage.data(using: .utf8)!)
            List(doubles!.indices,id: \.self) { i in
                Text("\(doubles![Int(i)], specifier: "%.2f") seconds")
            }
            
            HStack{
                TextField("Enter your time", text: $inputText)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button("Add Number"){
                    if let number = Double(inputText) {
                        var currentArray = try? JSONDecoder().decode([Double].self, from: arrayStorage.data(using: .utf8)!)
                        currentArray!.append(number)
                        if let encoded = try? JSONEncoder().encode(currentArray!), let jsonString = String(data: encoded, encoding: .utf8) {
                            arrayStorage = jsonString
                        }
                        inputText = ""
                    }
                }
            }
        }
    }
}
