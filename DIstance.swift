import SwiftUI


struct DistanceView: View {
    @State var text1 = ""
    @State var Distance : [String] = ["800m", "1600m", "3200m", "4x800m", "4x1500m"]
    @Binding var customColor : Color
    var body: some View {
        ZStack{
            VStack{
                
                Button("800m") {
                   
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                Button("1600m") {
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                Button("3200m") {
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                Button("4x800m") {
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                Button("4x1600m") {
                    
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


