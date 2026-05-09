import Foundation

public enum BidActionEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case submit
    case counter
    case accept
    case deny
    case withdraw
}