import Foundation

public struct AtlasOrderTypeaheadValue: Codable, Hashable, Sendable {
    public let atlasOrderIds: [String]
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        atlasOrderIds: [String],
        value: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.atlasOrderIds = atlasOrderIds
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.atlasOrderIds = try container.decode([String].self, forKey: .atlasOrderIds)
        self.value = try container.decode(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.atlasOrderIds, forKey: .atlasOrderIds)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case atlasOrderIds = "atlas_order_ids"
        case value
    }
}