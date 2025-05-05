import SwiftUI

struct ContentView: View {
    @State var Field = ""
    @State var Distance = ""
    @State var SprintJumps = ""
//    @State var orientation = UIDevice.current.orientation
    @Binding var customColor : Color
    var body: some View {
//        Text("\(orientation)")
        HStack{
            Spacer()
            NavigationLink {
                Appearance(customColor: $customColor)
            } label: {
                Image(systemName: "paintbrush.fill")
                    .foregroundStyle(customColor)
            }
        }
        VStack{
            TabView{
                FieldView(customColor: $customColor)
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
            .accentColor(customColor)
            .foregroundStyle(.orange)
            
        }
    }
}
