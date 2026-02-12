import Foundation

public enum DeviceSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case registeredAtTimestamp = "registered_at_timestamp"
    case lastSeenAtTimestamp = "last_seen_at_timestamp"
    case firstSeenAtTimestamp = "first_seen_at_timestamp"
}