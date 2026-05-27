import Foundation

public enum ChecklistSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAtTimestamp = "created_at_timestamp"
    case updatedAtTimestamp = "updated_at_timestamp"
    case name
}