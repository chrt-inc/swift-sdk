import Foundation

public struct ChrtGptTextDeltaEvent: Codable, Hashable, Sendable {
    public let delta: String
    /// The assistant message this delta belongs to; a turn can have several.
    public let itemId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        delta: String,
        itemId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.delta = delta
        self.itemId = itemId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.delta = try container.decode(String.self, forKey: .delta)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.delta, forKey: .delta)
        try container.encode(self.itemId, forKey: .itemId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case delta
        case itemId = "item_id"
    }
}