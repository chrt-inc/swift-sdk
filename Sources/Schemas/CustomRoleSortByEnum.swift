import Foundation

public enum CustomRoleSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case name
    case createdAtTimestamp = "created_at_timestamp"
}