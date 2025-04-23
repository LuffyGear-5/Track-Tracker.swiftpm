import SwiftUI

struct Appearance: View {
    @State var customColor: Color
    var body: some View {
        
        ColorPicker("Pick a color", selection: $customColor)
            .fixedSize()
    }
}

//#Preview {
//    Appearance()
//}
