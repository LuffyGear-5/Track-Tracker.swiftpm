import SwiftUI

struct ContentView: View {
    @State var Field = ""
    @State var Distance = ""
    @State var SprintJumps = ""
//    @State var orientation = UIDevice.current.orientation
    @State var alertColor : Color
    @State var customColor: Color = Color(red: 0.35, green: 0.76, blue: 0.96)
    @State var red: Double
    @State var green: Double
    @State var blue: Double
    
    
    
    
    var body: some View {
//        Text("\(orientation)")
        HStack{
            Spacer()
            NavigationLink {
                Appearance(red: $red, green: $green, blue: $blue, customColor: $customColor, alertColor: $alertColor)
            } label: {
                Image(systemName: "paintbrush.fill")
                    .foregroundStyle(.white)
            }
        }
        VStack{
            TabView{
                FieldView(customColor: $customColor, alertColor: $alertColor)
                    .tabItem{
                        Label("Field",
                              systemImage:"f.square")
                    }
                
                SprintView(customColor: $customColor, alertColor: $alertColor)
                    .tabItem{
                        Label("Sprint",
                              systemImage:"s.square")
                    }
                
                DistanceView(customColor: $customColor, alertColor: $alertColor)
                    .tabItem{
                        Label("Distance",
                              systemImage:"d.square")
                    }
                
                
            }
            .accentColor(.white)
            
            
        }
        .navigationBarBackButtonHidden(true)
        
    }
}
