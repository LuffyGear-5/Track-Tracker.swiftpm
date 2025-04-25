import SwiftUI


struct m4x1600: View {
    @State var text2 = ""
    var body: some View {
        TextField("Add your time", text: $text2)
    }
}
