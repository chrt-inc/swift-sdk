import Foundation

public struct OrderInternalMessageThreadListItem: Codable, Hashable, Sendable {
    public let lastMessage: OrderInternalMessageWithSenderName
    public let messageCount: Int
    public let orderId: String
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let orderOffChrtReferenceId: String?
    public let orderShortId: String
    public let orderStatus: OrderStatusEnum1
    public let unreadCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        lastMessage: OrderInternalMessageWithSenderName,
        messageCount: Int,
        orderId: String,
        orderOffChrtReferenceId: String? = nil,
        orderShortId: String,
        orderStatus: OrderStatusEnum1,
        unreadCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.lastMessage = lastMessage
        self.messageCount = messageCount
        self.orderId = orderId
        self.orderOffChrtReferenceId = orderOffChrtReferenceId
        self.orderShortId = orderShortId
        self.orderStatus = orderStatus
        self.unreadCount = unreadCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lastMessage = try container.decode(OrderInternalMessageWithSenderName.self, forKey: .lastMessage)
        self.messageCount = try container.decode(Int.self, forKey: .messageCount)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderOffChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .orderOffChrtReferenceId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.orderStatus = try container.decode(OrderStatusEnum1.self, forKey: .orderStatus)
        self.unreadCount = try container.decode(Int.self, forKey: .unreadCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.lastMessage, forKey: .lastMessage)
        try container.encode(self.messageCount, forKey: .messageCount)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderOffChrtReferenceId, forKey: .orderOffChrtReferenceId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.orderStatus, forKey: .orderStatus)
        try container.encode(self.unreadCount, forKey: .unreadCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case lastMessage = "last_message"
        case messageCount = "message_count"
        case orderId = "order_id"
        case orderOffChrtReferenceId = "order_off_chrt_reference_id"
        case orderShortId = "order_short_id"
        case orderStatus = "order_status"
        case unreadCount = "unread_count"
    }
}