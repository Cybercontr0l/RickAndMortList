import Foundation

// MARK: - Info Model
struct Info: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
