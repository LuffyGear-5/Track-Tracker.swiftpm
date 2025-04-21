import SwiftUI


struct DistanceView: View {
    @State var text1 = ""
    @State var Distance : [String] = ["800m", "1600m", "3200m", "4x800m", "4x1500m"]
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


