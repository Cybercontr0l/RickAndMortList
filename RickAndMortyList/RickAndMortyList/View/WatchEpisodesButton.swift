import SwiftUI

struct WatchEpisodesButton: View {
    let characterName: String

    var body: some View {
        Button(action: {
            print("Watch episodes for \(characterName)")
        }) {
            HStack {
                Image("Polygon")
                Text("Watch episodes")
                    .font(Font.custom("SF UI Text", size: 14))
                    .foregroundColor(Color(hex: "#FF6B00"))
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 10)
            .background(Color(hex: "#FF6B00").opacity(0.1))
            .cornerRadius(17)
        }
        .padding(.bottom, 10)
    }
}
