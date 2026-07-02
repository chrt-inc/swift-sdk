import Foundation

public enum OrderTemplateSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAtTimestamp = "created_at_timestamp"
    case lastEditedAtTimestamp = "last_edited_at_timestamp"
    case lastUsedAtTimestamp = "last_used_at_timestamp"
    case name
    case offChrtReferenceIdStr = "off_chrt_reference_id_str"
}