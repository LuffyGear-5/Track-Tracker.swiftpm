import SwiftUI

struct Appearance: View {
    @State var customColor: Color
    var body: some View {
        Button{
            customColor = Color(red:1.0,green:0.5,blue: 0.9)
        }label:{
            Text("Magenta")
                .frame(width: 110, height: 50)
                .background(customColor)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        ColorPicker("Pick a color", selection: $customColor)
    }
}

//#Preview {
//    Appearance()
//}
