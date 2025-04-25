import SwiftUI


struct m100: View {
    @State var time : [String] = []
    @State var text3 = ""
    var body: some View {
        VStack{
            List(time,id: \.self){ times in
                Text(times)
            }
            HStack{
                TextField("Enter time", text: $text3)
                    .textFieldStyle(.roundedBorder)
                Button{
                    time.append(text3)
                    text3 = ""
                } label: {
                    Image(systemName: "plus.circle")
                }
            }
        }
    }
}
