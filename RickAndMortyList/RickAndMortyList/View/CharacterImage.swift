import SwiftUI

struct CharacterImage: View {
    let imageUrl: String
    let status: String
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .modifier(MonochromeModifier(isDead: status == "Dead"))
        } placeholder: {
            ProgressView()
                .frame(width: 120, height: 120)
        }
    }
}
