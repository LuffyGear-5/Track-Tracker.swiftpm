import SwiftUI

struct HighJump: View {
    @State private var inputText: String = ""
    @State private var numbers: [String] = []
    
    var body: some View {
        VStack {
            List {
                ForEach(Array(numbers.enumerated()), id: \.element) { index, number in
                    Text(number)
                }
                .onDelete(perform: deleteNumber)
            }
            
            HStack {
                TextField("Enter your height in feet and in'", text: $inputText)
                
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
        
        numbers.append(inputText)
        inputText = ""
        
    }
    
    func deleteNumber(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}
#Preview {
    HighJump()
}
