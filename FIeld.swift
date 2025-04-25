import SwiftUI


struct FieldView: View {
    @State var text2 = ""
    @State var Field : [String] = ["Discus", "Shotput", "Long Jump", "Triple Jump", "High Jump"]
    @Binding var customColor : Color
    var body: some View {
        ZStack{
            VStack{
                
                NavigationLink(destination: {
                    Discus()
                }, label: {
                    Text("Discus")
                        .frame(width: 400, height: 70)
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    Shotput()
                }, label: {
                    Text("Shotput")
                        .frame(width: 400, height: 70)
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    LongJump()
                }, label: {
                    Text("Long Jump")
                        .frame(width: 400, height: 70)
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    TripleJump()
                }, label: {
                    Text("Triple Jump")
                        .frame(width: 400, height: 70)
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
                NavigationLink(destination: {
                    HighJump()
                }, label: {
                    Text("High Jump")
                        .frame(width: 400, height: 70)
                })
                .padding()
                .foregroundStyle(.black)
                .font(.system(size: 60))
            }
            .background(customColor)
        }
    }
}
