import SwiftUI

struct SetupView: View {
    
    @Binding var alertColor : Color
    var body: some View {
        NavigationStack {
            VStack {
                NavigationStack{
                    NavigationLink("Go to ContentView", destination: ContentView( alertColor: $alertColor))
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                    
                    
                }

            }
        }
       
    }
}


