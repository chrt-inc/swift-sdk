import Foundation

public enum OrderTemplateNewSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAtTimestamp = "created_at_timestamp"
    case lastEditedAtTimestamp = "last_edited_at_timestamp"
    case lastUsedAtTimestamp = "last_used_at_timestamp"
    case name
}