import Foundation

public struct GenerateInvoiceRes: Codable, Hashable, Sendable {
    public let invoiceId: String
    public let invoiceUrl: String
    public let amountDue: Int
    public let dueDate: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoiceId: String,
        invoiceUrl: String,
        amountDue: Int,
        dueDate: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoiceId = invoiceId
        self.invoiceUrl = invoiceUrl
        self.amountDue = amountDue
        self.dueDate = dueDate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.invoiceUrl = try container.decode(String.self, forKey: .invoiceUrl)
        self.amountDue = try container.decode(Int.self, forKey: .amountDue)
        self.dueDate = try container.decode(Int.self, forKey: .dueDate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.invoiceUrl, forKey: .invoiceUrl)
        try container.encode(self.amountDue, forKey: .amountDue)
        try container.encode(self.dueDate, forKey: .dueDate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoiceId = "invoice_id"
        case invoiceUrl = "invoice_url"
        case amountDue = "amount_due"
        case dueDate = "due_date"
    }
}