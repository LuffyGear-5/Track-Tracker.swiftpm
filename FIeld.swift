import SwiftUI


struct FieldView: View {
    @State var text2 = ""
    @State var Field : [String] = ["Discus", "Shotput", "Long Jump", "Triple Jump", "High Jump"]
    var body: some View {
        ZStack{
            VStack{
                
                Button("Discus") {
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .background(.orange)
                .foregroundStyle(.black)
                .font(.largeTitle)
                Button("Shotput") {
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .background(.orange)
                .foregroundStyle(.black)
                .font(.largeTitle)
                Button("Long Jump") {
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .background(.orange)
                .foregroundStyle(.black)
                .font(.largeTitle)
                Button("Triple Jump") {
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .background(.orange)
                .foregroundStyle(.black)
                .font(.largeTitle)
                Button("High Jump") {
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .background(.orange)
                .foregroundStyle(.black)
                .font(.largeTitle)
            }
        }
    }
}
