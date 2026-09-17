import Foundation

public struct CalculatedInvoiceTax1: Codable, Hashable, Sendable {
    public let exportRefSageItemId: String?
    public let invoiceLineItemId: String
    public let name: String
    public let percentage: Double
    public let taxAmount: Double
    public let taxConfigurationId: String
    public let taxableAmount: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        exportRefSageItemId: String? = nil,
        invoiceLineItemId: String,
        name: String,
        percentage: Double,
        taxAmount: Double,
        taxConfigurationId: String,
        taxableAmount: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.exportRefSageItemId = exportRefSageItemId
        self.invoiceLineItemId = invoiceLineItemId
        self.name = name
        self.percentage = percentage
        self.taxAmount = taxAmount
        self.taxConfigurationId = taxConfigurationId
        self.taxableAmount = taxableAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.invoiceLineItemId = try container.decode(String.self, forKey: .invoiceLineItemId)
        self.name = try container.decode(String.self, forKey: .name)
        self.percentage = try container.decode(Double.self, forKey: .percentage)
        self.taxAmount = try container.decode(Double.self, forKey: .taxAmount)
        self.taxConfigurationId = try container.decode(String.self, forKey: .taxConfigurationId)
        self.taxableAmount = try container.decode(Double.self, forKey: .taxableAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encode(self.invoiceLineItemId, forKey: .invoiceLineItemId)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.percentage, forKey: .percentage)
        try container.encode(self.taxAmount, forKey: .taxAmount)
        try container.encode(self.taxConfigurationId, forKey: .taxConfigurationId)
        try container.encode(self.taxableAmount, forKey: .taxableAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case exportRefSageItemId = "export_ref__sage__item_id"
        case invoiceLineItemId = "invoice_line_item_id"
        case name
        case percentage
        case taxAmount = "tax_amount"
        case taxConfigurationId = "tax_configuration_id"
        case taxableAmount = "taxable_amount"
    }
}