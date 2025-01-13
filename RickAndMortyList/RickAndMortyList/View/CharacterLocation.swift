import SwiftUI

struct CharacterLocation: View {
    let locationName: String
    
    var body: some View {
        HStack {
            Image("Vector")
                .foregroundColor(.secondary)
                .padding(.bottom, 4)
            Text(locationName)
                .font(Font.custom("SF UI Text", size: 14))
                .foregroundColor(Color(hex: "#525252"))
                .lineLimit(1)
                .minimumScaleFactor(0.0)
                .padding(.bottom, 4)
        }
    }
}
