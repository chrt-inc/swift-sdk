import Foundation

public struct OrdersExpandedListRes: Codable, Hashable, Sendable {
    public let ordersExpanded: [OrderExpanded]
    public let totalCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ordersExpanded: [OrderExpanded],
        totalCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ordersExpanded = ordersExpanded
        self.totalCount = totalCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ordersExpanded = try container.decode([OrderExpanded].self, forKey: .ordersExpanded)
        self.totalCount = try container.decode(Int.self, forKey: .totalCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.ordersExpanded, forKey: .ordersExpanded)
        try container.encode(self.totalCount, forKey: .totalCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ordersExpanded = "orders_expanded"
        case totalCount = "total_count"
    }
}