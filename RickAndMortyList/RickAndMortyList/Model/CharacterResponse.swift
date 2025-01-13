import Foundation

// MARK: - CharacterResponse Model
struct CharacterResponse: Codable {
    let info: Info // Информация о страницах
    let results: [Character] // Список персонажей
}
