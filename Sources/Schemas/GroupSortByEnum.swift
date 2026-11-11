import Foundation

public enum GroupSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case name
    case createdAtTimestamp = "created_at_timestamp"
}