import SwiftUI


struct SprintView: View {
    @State var text3 = ""
    var body: some View {
        ZStack{
            List {
                
            }
            
            
            TextField("", text: $text3)
                .textFieldStyle(.roundedBorder)
                .border(.orange)
        }
        
        

        
    }
}

