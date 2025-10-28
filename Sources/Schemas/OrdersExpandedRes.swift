import Foundation

/// Response containing order with expanded data
public struct OrdersExpandedRes: Codable, Hashable, Sendable {
    public let orderExpanded: OrderExpanded
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderExpanded: OrderExpanded,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderExpanded = orderExpanded
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderExpanded = try container.decode(OrderExpanded.self, forKey: .orderExpanded)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orderExpanded, forKey: .orderExpanded)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderExpanded = "order_expanded"
    }
}