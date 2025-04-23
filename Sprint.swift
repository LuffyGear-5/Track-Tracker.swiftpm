import SwiftUI


struct SprintView: View {
    @State var text3 = ""
    @Binding var customColor : Color
    var body: some View {
        ZStack{
            VStack{
                
                Button("100m") {
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                Button("200m") {
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                Button("400m") {
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                Button("110m Hurdles") {
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                Button("300m Hurdles") {
                    
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

