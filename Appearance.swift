import SwiftUI


struct Appearance: View {
    @State var red: Double = 0.35
    @State var green: Double = 0.76
    @State var blue: Double = 0.96
    @Binding var customColor: Color
    @Binding var alertColor: Color
    
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .fill(customColor)
                .frame(width: 200, height: 100)
                .border(Color.gray, width: 4)
            
            Rectangle()
                .fill(alertColor)
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
        Button{
            reset()
        }label:{
            Text("Reset")
                .foregroundStyle(alertColor)
        }
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
    func reset() {
        customColor = Color(red: 0.35, green: 0.76, blue: 0.96)
        alertColor = .black
    }

}


