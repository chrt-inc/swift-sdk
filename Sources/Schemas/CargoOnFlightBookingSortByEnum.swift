import Foundation

public enum CargoOnFlightBookingSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case draftStartedAtTimestamp = "draft_started_at_timestamp"
}