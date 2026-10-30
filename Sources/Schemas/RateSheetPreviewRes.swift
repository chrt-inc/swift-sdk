import Foundation

public struct RateSheetPreviewRes: Codable, Hashable, Sendable {
    public let lineItems: [OrderBillingEstimateLineItem1]?
    public let orderId: String
    public let taskGroupIds: [String]?
    public let unpricedReasons: [UnpricedReason1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        lineItems: [OrderBillingEstimateLineItem1]? = nil,
        orderId: String,
        taskGroupIds: [String]? = nil,
        unpricedReasons: [UnpricedReason1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.lineItems = lineItems
        self.orderId = orderId
        self.taskGroupIds = taskGroupIds
        self.unpricedReasons = unpricedReasons
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lineItems = try container.decodeIfPresent([OrderBillingEstimateLineItem1].self, forKey: .lineItems)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.taskGroupIds = try container.decodeIfPresent([String].self, forKey: .taskGroupIds)
        self.unpricedReasons = try container.decodeIfPresent([UnpricedReason1].self, forKey: .unpricedReasons)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.lineItems, forKey: .lineItems)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.taskGroupIds, forKey: .taskGroupIds)
        try container.encodeIfPresent(self.unpricedReasons, forKey: .unpricedReasons)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case lineItems = "line_items"
        case orderId = "order_id"
        case taskGroupIds = "task_group_ids"
        case unpricedReasons = "unpriced_reasons"
    }
}