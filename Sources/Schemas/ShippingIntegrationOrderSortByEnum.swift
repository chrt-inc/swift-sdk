import Foundation

public enum ShippingIntegrationOrderSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case orderedAtTimestamp = "ordered_at_timestamp"
    case mirroredAtTimestamp = "mirrored_at_timestamp"
    case createdAtTimestamp = "created_at_timestamp"
    case updatedAtTimestamp = "updated_at_timestamp"
    case status
}