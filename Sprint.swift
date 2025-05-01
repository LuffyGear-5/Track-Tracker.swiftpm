import SwiftUI


struct SprintView: View {
    @State var text3 = ""
    @Binding var customColor : Color
    var body: some View {
        ZStack{
            VStack{
                
                NavigationLink(destination: {
                    m100()
                }, label: {
                    Text("100m")
                        .foregroundStyle(.black)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
                        .font(.custom("Verdana", size: 55))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    m200()
                }, label: {
                    Text("200m")
                        .foregroundStyle(.black)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
                        .font(.custom("Verdana", size: 55))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    m400()
                }, label: {
                    Text("400m")
                        .foregroundStyle(.black)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
                        .font(.custom("Verdana", size: 55))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    Hurdles110m()
                }, label: {
                    Text("110m Hurdles")
                        .foregroundStyle(.black)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
                        .font(.custom("Verdana", size: 55))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    Hurdles300m()
                }, label: {
                    Text("300m Hurdles")
                        .foregroundStyle(.black)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
                        .font(.custom("Verdana", size: 55))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                
                
                
            }
//            .background(customColor)
        }
        
        
    }
}

