import SwiftUI


struct SprintView: View {
    @State var text3 = ""
    @Binding var customColor : Color
    @Binding var alertColor: Color
    @State private var animate = false
    @State var links : [String] = ["100m", "200m", "400m", "110m Hurdles", "300m Hurdles"]
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    ForEach(links.indices, id: \.self) { index in
                        NavigationLink(destination: Text("\(links[index]) Detail View")) {
                            Text(links[index])
                                .padding()
                                .cornerRadius(10)
                                .opacity(animate ? 1 : 0)
                                .offset(x: animate ? 0 : -100)
                                .foregroundStyle(alertColor)
                                .frame(width: 400, height: 80)
                                .background(customColor)
                                .clipShape(RoundedRectangle(cornerRadius: 10.0))
                            
                                .font(.custom("copperplate", size: 40))
                                .animation(
                                    .easeOut.delay(Double(index) * 0.1),
                                    value: animate
                                )
                        }
                    }
                    
                    .padding()
                    .foregroundStyle(.black)
                    .onAppear {
                        animate = true
                    }
                    .onDisappear {
                        animate = false
                    }
                    
                    
                    
                }
                //            .background(customColor)
            }
            
            
        }
    }
    
}
