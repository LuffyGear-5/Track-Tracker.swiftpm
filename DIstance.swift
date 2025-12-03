import SwiftUI


struct DistanceView: View {
    @State var text2 = ""
    @State var Field : [String] = ["800m", "Shotput", "Long Jump", "Triple Jump", "High Jump"]
    @State private var move = false
    @Binding var customColor : Color
    @Binding var alertColor : Color
    var body: some View {
        ZStack{
            VStack{

                NavigationLink(destination: {
                    m800()
                }, label: {
                    Text("800m")
                        .foregroundStyle(alertColor)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .offset(x: move ? 200 : 0)
                        .animation(.easeInOut(duration: 4), value: move)
                        .font(.custom("copperplate", size: 40))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    m1600()
                }, label: {
                    Text("1600m")
                        .foregroundStyle(alertColor)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .offset(x: move ? 200 : 0)
                        .animation(.easeInOut(duration: 4), value: move)
                        .font(.custom("copperplate", size: 40))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    m3200()
                }, label: {
                    Text("3200m")
                        .foregroundStyle(alertColor)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .offset(x: move ? 200 : 0)
                        .animation(.easeInOut(duration: 4), value: move)
                        .font(.custom("copperplate", size: 40))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    m4x800()
                }, label: {
                    Text("4x800m")
                        .foregroundStyle(alertColor)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .offset(x: move ? 200 : 0)
                        .animation(.easeInOut(duration: 4), value: move)
                        .font(.custom("copperplate", size: 40))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    m4x1600()
                }, label: {
                    Text("4x1600m")
                        .foregroundStyle(alertColor)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .offset(x: move ? 200 : 0)
                        .animation(.easeInOut(duration: 4), value: move)
                        .font(.custom("copperplate", size: 40))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
        .padding()
        .onAppear {
            animate = true
        }
        .onDisappear {
            animate = false
        }
    }
}


//#Preview {
//    @State var customColor: Color = .blue
//    @State var alertColor: Color = .red
//    DistanceView(customColor: $customColor, alertColor: $alertColor)
//}
