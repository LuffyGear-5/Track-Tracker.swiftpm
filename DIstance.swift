import SwiftUI


struct DistanceView: View {
    @State var text1 = ""
    @State var Distance : [String] = ["800m", "1600m", "3200m", "4x800m", "4x1500m"]
    @Binding var customColor : Color
    var body: some View {
        ZStack{
            VStack{
                
                NavigationLink(destination: {
                    m800()
                }, label: {
                    Text("800m")
                        
                        .frame(width: 400, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    m1600()
                }, label: {
                    Text("1600m")
                        .frame(width: 400, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    m3200()
                }, label: {
                    Text("3200m")
                        .frame(width: 400, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    m4x800()
                }, label: {
                    Text("4x800m")
                        .frame(width: 400, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    m4x1600()
                }, label: {
                    Text("4x1600m")
                        .frame(width: 400, height: 70)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                
            }
            .background(customColor)
            
            
        }
    }
    
}


