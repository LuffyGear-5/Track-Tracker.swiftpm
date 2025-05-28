//import SwiftUI
//
//func fetchAthlete(name: String, completion: @escaping (Athlete?) -> Void) {
//    let urlStr = "https://your-replit-url.repl.co/api/athlete?name=\(name.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")"
//    guard let url = URL(string: urlStr) else {
//        completion(nil)
//        return
//    }
//
//    URLSession.shared.dataTask(with: url) { data, _, _ in
//        guard let data = data else {
//            completion(nil)
//            return
//        }
//
//        let athlete = try? JSONDecoder().decode(Athlete.self, from: data)
//        DispatchQueue.main.async {
//            completion(athlete)
//        }
//    }.resume()
//}

