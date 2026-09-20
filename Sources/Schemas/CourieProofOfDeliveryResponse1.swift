import Foundation

public struct CourieProofOfDeliveryResponse1: Codable, Hashable, Sendable {
    public let signedBy: String?
    public let timestamp: String?
    public let type: String?
    public let url: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        signedBy: String? = nil,
        timestamp: String? = nil,
        type: String? = nil,
        url: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.signedBy = signedBy
        self.timestamp = timestamp
        self.type = type
        self.url = url
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.signedBy = try container.decodeIfPresent(String.self, forKey: .signedBy)
        self.timestamp = try container.decodeIfPresent(String.self, forKey: .timestamp)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.signedBy, forKey: .signedBy)
        try container.encodeIfPresent(self.timestamp, forKey: .timestamp)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.url, forKey: .url)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case signedBy
        case timestamp
        case type
        case url
    }
}