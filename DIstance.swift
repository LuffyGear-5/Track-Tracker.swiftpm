import SwiftUI


struct DistanceView: View {
    @State var text1 = ""
    @State var Distance : [String] = ["800", "1600", "3200", "4x800", "4x1500"]
    var body: some View {
        ZStack{
            VStack{
                List(Distance, id: \.self) { Events in
                    Text(Events)
                    
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


