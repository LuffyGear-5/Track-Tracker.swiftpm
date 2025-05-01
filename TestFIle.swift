import SwiftUI


struct TestView: View {
    @StateObject private var viewModel = ListViewModel()
    @State private var newItem = ""

    var body: some View {
        VStack {
            List {
                ForEach(viewModel.items, id: \.self) { item in
                    Text(item)
                }
            }
            HStack {
                TextField("New item", text: $newItem)
                Button("Add") {
                    viewModel.addItem(newItem)
                    newItem = ""
                }
            }.padding()
        }
    }
}

#Preview {
    TestView()
}
