import SwiftUI

struct AppCreatorsView: View {
    
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("App Creators")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.blue)
                
                HStack{
                    Image("AadiShah")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.blue)
                        .clipShape(Circle())
                    Text("Aadi Shah: Lead Coder")
                        .font(.headline)
                        .foregroundColor(.black)
                    
                }
                HStack{
                    Image("DominicGalan")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.blue)
                        .clipShape(Circle())
                    Text("Dominic Galan: Co-Lead Coder")
                        .font(.headline)
                        .foregroundColor(.black)
                    
                }
                HStack{
                    Image("MatthewBarton")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.blue)
                        .clipShape(Circle())
                    Text("Matthew Barton: Designer")
                        .font(.headline)
                        .foregroundColor(.black)
                    
                }
                HStack{
                    Image("DmytroShumyk")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.blue)
                        .clipShape(Circle())
                    Text("Dmytro Shumyk: Designer")
                        .font(.headline)
                        .foregroundColor(.black)
                    
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

#Preview {
    AppCreatorsView()
}


