import Foundation

public struct CounterpartyInvoiceRecipient1: Codable, Hashable, Sendable {
    public let emailAddress: String
    public let name: String?
    public let role: CounterpartyInvoiceRecipientRoleEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        emailAddress: String,
        name: String? = nil,
        role: CounterpartyInvoiceRecipientRoleEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.emailAddress = emailAddress
        self.name = name
        self.role = role
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.emailAddress = try container.decode(String.self, forKey: .emailAddress)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.role = try container.decode(CounterpartyInvoiceRecipientRoleEnum1.self, forKey: .role)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.emailAddress, forKey: .emailAddress)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encode(self.role, forKey: .role)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case emailAddress = "email_address"
        case name
        case role
    }
}