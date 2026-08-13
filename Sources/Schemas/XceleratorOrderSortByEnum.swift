import Foundation

public enum XceleratorOrderSortByEnum: String, Codable, Hashable, CaseIterable, Sendable {
    case mirroredAtTimestamp = "mirrored_at_timestamp"
    case createdAtTimestamp = "created_at_timestamp"
    case updatedAtTimestamp = "updated_at_timestamp"
    case integrationOrderId = "integration_order_id"
}