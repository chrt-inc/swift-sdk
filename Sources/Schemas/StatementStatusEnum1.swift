import Foundation

public enum StatementStatusEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case staged
    case open
    case paid
    case uncollectible
    case void
}