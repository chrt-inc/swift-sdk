import Foundation

public enum ListingStatusEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case open
    case awarded
    case cancelled
}