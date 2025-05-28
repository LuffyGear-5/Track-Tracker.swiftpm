import SwiftUI

struct AppCreatorsView: View {
    let creators = ["Aadi Shah", "Dominic Galan", "Dmytro Shumyk", "Matthew Barton"]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("App Creators")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.blue)
                
                ForEach(creators, id: \..self) { name in
                    HStack {
                        Image(systemName: "person.fill")
                            .foregroundColor(.white)
                            .padding(10)
                            .background(Color.blue)
                            .clipShape(Circle())
                        
                        Text(name)
                            .font(.title2)
                            .foregroundStyle(.primary)
                        
                        Spacer()
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(12)
                    .shadow(radius: 2)
                    .padding(.horizontal)
                }
                
            }
        }
    }
}
#Preview {
    AppCreatorsView()
}


