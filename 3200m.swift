import SwiftUI



struct m3200: View {
    @State var text10 = ""
    var body: some View {
        TextField("Add your time", text: $text10)
    }
}
