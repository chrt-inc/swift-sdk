import Foundation

public enum StatusType: String, Codable, Hashable, CaseIterable, Sendable {
    case succeeded
    case failed
    case noMatchingCharges = "no_matching_charges"
}