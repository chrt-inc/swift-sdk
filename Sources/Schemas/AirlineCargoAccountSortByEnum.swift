import Foundation

public enum AirlineCargoAccountSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAtTimestamp = "created_at_timestamp"
    case name
}