import SwiftUI

struct StartView: View{
    @State var alertColor: Color
    @State var selectedView: AnyView = AnyView(BlankView())
    @State var customColor2: Color = .red
    @State var devicePrompt = false
    @State var blue: Double
    @State var green: Double
    @State var red: Double
    @State var customColor: Color
    @State private var move = false
    var body: some View {
        NavigationStack{
            
            
            Image("NewLogo")
                .resizable()
                .scaledToFit()
            
            Spacer()
            NavigationLink("Begin!", destination: SetupView(alertColor: $alertColor, customColor: customColor, red: red, green: green, blue: blue))
                .foregroundStyle(.black)
                .frame(width: 110, height: 60)
                .background(customColor2)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .font(.custom("copperplate", size: 30))
                .offset(x: move ? 200 : 0)
                .animation(.easeInOut(duration: 4), value: move)
            Spacer()
        }
    }
}
