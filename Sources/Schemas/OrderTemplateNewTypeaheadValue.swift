import Foundation

public struct OrderTemplateNewTypeaheadValue: Codable, Hashable, Sendable {
    public let orderTemplateNewIds: [String]
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderTemplateNewIds: [String],
        value: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderTemplateNewIds = orderTemplateNewIds
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderTemplateNewIds = try container.decode([String].self, forKey: .orderTemplateNewIds)
        self.value = try container.decode(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orderTemplateNewIds, forKey: .orderTemplateNewIds)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderTemplateNewIds = "order_template_new_ids"
        case value
    }
}