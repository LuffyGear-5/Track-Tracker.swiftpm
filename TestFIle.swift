//import SwiftUI
//
//struct TestFIle: View {
//    @State private var name = ""
//    @State private var athlete: Athlete?
//
//    var body: some View {
//        VStack {
//            TextField("Enter athlete name", text: $name)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .padding()
//
//            Button("Fetch Data") {
//                fetchAthlete(name: name) { result in
//                    self.athlete = result
//                }
//            }
//
//            if let athlete = athlete {
//                Text("Results for \(athlete.name)")
//                    .font(.headline)
//
//                List(athlete.performances, id: \.event) { perf in
//                    VStack(alignment: .leading) {
//                        Text(perf.event).bold()
//                        Text("Time: \(perf.time)")
//                        Text("Meet: \(perf.meet)")
//                    }
//                }
//            }
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    TestFIle()
//}
