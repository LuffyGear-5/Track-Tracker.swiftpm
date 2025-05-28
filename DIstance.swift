import SwiftUI


struct DistanceView: View {
    @State var text1 = ""
    @State var links : [String] = ["800m", "1600m", "3200m", "4x800m", "4x1500m"]
    @Binding var customColor : Color
    @Binding var alertColor: Color
    @State private var animate = false
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
                    //                    NavigationLink(destination: {
                    //                        m800()
                    //                    }, label: {
                    //                        Text("800m")
                    //
                    //                            .foregroundStyle(alertColor)
                    //                            .frame(width: 400, height: 80)
                    //                            .background(customColor)
                    //                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    //
                    //                        .font(.custom("copperplate", size: 60))                })
                    //                    .padding()
                    //                    .foregroundStyle(.black)
                    //                    .font(.system(size: 60))
                    //                    NavigationLink(destination: {
                    //                        m1600()
                    //                    }, label: {
                    //                        Text("1600m")
                    //                            .foregroundStyle(alertColor)
                    //                            .frame(width: 400, height: 80)
                    //                            .background(customColor)
                    //                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    //
                    //                            .font(.custom("copperplate", size: 60))
                    //                    })
                    //                    .padding()
                    //                    .foregroundStyle(alertColor)
                    //                    .font(.system(size: 60))
                    //                    NavigationLink(destination: {
                    //                        m3200()
                    //                    }, label: {
                    //                        Text("3200m")
                    //                            .foregroundStyle(alertColor)
                    //                            .frame(width: 400, height: 80)
                    //                            .background(customColor)
                    //                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    //
                    //                            .font(.custom("copperplate", size: 60))
                    //                    })
                    //                    .padding()
                    //                    .foregroundStyle(.black)
                    //                    .font(.system(size: 60))
                    //                    NavigationLink(destination: {
                    //                        m4x800()
                    //                    }, label: {
                    //                        Text("4x800m")
                    //                            .foregroundStyle(alertColor)
                    //                            .frame(width: 400, height: 80)
                    //                            .background(customColor)
                    //                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    //
                    //                            .font(.custom("copperplate", size: 60))
                    //                    })
                    //                    .padding()
                    //                    .foregroundStyle(alertColor)
                    //                    .font(.system(size: 60))
                    //                    NavigationLink(destination: {
                    //                        m4x1600()
                    //                    }, label: {
                    //                        Text("4x1600m")
                    //                            .foregroundStyle(alertColor)
                    //                            .frame(width: 400, height: 80)
                    //                            .background(customColor)
                    //                            .clipShape(RoundedRectangle(cornerRadius: 10.0))
                    //
                    //                            .font(.custom("copperplate", size: 60))
                    //                    })
                    //                    .padding()
                    //                    .foregroundStyle(.black)
                    //                    .font(.system(size: 60))
                    //
                    //                }
                    
                    
                    
                }
            }
            .padding()
            .onAppear {
                animate = true
            }
            .onDisappear {
                animate = false
            }
        }
    }
}

#Preview {
    @State var customColor: Color = .blue
    @State var alertColor: Color = .red
    DistanceView(customColor: $customColor, alertColor: $alertColor)
}
