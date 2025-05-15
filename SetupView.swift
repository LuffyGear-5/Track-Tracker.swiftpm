import SwiftUI

struct SetupView: View {
    @State var deviceModel = ""
    @State var deviceModelNumbered = ""
    @State var deviceModelState = ""
    @State var deviceModelDisplay = ""
    @State var question = ""
    @State var decisionColor: Color = .black
    @State var deviceModelState2 = ""
    var body: some View {
        VStack{
            
            Text("Current Device: \(deviceModel) \(deviceModelNumbered) \(deviceModelState)")
                .padding(50)
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
            Text(deviceModelDisplay)
            .padding(20)
           
            Menu{
                Button{
                    
                }label:{
                    HStack{
                        Text("Portrait")
                        Image(systemName: "rectangle.portrait")
                    }
                }
                Button{
                    
                }label:{
                    HStack{
                        Text("Portrait")
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
            Text("Orientation Selected: ")
            
            
            
            
         
        }
       
    }
}
#Preview {
    SetupView()
}

