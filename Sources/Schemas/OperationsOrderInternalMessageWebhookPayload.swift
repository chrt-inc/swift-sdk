import Foundation

public struct OperationsOrderInternalMessageWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: OperationsOrderInternalMessagesMessage?
    /// The message that was added
    public let message: OrderInternalMessage1
    /// The order associated with the notes
    public let orderId: String
    /// The order internal messages document the message was added to
    public let orderInternalMessagesId: String
    /// The org that owns these notes
    public let orgId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: OperationsOrderInternalMessagesMessage? = nil,
        message: OrderInternalMessage1,
        orderId: String,
        orderInternalMessagesId: String,
        orgId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.message = message
        self.orderId = orderId
        self.orderInternalMessagesId = orderInternalMessagesId
        self.orgId = orgId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(OperationsOrderInternalMessagesMessage.self, forKey: .eventType)
        self.message = try container.decode(OrderInternalMessage1.self, forKey: .message)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderInternalMessagesId = try container.decode(String.self, forKey: .orderInternalMessagesId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.message, forKey: .message)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderInternalMessagesId, forKey: .orderInternalMessagesId)
        try container.encode(self.orgId, forKey: .orgId)
    }

    public enum OperationsOrderInternalMessagesMessage: String, Codable, Hashable, CaseIterable, Sendable {
        case operationsOrderInternalMessagesMessage = "operations.order_internal_messages.message"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case message
        case orderId = "order_id"
        case orderInternalMessagesId = "order_internal_messages_id"
        case orgId = "org_id"
    }
}