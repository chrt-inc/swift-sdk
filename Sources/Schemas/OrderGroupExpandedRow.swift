import Foundation

public struct OrderGroupExpandedRow: Codable, Hashable, Sendable {
    public let orderGroup: OrderGroup1
    public let orders: [Order1]
    public let shippingStatus: OrderStatusEnum1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderGroup: OrderGroup1,
        orders: [Order1],
        shippingStatus: OrderStatusEnum1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderGroup = orderGroup
        self.orders = orders
        self.shippingStatus = shippingStatus
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderGroup = try container.decode(OrderGroup1.self, forKey: .orderGroup)
        self.orders = try container.decode([Order1].self, forKey: .orders)
        self.shippingStatus = try container.decodeIfPresent(OrderStatusEnum1.self, forKey: .shippingStatus)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orderGroup, forKey: .orderGroup)
        try container.encode(self.orders, forKey: .orders)
        try container.encodeIfPresent(self.shippingStatus, forKey: .shippingStatus)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderGroup = "order_group"
        case orders
        case shippingStatus = "shipping_status"
    }
}