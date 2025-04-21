import SwiftUI


struct SprintView: View {
    @State var text3 = ""
    @State var Sprint : [String] = ["100m", "200m", "400m", "110m Hurdles", "300m Hurdles", ]
    var body: some View {
        ZStack{
            VStack{
                List(Sprint, id: \.self) {Events in
                    Text(Events)
                    
                }
                
                HStack{
                    TextField("", text: $text3)
                        .textFieldStyle(.roundedBorder)
                        .border(.orange)
                    
                    Button("Add") {
                        
                    }
                }
            }
        }

        
    }
}

