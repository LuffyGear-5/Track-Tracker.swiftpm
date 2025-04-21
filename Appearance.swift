import SwiftUI

struct Appearance: View {
    @State var customColor: Color = Color(red: 1.0, green: 0.0, blue: 1.0)
    var body: some View {
        Button{
            
        }label: {
            Text("Magenta")
                .frame(width: 110, height: 50)
                .background(customColor)
                .foregroundStyle(.black)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

#Preview {
    Appearance()
}
