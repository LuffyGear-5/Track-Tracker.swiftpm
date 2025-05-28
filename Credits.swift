import SwiftUI

struct AppCreatorsView: View {
    
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("App Creators")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.blue)
                
                
                
                
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                    .shadow(radius: 2)
                    .padding(.horizontal)
            }
            
        }
    }
}

#Preview {
    AppCreatorsView()
}


