import SwiftUI


struct FieldView: View {
    @State var text2 = ""
    @State var Field : [String] = ["Discus", "Shotput", "Long Jump", "Triple Jump", "High Jump"]
    @State private var move = false
    @Binding var customColor : Color
    @Binding var alertColor : Color
    var body: some View {
        ZStack{
            VStack{
                
                NavigationLink(destination: {
                    Discus()
                }, label: {
                    Text("Discus")
                        .foregroundStyle(alertColor)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .offset(x: move ? 200 : 0)
                        .animation(.easeInOut(duration: 4), value: move)
                        .font(.custom("copperplate", size: 60))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    Shotput()
                }, label: {
                    Text("Shotput")
                        .foregroundStyle(alertColor)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .offset(x: move ? 200 : 0)
                        .animation(.easeInOut(duration: 4), value: move)
                        .font(.custom("copperplate", size: 60))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    LongJump()
                }, label: {
                    Text("Long Jump")
                        .foregroundStyle(alertColor)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .offset(x: move ? 200 : 0)
                        .animation(.easeInOut(duration: 4), value: move)
                        .font(.custom("copperplate", size: 60))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    TripleJump()
                }, label: {
                    Text("Triple Jump")
                        .foregroundStyle(alertColor)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .offset(x: move ? 200 : 0)
                        .animation(.easeInOut(duration: 4), value: move)
                        .font(.custom("copperplate", size: 60))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    HighJump()
                }, label: {
                    Text("High Jump")
                        .foregroundStyle(alertColor)
                        .frame(width: 400, height: 80)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                        .offset(x: move ? 200 : 0)
                        .animation(.easeInOut(duration: 4), value: move)
                        .font(.custom("copperplate", size: 60))
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}
