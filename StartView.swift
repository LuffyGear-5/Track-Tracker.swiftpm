import SwiftUI

struct StartView: View{
    @State var alertColor: Color = .black
    @State var selectedView: AnyView = AnyView(BlankView())
    @State var customColor2: Color = .red
    @State var devicePrompt = false
    var body: some View {
        NavigationStack{
            
            
            Image("NewLogo")
                .resizable()
                .scaledToFit()
            
            Button{
                devicePrompt = true
              
            }label:{
                ZStack{
                    Text("Begin!")
                        .foregroundStyle(.black)
                        .frame(width: 110, height: 60)
                        .background(customColor2)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    
                        .font(.custom("Verdana", size: 20))
                }
                
            }
            .alert("Are you ready to set up your app?", isPresented: $devicePrompt) {
                NavigationLink("Let's Do It!", destination: SetupView())
                    } message: {
                        Text("")
                    }
            
        }
    }
    
}


