import Foundation

public struct OnTime360OrderTypeaheadValue: Codable, Hashable, Sendable {
    public let ontime360OrderIds: [String]
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ontime360OrderIds: [String],
        value: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ontime360OrderIds = ontime360OrderIds
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ontime360OrderIds = try container.decode([String].self, forKey: .ontime360OrderIds)
        self.value = try container.decode(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.ontime360OrderIds, forKey: .ontime360OrderIds)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ontime360OrderIds = "ontime360_order_ids"
        case value
    }
}