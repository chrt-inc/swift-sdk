import Foundation

/// [CONFIG] PIMA address assigned during CHAMP onboarding.
public struct CargojsonParticipantAddress: Codable, Hashable, Sendable {
    public let type: CargojsonParticipantAddressType?
    public let address: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        type: CargojsonParticipantAddressType? = nil,
        address: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.type = type
        self.address = address
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decodeIfPresent(CargojsonParticipantAddressType.self, forKey: .type)
        self.address = try container.decode(String.self, forKey: .address)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encode(self.address, forKey: .address)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case address
    }
}