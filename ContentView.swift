import SwiftUI

struct ContentView: View {
    @State var Field = ""
    @State var Distance = ""
    @State var SprintJumps = ""
    @Binding var customColor : Color
    var body: some View {
        HStack{
            Spacer()
            NavigationLink {
                Appearance(customColor: customColor)
            } label: {
                Image(systemName: "paintbrush.fill")
            }
        }
        VStack{
            TabView{
                FieldView()
                    .tabItem{
                        Label("Field",
                              systemImage:"f.square")
                    }
                
                SprintView()
                    .tabItem{
                        Label("Sprint",
                              systemImage:"s.square")
                    }
                
                DistanceView()
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
