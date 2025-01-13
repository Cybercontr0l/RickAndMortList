import Foundation

// MARK: - Character Model
struct Character: Identifiable, Codable, Equatable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let image: String
    let location: Location
}
