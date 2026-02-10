import Foundation

public enum SessionSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case sessionCreatedAtTimestamp = "session_created_at_timestamp"
    case recordingInitiatedAtTimestamp = "recording_initiated_at_timestamp"
}