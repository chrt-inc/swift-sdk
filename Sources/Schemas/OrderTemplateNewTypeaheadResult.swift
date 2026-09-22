import Foundation

public struct OrderTemplateNewTypeaheadResult: Codable, Hashable, Sendable {
    public let type: OrderTemplateNewTypeaheadFieldEnum
    public let values: [OrderTemplateNewTypeaheadValue]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        type: OrderTemplateNewTypeaheadFieldEnum,
        values: [OrderTemplateNewTypeaheadValue],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.type = type
        self.values = values
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(OrderTemplateNewTypeaheadFieldEnum.self, forKey: .type)
        self.values = try container.decode([OrderTemplateNewTypeaheadValue].self, forKey: .values)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.values, forKey: .values)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case values
    }
}