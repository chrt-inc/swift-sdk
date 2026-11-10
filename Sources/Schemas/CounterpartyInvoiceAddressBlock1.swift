import Foundation

public struct CounterpartyInvoiceAddressBlock1: Codable, Hashable, Sendable {
    public let emailAddress: String?
    public let legalName: String?
    public let mailingAddress: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        emailAddress: String? = nil,
        legalName: String? = nil,
        mailingAddress: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.emailAddress = emailAddress
        self.legalName = legalName
        self.mailingAddress = mailingAddress
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.emailAddress = try container.decodeIfPresent(String.self, forKey: .emailAddress)
        self.legalName = try container.decodeIfPresent(String.self, forKey: .legalName)
        self.mailingAddress = try container.decodeIfPresent(String.self, forKey: .mailingAddress)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.legalName, forKey: .legalName)
        try container.encodeIfPresent(self.mailingAddress, forKey: .mailingAddress)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case emailAddress = "email_address"
        case legalName = "legal_name"
        case mailingAddress = "mailing_address"
    }
}