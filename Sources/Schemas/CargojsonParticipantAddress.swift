import Foundation

/// [CONFIG] PIMA address assigned during CHAMP onboarding.
public struct CargojsonParticipantAddress: Codable, Hashable, Sendable {
    public let address: String
    public let type: CargojsonParticipantAddressType?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        address: String,
        type: CargojsonParticipantAddressType? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.address = address
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.address = try container.decode(String.self, forKey: .address)
        self.type = try container.decodeIfPresent(CargojsonParticipantAddressType.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.address, forKey: .address)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case type
    }
}