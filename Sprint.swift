import SwiftUI


struct SprintView: View {
    @State var text2 = ""
    @State var Field : [String] = ["Discus", "Shotput", "Long Jump", "Triple Jump", "High Jump"]
    @State private var move = false
    @Binding var customColor : Color
    @Binding var alertColor : Color
    var body: some View {
        ZStack{
            VStack{

                NavigationLink(destination: {
                    m100()
                }, label: {
                    Text("100m")
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
                    m200()
                }, label: {
                    Text("200m")
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
                    m400()
                }, label: {
                    Text("400m")
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
                    Hurdles110m()
                }, label: {
                    Text("110m Hurdles")
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
                    Hurdles300m()
                }, label: {
                    Text("300m Hurdles")
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
    }
}
