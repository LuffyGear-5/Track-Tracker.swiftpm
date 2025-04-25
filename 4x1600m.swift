import SwiftUI


struct m4x1600: View {
    @State var time : [String] = []
    @State var text1 = ""
    var body: some View {
        VStack{
            List(time,id: \.self){ times in
                Text(times)
            }
            HStack{
                TextField("Enter time", text: $text1)
                    .textFieldStyle(.roundedBorder)
                Button{
                    time.append(text1)
                    text1 = ""
                } label: {
                    Image(systemName: "plus.circle")
                }
            }
        }
    }
}

