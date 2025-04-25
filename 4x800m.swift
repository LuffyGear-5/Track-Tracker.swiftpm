import SwiftUI


struct m4x800: View {
    @State var text1 = ""
    var body: some View {
        TextField("Add your time", text: $text1)
    }
}
