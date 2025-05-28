import SwiftUI
import UIKit

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
    @Binding var customColor: Color
    @State var red: Double
    @State var green: Double
    @State var blue: Double
    var body: some View {
        NavigationStack{
            VStack{
                
                Text("Selected Device: \(deviceModel) ")
                    .padding(20)
                Menu{
                    Button{
                        deviceModel = "iPhone"
                        deviceModelDisplay = "iPhone"
                        deviceModelState = ""
                        question = "Which Model?"
                        decisionColor2 = .white
                    }label:{
                        Text("iPhone")
                    }
                    Button{
                        deviceModel = "iPad"
                        deviceModelDisplay = "iPad"
                        deviceModelNumbered = ""
                        deviceModelState = ""
                        question = "Which Model?"
                        decisionColor2 = .white
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
            }
        }
        
        
        VStack(spacing: 20) {
            Rectangle()
                .fill(customColor)
                .frame(width: 200, height: 100)
                .border(Color.gray, width: 4)
            
            Text("Red: \(red, specifier: "%.2f")")
            Slider(value: $red, in: 0...1)
            
            Text("Green: \(green, specifier: "%.2f")")
            Slider(value: $green, in: 0...1)
            
            Text("Blue: \(blue, specifier: "%.2f")")
            Slider(value: $blue, in: 0...1)
        }
        .padding()
        .onChange(of: red) { _ in updateColor() }
        .onChange(of: green) { _ in updateColor() }
        .onChange(of: blue) { _ in updateColor() }
       Text("This Can Be Changed Later")
        NavigationLink("Finish Set Up ->", destination: ContentView(alertColor: .black, customColor: customColor, red: red, green: green, blue: blue))
            .foregroundStyle(.black)
            .frame(width: 200, height: 25)
            .background(decisionColor2)
            .clipShape(RoundedRectangle(cornerRadius: 5.0))
    }
    
    func updateColor() {
        customColor = Color(red: red, green: green, blue: blue)
        
        if red > 0.1 || green > 0.1 || blue > 0.1 {
            alertColor = .black
        }
        if red < 0.3 || green < 0.3 || blue < 0.3 {
            alertColor = .white
        }
    }
    
    
}

