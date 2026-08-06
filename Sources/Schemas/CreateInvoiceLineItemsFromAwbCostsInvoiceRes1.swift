import Foundation

public struct CreateInvoiceLineItemsFromAwbCostsInvoiceRes1: Codable, Hashable, Sendable {
    public let counterpartyOffChrtOrgDataId: String
    public let createdAwbCount: Int
    public let createdInvoiceLineItemCount: Int
    public let currencyCode: BillingCurrencyCodeEnum1
    public let invoiceId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        counterpartyOffChrtOrgDataId: String,
        createdAwbCount: Int,
        createdInvoiceLineItemCount: Int,
        currencyCode: BillingCurrencyCodeEnum1,
        invoiceId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
        self.createdAwbCount = createdAwbCount
        self.createdInvoiceLineItemCount = createdInvoiceLineItemCount
        self.currencyCode = currencyCode
        self.invoiceId = invoiceId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.counterpartyOffChrtOrgDataId = try container.decode(String.self, forKey: .counterpartyOffChrtOrgDataId)
        self.createdAwbCount = try container.decode(Int.self, forKey: .createdAwbCount)
        self.createdInvoiceLineItemCount = try container.decode(Int.self, forKey: .createdInvoiceLineItemCount)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
        try container.encode(self.createdAwbCount, forKey: .createdAwbCount)
        try container.encode(self.createdInvoiceLineItemCount, forKey: .createdInvoiceLineItemCount)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encode(self.invoiceId, forKey: .invoiceId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
        case createdAwbCount = "created_awb_count"
        case createdInvoiceLineItemCount = "created_invoice_line_item_count"
        case currencyCode = "currency_code"
        case invoiceId = "invoice_id"
    }
}