import SwiftUI

struct MonochromeModifier: ViewModifier {
    let isDead: Bool

    func body(content: Content) -> some View {
        if isDead {
            content
                .saturation(0)
                .brightness(0)
        } else {
            content
        }
    }
}
