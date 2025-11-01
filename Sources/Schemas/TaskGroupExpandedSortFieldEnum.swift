import Foundation

/// Fields available for sorting task group expanded list results.
public enum TaskGroupExpandedSortFieldEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAt = "created_at"
    case startedAt = "started_at"
    case completedAt = "completed_at"
}