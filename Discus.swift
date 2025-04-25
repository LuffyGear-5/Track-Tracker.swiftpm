import SwiftUI


struct Discus: View {
    @State var text11 = ""
    var body: some View {
        TextField("Add your distance", text: $text11)
    }
}
