import Foundation

/// [CUSTOMER] Other participant involved in the movement of the consignment.
public struct CargojsonOtherParticipant: Codable, Hashable, Sendable {
    public let name: String
    public let officeMessageAddress: CargojsonOfficeMessageAddress?
    public let fileReference: String?
    public let participantIdentification: CargojsonParticipantIdentifier?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        officeMessageAddress: CargojsonOfficeMessageAddress? = nil,
        fileReference: String? = nil,
        participantIdentification: CargojsonParticipantIdentifier? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.officeMessageAddress = officeMessageAddress
        self.fileReference = fileReference
        self.participantIdentification = participantIdentification
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.officeMessageAddress = try container.decodeIfPresent(CargojsonOfficeMessageAddress.self, forKey: .officeMessageAddress)
        self.fileReference = try container.decodeIfPresent(String.self, forKey: .fileReference)
        self.participantIdentification = try container.decodeIfPresent(CargojsonParticipantIdentifier.self, forKey: .participantIdentification)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.officeMessageAddress, forKey: .officeMessageAddress)
        try container.encodeIfPresent(self.fileReference, forKey: .fileReference)
        try container.encodeIfPresent(self.participantIdentification, forKey: .participantIdentification)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case officeMessageAddress
        case fileReference
        case participantIdentification
    }
}