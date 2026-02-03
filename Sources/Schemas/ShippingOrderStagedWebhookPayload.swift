import Foundation

public struct ShippingOrderStagedWebhookPayload: Codable, Hashable, Sendable {
    public let eventType: ShippingOrderStaged?
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    /// The order that was staged
    public let order: Order1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventType: ShippingOrderStaged? = nil,
        eventTimestamp: Date,
        order: Order1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventType = eventType
        self.eventTimestamp = eventTimestamp
        self.order = order
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventType = try container.decodeIfPresent(ShippingOrderStaged.self, forKey: .eventType)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.order = try container.decode(Order1.self, forKey: .order)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encode(self.order, forKey: .order)
    }

    public enum ShippingOrderStaged: String, Codable, Hashable, CaseIterable, Sendable {
        case shippingOrderStaged = "shipping.order.staged"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventType = "event_type"
        case eventTimestamp = "event_timestamp"
        case order
    }
}