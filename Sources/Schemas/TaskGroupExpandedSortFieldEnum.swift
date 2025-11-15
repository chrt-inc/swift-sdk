import Foundation

/// Fields available for sorting task group expanded list results.
public enum TaskGroupExpandedSortFieldEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case stagedAtTimestamp = "staged_at_timestamp"
    case inProgressAtTimestamp = "in_progress_at_timestamp"
    case completedAtTimestamp = "completed_at_timestamp"
}