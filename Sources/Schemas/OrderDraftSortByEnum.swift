import Foundation

public enum OrderDraftSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case draftStartedAtTimestamp = "draft_started_at_timestamp"
}