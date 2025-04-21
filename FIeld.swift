import SwiftUI


struct FieldView: View {
    @State var text2 = ""
    var body: some View {
        ZStack{
            List {
                
            }
            
            
            TextField("", text: $text2)
                .textFieldStyle(.roundedBorder)
                .border(.orange)
        }
    }
}
