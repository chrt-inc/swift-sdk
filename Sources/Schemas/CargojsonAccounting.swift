import Foundation

/// [CUSTOMER] Accounting information line item.
public struct CargojsonAccounting: Codable, Hashable, Sendable {
    public let accountingInformation: String
    public let identifier: CargojsonAccountingInformationIdentifier
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountingInformation: String,
        identifier: CargojsonAccountingInformationIdentifier,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountingInformation = accountingInformation
        self.identifier = identifier
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountingInformation = try container.decode(String.self, forKey: .accountingInformation)
        self.identifier = try container.decode(CargojsonAccountingInformationIdentifier.self, forKey: .identifier)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accountingInformation, forKey: .accountingInformation)
        try container.encode(self.identifier, forKey: .identifier)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountingInformation
        case identifier
    }
}