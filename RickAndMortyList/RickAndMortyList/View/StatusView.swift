import SwiftUI

// MARK: - StatusView
struct StatusView: View {
    let status: String

    var body: some View {
        Text(status.uppercased())
            .font(Font.custom("SF UI Text", size: 14))
            .bold()
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(statusColor)
            .foregroundColor(textColor)
            .cornerRadius(25)
    }

    // MARK: - Status Colors
    private var statusColor: Color {
        switch status {
        case "Alive": return Color(hex: "#C7FFB9")
        case "Dead": return Color(hex: "#FFE8E0")
        default: return Color(hex: "#EEEEEE")
        }
    }

    private var textColor: Color {
        switch status {
        case "Alive": return Color(hex: "#319F16")
        case "Dead": return Color(hex: "#E93800")
        default: return Color(hex: "#A0A0A0")
        }
    }
}
