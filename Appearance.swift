import SwiftUI

struct Appearance: View {
    @Binding var customColor: Color
    var body: some View {
        
        ColorPicker("Pick a color", selection: $customColor)
            .fixedSize()
    }
}

//#Preview {
//    Appearance()
//}
