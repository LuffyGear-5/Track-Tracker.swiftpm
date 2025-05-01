import SwiftUI

struct ContentView: View {
    @State var Field = ""
    @State var Distance = ""
    @State var SprintJumps = ""
    @Binding var customColor : Color
    @Binding var alertColor : Color
    
    
    var body: some View {
        HStack{
            Spacer()
            NavigationLink {
                Appearance(customColor: $customColor, alertColor: $alertColor)
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
                
                SprintView(customColor: $customColor)
                    .tabItem{
                        Label("Sprint",
                              systemImage:"s.square")
                    }
                
                DistanceView(customColor: $customColor)
                    .tabItem{
                        Label("Distance",
                              systemImage:"d.square")
                    }
                
                
            }
            .accentColor(.white)
            
            
        }
    }
}
