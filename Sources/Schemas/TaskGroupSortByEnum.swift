import Foundation

public enum TaskGroupSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case draftStartedAtTimestamp = "draft_started_at_timestamp"
    case stagedAtTimestamp = "staged_at_timestamp"
    case inProgressAtTimestamp = "in_progress_at_timestamp"
    case completedAtTimestamp = "completed_at_timestamp"
    case skippedAtTimestamp = "skipped_at_timestamp"
    case exceptionAtTimestamp = "exception_at_timestamp"
}