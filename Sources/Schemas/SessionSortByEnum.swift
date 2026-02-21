import Foundation

public enum SessionSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAtTimestamp = "created_at_timestamp"
    case terminationScheduledForTimestamp = "termination_scheduled_for_timestamp"
    case terminatedAtTimestamp = "terminated_at_timestamp"
}