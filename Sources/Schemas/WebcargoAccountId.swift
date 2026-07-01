import Foundation

public struct WebcargoAccountId: Codable, Hashable, Sendable {
    public let idSource: String?
    public let value: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        idSource: String? = nil,
        value: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.idSource = idSource
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.idSource = try container.decodeIfPresent(String.self, forKey: .idSource)
        self.value = try container.decodeIfPresent(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.idSource, forKey: .idSource)
        try container.encodeIfPresent(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case idSource = "id_source"
        case value
    }
}