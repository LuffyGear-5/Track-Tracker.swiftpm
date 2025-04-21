import SwiftUI


struct DistanceView: View {
    @State var text1 = ""
    var body: some View {
        ZStack{
            VStack{
                List {
                    
                }
                
                HStack{
                    TextField("", text: $text1)
                        .textFieldStyle(.roundedBorder)
                        .border(.orange)
                    
                    Button("Add") {
                    }
                }
                
                
            }
            
        }
    }
    
}


