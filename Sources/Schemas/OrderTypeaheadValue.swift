import Foundation

public struct OrderTypeaheadValue: Codable, Hashable, Sendable {
    public let value: String
    public let orderIds: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        value: String,
        orderIds: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.value = value
        self.orderIds = orderIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.value = try container.decode(String.self, forKey: .value)
        self.orderIds = try container.decode([String].self, forKey: .orderIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.value, forKey: .value)
        try container.encode(self.orderIds, forKey: .orderIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case value
        case orderIds = "order_ids"
    }
}