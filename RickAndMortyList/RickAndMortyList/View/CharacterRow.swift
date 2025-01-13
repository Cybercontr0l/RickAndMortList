import SwiftUI

// MARK: - CharacterRow
struct CharacterRow: View {
    let character: Character
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            CharacterImage(imageUrl: character.image, status: character.status)
            CharacterInfo(character: character)
        }
        .frame(height: 120)
        .padding()
        .background(Color.white)
    }
}

// MARK: - CharacterInfo
struct CharacterInfo: View {
    let character: Character
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            CharacterNameAndStatus(name: character.name, status: character.status)
            CharacterSpeciesAndGender(species: character.species, gender: character.gender)
            Spacer()
            WatchEpisodesButton(characterName: character.name)
            CharacterLocation(locationName: character.location.name)
        }
        .frame(maxHeight: 120) // Ограничиваем высоту текста
    }
}
