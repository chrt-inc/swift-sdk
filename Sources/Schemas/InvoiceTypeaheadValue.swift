import Foundation

public struct InvoiceTypeaheadValue: Codable, Hashable, Sendable {
    public let invoiceIds: [String]
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoiceIds: [String],
        value: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoiceIds = invoiceIds
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoiceIds = try container.decode([String].self, forKey: .invoiceIds)
        self.value = try container.decode(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoiceIds, forKey: .invoiceIds)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoiceIds = "invoice_ids"
        case value
    }
}