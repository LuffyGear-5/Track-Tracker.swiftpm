import SwiftUI

struct HighJump: View {
    @State private var inputText: String = ""
    @State private var numbers: [String] = [] {
        didSet {
            saveNumbers()
        }
    }
    
    private let numbersKey = "SavedHighJumpNumbers"
    
    var body: some View {
        VStack {
            List {
                ForEach(Array(numbers.enumerated()), id: \.element) { index, number in
                    Text(number)
                }
                .onDelete(perform: deleteNumber)
            }
            
            HStack {
                TextField("Enter your height in feet and inches", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action: addNumber) {
                    Text("Add")
                        .padding(.horizontal)
                }
            }
        }
        .onAppear(perform: loadNumbers)
    }
    
    func addNumber() {
        guard !inputText.isEmpty else { return }
        numbers.append(inputText)
        inputText = ""
    }
    
    func deleteNumber(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
    
    func saveNumbers() {
        UserDefaults.standard.set(numbers, forKey: numbersKey)
    }
    
    func loadNumbers() {
        if let savedNumbers = UserDefaults.standard.stringArray(forKey: numbersKey) {
            numbers = savedNumbers
        }
    }
}

#Preview {
    HighJump()
}
