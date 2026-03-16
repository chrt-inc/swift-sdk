import Foundation

/// [CONFIG] Optional EDIFACT envelope data for legacy compatibility.
public struct CargojsonEdifactData: Codable, Hashable, Sendable {
    public let messageReference: String?
    public let interchangeControlReference: String?
    public let commonAccessReference: String?
    public let password: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        messageReference: String? = nil,
        interchangeControlReference: String? = nil,
        commonAccessReference: String? = nil,
        password: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.messageReference = messageReference
        self.interchangeControlReference = interchangeControlReference
        self.commonAccessReference = commonAccessReference
        self.password = password
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.messageReference = try container.decodeIfPresent(String.self, forKey: .messageReference)
        self.interchangeControlReference = try container.decodeIfPresent(String.self, forKey: .interchangeControlReference)
        self.commonAccessReference = try container.decodeIfPresent(String.self, forKey: .commonAccessReference)
        self.password = try container.decodeIfPresent(String.self, forKey: .password)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.messageReference, forKey: .messageReference)
        try container.encodeIfPresent(self.interchangeControlReference, forKey: .interchangeControlReference)
        try container.encodeIfPresent(self.commonAccessReference, forKey: .commonAccessReference)
        try container.encodeIfPresent(self.password, forKey: .password)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case messageReference
        case interchangeControlReference
        case commonAccessReference
        case password
    }
}