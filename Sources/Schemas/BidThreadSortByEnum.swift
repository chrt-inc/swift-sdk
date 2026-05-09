import Foundation

public enum BidThreadSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAtTimestamp = "created_at_timestamp"
    case statusChangedAtTimestamp = "status_changed_at_timestamp"
}