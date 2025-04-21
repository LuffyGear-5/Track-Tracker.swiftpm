import SwiftUI


struct DistanceView: View {
    @State var text1 = ""
    var body: some View {
        ZStack{
            List {
                
            }
            
            
            TextField("", text: $text1)
                .textFieldStyle(.roundedBorder)
                .border(.orange)
        }
    }
    
}


