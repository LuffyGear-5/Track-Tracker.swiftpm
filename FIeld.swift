import SwiftUI


struct FieldView: View {
    @State var text2 = ""
    @State var Field : [String] = ["Discus", "Shotput", "Long Jump", "Triple Jump", "High Jump"]
    @Binding var customColor : Color
    var body: some View {
        ZStack{
            VStack{
                
                NavigationStack{
                    
                    NavigationLink("Discus", destination: Discus())
                    
                }
                
                
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                NavigationStack{
                    
                    NavigationLink("Shotput", destination: Shotput())
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                NavigationStack{
                    
                    NavigationLink("Long Jump", destination: LongJump())
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                NavigationStack{
                    
                    NavigationLink("Triple Jump", destination: TripleJump())
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                NavigationStack{
                    
                    NavigationLink("High Jump", destination: HighJump())
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
            }
            .background(customColor)
        }
    }
}
