import Foundation

public enum ShippingIntegrationOrderSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case orderedAtTimestamp = "ordered_at_timestamp"
    case lastMirroredAtTimestamp = "last_mirrored_at_timestamp"
    case firstMirroredAtTimestamp = "first_mirrored_at_timestamp"
    case status
}