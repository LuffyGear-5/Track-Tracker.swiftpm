import SwiftUI


struct SprintView: View {
    @State var text3 = ""
    @Binding var customColor : Color
    var body: some View {
        ZStack{
            VStack{
                
                NavigationStack{
                    
                    NavigationLink("100m", destination: m100())
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationStack{
                    
                    NavigationLink("200m", destination: m200())
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationStack{
                    
                    NavigationLink("400m", destination: m400())
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationStack{
                    
                    NavigationLink("110m Hurdles", destination: Hurdles110m())
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationStack{
                    
                    NavigationLink("300m Hurdles", destination: Hurdles300m())
                    
                }
                .padding()
                .frame(width: 400, height: 100)
                .foregroundStyle(.black)
                .font(.system(size: 60))
                
                
                
            }
            .background(customColor)
        }
        
        
    }
}

