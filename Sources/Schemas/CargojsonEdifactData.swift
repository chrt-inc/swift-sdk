import Foundation

/// [CONFIG] Optional EDIFACT envelope data for legacy compatibility.
public struct CargojsonEdifactData: Codable, Hashable, Sendable {
    public let commonAccessReference: String?
    public let interchangeControlReference: String?
    public let messageReference: String?
    public let password: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        commonAccessReference: String? = nil,
        interchangeControlReference: String? = nil,
        messageReference: String? = nil,
        password: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.commonAccessReference = commonAccessReference
        self.interchangeControlReference = interchangeControlReference
        self.messageReference = messageReference
        self.password = password
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.commonAccessReference = try container.decodeIfPresent(String.self, forKey: .commonAccessReference)
        self.interchangeControlReference = try container.decodeIfPresent(String.self, forKey: .interchangeControlReference)
        self.messageReference = try container.decodeIfPresent(String.self, forKey: .messageReference)
        self.password = try container.decodeIfPresent(String.self, forKey: .password)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.commonAccessReference, forKey: .commonAccessReference)
        try container.encodeIfPresent(self.interchangeControlReference, forKey: .interchangeControlReference)
        try container.encodeIfPresent(self.messageReference, forKey: .messageReference)
        try container.encodeIfPresent(self.password, forKey: .password)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case commonAccessReference
        case interchangeControlReference
        case messageReference
        case password
    }
}