import SwiftUI

struct SetupView: View {
    @State var deviceModel = ""
    @State var deviceModelNumbered = ""
    @State var deviceModelState = ""
    @State var deviceModelDisplay = ""
    @State var question = ""
    @State var decisionColor: Color = .black
    @State var deviceModelState2 = ""
    @Binding var alertColor: Color
    @State var decisionColor2: Color = .black
    @State var orientationSelected = ""
    var body: some View {
        NavigationStack{
            VStack{
                
                Text("Selected Device: \(deviceModel) ")
                
                Text("Orientation Selected: \(orientationSelected)")
                    .padding(20)
                Menu{
                    Button{
                        deviceModel = "iPhone"
                        deviceModelDisplay = "iPhone"
                        deviceModelState = ""
                        question = "Which Model?"
                        decisionColor = .white
                    }label:{
                        Text("iPhone")
                    }
                    Button{
                        deviceModel = "iPad"
                        deviceModelDisplay = "iPad"
                        deviceModelNumbered = ""
                        deviceModelState = ""
                        question = "Which Model?"
                        decisionColor = .white
                    }label:{
                        Text("iPad")
                    }
                }label:{
                    Text("What Device Are You Using? ↓" )
                        .foregroundStyle(.black)
                        .frame(width: 250, height: 25)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 5.0))
                    
                }
                .padding(20)
                
                Menu{
                    Button{
                        decisionColor2 = .white
                        orientationSelected = "Portrait"
                    }label:{
                        HStack{
                            Text("Portrait")
                            Image(systemName: "rectangle.portrait")
                        }
                    }
                    Button{
                        decisionColor2 = .white
                        orientationSelected = "Landscape"
                    }label:{
                        HStack{
                            Text("Landscape")
                            Image(systemName: "ipad.gen2.landscape")
                        }
                    }
                }label:{
                    Text("What Orientation Would You Like To Use?")
                        .foregroundStyle(.black)
                        .frame(width: 350, height: 25)
                        .background(decisionColor)
                        .clipShape(RoundedRectangle(cornerRadius: 5.0))
                }
                .padding(20)
                
            }
            NavigationLink("Finish Set Up ->", destination: ContentView(alertColor: $alertColor))
                .foregroundStyle(.black)
                .frame(width: 200, height: 25)
                .background(decisionColor2)
                .clipShape(RoundedRectangle(cornerRadius: 5.0))
            
            
            
         
        }
       
    }
}


