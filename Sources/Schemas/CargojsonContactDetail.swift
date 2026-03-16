import Foundation

/// [CUSTOMER] Contact details (phone, fax, email).
/// contactIdentifier: TE=telephone, FX=fax, EM=email.
public struct CargojsonContactDetail: Codable, Hashable, Sendable {
    public let contactIdentifier: String
    public let contactNumber: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contactIdentifier: String,
        contactNumber: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contactIdentifier = contactIdentifier
        self.contactNumber = contactNumber
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contactIdentifier = try container.decode(String.self, forKey: .contactIdentifier)
        self.contactNumber = try container.decode(String.self, forKey: .contactNumber)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.contactIdentifier, forKey: .contactIdentifier)
        try container.encode(self.contactNumber, forKey: .contactNumber)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contactIdentifier
        case contactNumber
    }
}