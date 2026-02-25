import SwiftUI

struct Athlete: Codable {
    let name: String
    let performances: [Performance]
}

struct Performance: Codable {
    let event: String
    let time: String
    let meet: String
    let sixseven: String
}
