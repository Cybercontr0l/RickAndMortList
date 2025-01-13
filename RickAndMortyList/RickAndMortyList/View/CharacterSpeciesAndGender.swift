import SwiftUI

struct CharacterSpeciesAndGender: View {
    let species: String
    let gender: String
    
    var body: some View {
        Text("\(species), \(gender.lowercased())")
            .font(Font.custom("SF UI Text", size: 14))
            .lineLimit(1)
            .minimumScaleFactor(0.0)
    }
}
