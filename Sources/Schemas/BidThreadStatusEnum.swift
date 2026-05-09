import Foundation

public enum BidThreadStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case open
    case accepted
    case denied
    case withdrawn
}