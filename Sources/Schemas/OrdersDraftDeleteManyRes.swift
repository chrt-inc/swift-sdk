import Foundation

public struct OrdersDraftDeleteManyRes: Codable, Hashable, Sendable {
    public let deletedOrderIds: [String]
    public let orderIdsSkippedDueToBillingLinks: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        deletedOrderIds: [String],
        orderIdsSkippedDueToBillingLinks: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.deletedOrderIds = deletedOrderIds
        self.orderIdsSkippedDueToBillingLinks = orderIdsSkippedDueToBillingLinks
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.deletedOrderIds = try container.decode([String].self, forKey: .deletedOrderIds)
        self.orderIdsSkippedDueToBillingLinks = try container.decode([String].self, forKey: .orderIdsSkippedDueToBillingLinks)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.deletedOrderIds, forKey: .deletedOrderIds)
        try container.encode(self.orderIdsSkippedDueToBillingLinks, forKey: .orderIdsSkippedDueToBillingLinks)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case deletedOrderIds = "deleted_order_ids"
        case orderIdsSkippedDueToBillingLinks = "order_ids_skipped_due_to_billing_links"
    }
}