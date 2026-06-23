import Foundation

public struct AlertRuleEnvelope: Codable, Hashable, Sendable {
    public let nameValues: AlertNameValues?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        nameValues: AlertNameValues? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.nameValues = nameValues
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nameValues = try container.decodeIfPresent(AlertNameValues.self, forKey: .nameValues)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.nameValues, forKey: .nameValues)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case nameValues
    }
}