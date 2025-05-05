import SwiftUI

struct StartView: View {
    @State var customColors: Color = Color(red: 0.35, green: 0.76, blue: 0.96)
    @State var alertColor: Color = .black
    var body: some View {
        NavigationStack{
               
            
            Image("NewLogo")
                .resizable()
                .scaledToFit()
            
            Spacer()
            NavigationLink(destination: ContentView(customColor: $customColors, alertColor: $alertColor)) {
                ZStack{
                    Text("Begin!")
                        .foregroundStyle(.black)
                        .frame(width: 110, height: 60)
                        .background(customColors)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
                        .font(.custom("Verdana", size: 20))
                    
//                    if UIDevice.current.orientation.isLandscape {
//                        print("Device is in landscape mode")
//                    } else if UIDevice.current.orientation.isPortrait {
//                        print("Device is in portrait mode")
//                    }
//                    
                       
                }
            }
            Spacer()
        }
    }
}
