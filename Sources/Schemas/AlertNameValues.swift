import Foundation

public struct AlertNameValues: Codable, Hashable, Sendable {
    public let nameValue: [AlertNameValue]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        nameValue: [AlertNameValue]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.nameValue = nameValue
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nameValue = try container.decodeIfPresent([AlertNameValue].self, forKey: .nameValue)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.nameValue, forKey: .nameValue)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case nameValue
    }
}