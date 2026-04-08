import Foundation

public enum TiveDeviceSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case chrtCreatedAtTimestamp = "chrt_created_at_timestamp"
    case chrtUpdatedAtTimestamp = "chrt_updated_at_timestamp"
}