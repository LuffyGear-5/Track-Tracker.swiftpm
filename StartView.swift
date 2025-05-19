import SwiftUI

struct StartView: View{
    @Binding var alertColor: Color
    @State var selectedView: AnyView = AnyView(BlankView())
    @State var customColor2: Color = .red
    @State var devicePrompt = false
    var body: some View {
        NavigationStack{
            
            
            Image("NewLogo")
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            NavigationLink("Begin!", destination: ContentView( alertColor: $alertColor))
                .foregroundStyle(.black)
                .frame(width: 110, height: 60)
                .background(customColor2)
                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                .font(.custom("Verdana", size: 20))
            //            Button{
            //                devicePrompt = true
            //
            //            }label:{
            //
            //                ZStack{
            //                    Text("Begin!")
            //                        .foregroundStyle(.black)
            //                        .frame(width: 110, height: 60)
            //                        .background(customColor2)
            //                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
            //
            //                        .font(.custom("Verdana", size: 20))
            //                }
            //
            //
            //            }
            Spacer()
            //            .alert("Are you ready to set up your app?", isPresented: $devicePrompt) {
            //                NavigationLink("Let's Do It!", destination: SetupView(alertColor: $alertColor))
            //                    } message: {
            //                        Text("")
            //                    }
            //                .alert("Are you ready to set up your app?", isPresented: $devicePrompt) {
            //                    NavigationLink("Let's Do It!", destination: SetupView(alertColor: $alertColor))
            //                } message: {
            //                    Text("")
            //                }
            
        }
    }
    
}


