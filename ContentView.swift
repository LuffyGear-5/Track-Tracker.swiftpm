import SwiftUI

struct ContentView: View {
    @State var Field = ""
    @State var Distance = ""
    @State var SprintJumps = ""
    var body: some View {
        VStack{
            Image("Logo")
                .resizable()
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
            
        }
    }
}
