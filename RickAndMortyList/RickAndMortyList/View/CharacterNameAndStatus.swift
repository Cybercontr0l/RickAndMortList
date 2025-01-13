import SwiftUI

struct CharacterNameAndStatus: View {
    let name: String
    let status: String
    
    var body: some View {
        HStack {
            Text(name)
                .font(Font.custom("SF UI Text", size: 21))
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                .padding(.top, 4) 
            Spacer()
            StatusView(status: status)
        }
    }
}
