import Foundation

public struct CalculatedInvoiceTax1: Codable, Hashable, Sendable {
    public let exportRefSageItemId: String?
    public let invoiceLineItemIds: [String]?
    public let name: String
    public let orderId: String?
    public let percentage: Double
    public let shipperAccountId: String?
    public let taxAmount: Double
    public let taxConfigurationId: String
    public let taxableAmount: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        exportRefSageItemId: String? = nil,
        invoiceLineItemIds: [String]? = nil,
        name: String,
        orderId: String? = nil,
        percentage: Double,
        shipperAccountId: String? = nil,
        taxAmount: Double,
        taxConfigurationId: String,
        taxableAmount: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.exportRefSageItemId = exportRefSageItemId
        self.invoiceLineItemIds = invoiceLineItemIds
        self.name = name
        self.orderId = orderId
        self.percentage = percentage
        self.shipperAccountId = shipperAccountId
        self.taxAmount = taxAmount
        self.taxConfigurationId = taxConfigurationId
        self.taxableAmount = taxableAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.invoiceLineItemIds = try container.decodeIfPresent([String].self, forKey: .invoiceLineItemIds)
        self.name = try container.decode(String.self, forKey: .name)
        self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
        self.percentage = try container.decode(Double.self, forKey: .percentage)
        self.shipperAccountId = try container.decodeIfPresent(String.self, forKey: .shipperAccountId)
        self.taxAmount = try container.decode(Double.self, forKey: .taxAmount)
        self.taxConfigurationId = try container.decode(String.self, forKey: .taxConfigurationId)
        self.taxableAmount = try container.decode(Double.self, forKey: .taxableAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encodeIfPresent(self.invoiceLineItemIds, forKey: .invoiceLineItemIds)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.orderId, forKey: .orderId)
        try container.encode(self.percentage, forKey: .percentage)
        try container.encodeIfPresent(self.shipperAccountId, forKey: .shipperAccountId)
        try container.encode(self.taxAmount, forKey: .taxAmount)
        try container.encode(self.taxConfigurationId, forKey: .taxConfigurationId)
        try container.encode(self.taxableAmount, forKey: .taxableAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case exportRefSageItemId = "export_ref__sage__item_id"
        case invoiceLineItemIds = "invoice_line_item_ids"
        case name
        case orderId = "order_id"
        case percentage
        case shipperAccountId = "shipper_account_id"
        case taxAmount = "tax_amount"
        case taxConfigurationId = "tax_configuration_id"
        case taxableAmount = "taxable_amount"
    }
}