import SwiftUI


struct FieldView: View {
    @State var text2 = ""
    @State var Field : [String] = ["Discus", "Shotput", "Long Jump", "Triple Jump", "High Jump"]
    var body: some View {
        ZStack{
            VStack{
                List(Field, id: \.self) { Events in
                    Text(Events)
                    
                }
                HStack{
                    
                    TextField("", text: $text2)
                        .textFieldStyle(.roundedBorder)
                        .border(.orange)
                    
                    Button("Add") {
                        
                    }
                }
            }
        }
    }
}
