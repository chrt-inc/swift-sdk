import Foundation

public enum IataCassOfficeSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case createdAtTimestamp = "created_at_timestamp"
    case name
}