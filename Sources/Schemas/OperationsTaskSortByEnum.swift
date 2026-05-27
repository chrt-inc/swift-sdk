import Foundation

public enum OperationsTaskSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case deadlineTimestamp = "deadline_timestamp"
    case completedAtTimestamp = "completed_at_timestamp"
}