import Foundation

public enum UnitsEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case usd
    case usdCents = "usd_cents"
}