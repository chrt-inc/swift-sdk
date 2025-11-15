import Foundation

/// Fields available for sorting order expanded list results.
public enum OrderExpandedListSortFieldEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case draftStartedAt = "draft_started_at"
    case shortId = "short_id"
}