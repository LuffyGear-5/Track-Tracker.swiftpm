import SwiftUI

struct SetupView: View {
    @State var deviceModel = ""
    @State var deviceModelNumbered = ""
    @State var deviceModelState = ""
    @State var deviceModelDisplay = ""
    @State var question = ""
    @State var decisionColor: Color = .black
    
    var body: some View {
        VStack{
            
            Text("Current Device: \(deviceModel) \(deviceModelNumbered)\(deviceModelState)")
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
            TextField("Leave empty if you're on iPad", text: $deviceModelNumbered)
                .keyboardType(.numberPad)
                .frame(width: 300, height: 20)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .padding(20)
           
            Menu{
                Button{
                    deviceModelState = "Air"
                   
                }label:{
                    Text("Air (iPad)")
                }
                Button{
                    deviceModelState = "Pro"
                    
                }label:{
                    Text("Pro")
                }
            }label:{
                Text(question)
                    .foregroundStyle(.black)
                    .frame(width: 130, height: 25)
                    .background(decisionColor)
                    .clipShape(RoundedRectangle(cornerRadius: 5.0))
                    
            }
            Spacer()
            
            
            
            
         
        }
    }
}


