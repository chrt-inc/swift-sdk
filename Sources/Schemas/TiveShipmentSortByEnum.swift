import Foundation

public enum TiveShipmentSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case chrtCreatedAtTimestamp = "chrt_created_at_timestamp"
    case chrtUpdatedAtTimestamp = "chrt_updated_at_timestamp"
}