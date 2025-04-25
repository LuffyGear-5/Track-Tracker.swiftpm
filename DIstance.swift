import SwiftUI


struct DistanceView: View {
    @State var text1 = ""
    @State var Distance : [String] = ["800m", "1600m", "3200m", "4x800m", "4x1500m"]
    @Binding var customColor : Color
    var body: some View {
        ZStack{
            VStack{
                
                NavigationStack{
                    
                    NavigationLink("800m", destination: m800())
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                NavigationStack{
                    
                    NavigationLink("1600m", destination: m1600())
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                NavigationStack{
                    
                    NavigationLink("3200m", destination: m3200())
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                NavigationStack{
                    
                    NavigationLink("4x800m", destination: m4x800())
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.largeTitle)
                NavigationStack{
                    
                    NavigationLink("4x1600", destination: m4x1600())
                    
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


