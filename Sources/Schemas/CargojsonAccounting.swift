import Foundation

/// [CUSTOMER] Accounting information line item.
public struct CargojsonAccounting: Codable, Hashable, Sendable {
    public let identifier: CargojsonAccountingInformationIdentifier
    public let accountingInformation: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        identifier: CargojsonAccountingInformationIdentifier,
        accountingInformation: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.identifier = identifier
        self.accountingInformation = accountingInformation
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.identifier = try container.decode(CargojsonAccountingInformationIdentifier.self, forKey: .identifier)
        self.accountingInformation = try container.decode(String.self, forKey: .accountingInformation)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.identifier, forKey: .identifier)
        try container.encode(self.accountingInformation, forKey: .accountingInformation)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case identifier
        case accountingInformation
    }
}