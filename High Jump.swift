import SwiftUI



struct HighJump: View {
    @State var text12 = ""
    var body: some View {
        TextField("Add your distance", text: $text12)
    }
}
