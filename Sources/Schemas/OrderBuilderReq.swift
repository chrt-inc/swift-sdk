import Foundation

public struct OrderBuilderReq: Codable, Hashable, Sendable {
    public let orderShortId: String
    public let text: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderShortId: String,
        text: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderShortId = orderShortId
        self.text = text
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.text = try container.decode(String.self, forKey: .text)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.text, forKey: .text)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderShortId = "order_short_id"
        case text
    }
}