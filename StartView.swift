import SwiftUI

struct StartView: View {
    @State var customColor: Color = Color(red: 1.0, green: 0.0, blue: 1.0)
    var body: some View {
        NavigationStack{
               
            
            Image("Logo")
                .resizable()
                .scaledToFit()
            
            Spacer()
            NavigationLink(destination: ContentView()) {
                ZStack{
                    Text("Begin!")
                        .foregroundStyle(.black)
                        .frame(width: 110, height: 60)
                        .background(customColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
            
                        .font(.custom("Verdana", size: 20))
                    
                        
                       
                }
            }
            Spacer()
        }
    }
}
