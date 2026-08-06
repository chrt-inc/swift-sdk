import Foundation

public struct OrderBillingPeriod1: Codable, Hashable, Sendable {
    public let billingPeriod: BillingPeriod1
    public let invoiceId: String?
    public let invoiceLineItemId: String?
    public let invoiceStatus: InvoiceStatusEnum1?
    public let orderTaskGroupIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        billingPeriod: BillingPeriod1,
        invoiceId: String? = nil,
        invoiceLineItemId: String? = nil,
        invoiceStatus: InvoiceStatusEnum1? = nil,
        orderTaskGroupIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.billingPeriod = billingPeriod
        self.invoiceId = invoiceId
        self.invoiceLineItemId = invoiceLineItemId
        self.invoiceStatus = invoiceStatus
        self.orderTaskGroupIds = orderTaskGroupIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.billingPeriod = try container.decode(BillingPeriod1.self, forKey: .billingPeriod)
        self.invoiceId = try container.decodeIfPresent(String.self, forKey: .invoiceId)
        self.invoiceLineItemId = try container.decodeIfPresent(String.self, forKey: .invoiceLineItemId)
        self.invoiceStatus = try container.decodeIfPresent(InvoiceStatusEnum1.self, forKey: .invoiceStatus)
        self.orderTaskGroupIds = try container.decodeIfPresent([String].self, forKey: .orderTaskGroupIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.billingPeriod, forKey: .billingPeriod)
        try container.encodeIfPresent(self.invoiceId, forKey: .invoiceId)
        try container.encodeIfPresent(self.invoiceLineItemId, forKey: .invoiceLineItemId)
        try container.encodeIfPresent(self.invoiceStatus, forKey: .invoiceStatus)
        try container.encodeIfPresent(self.orderTaskGroupIds, forKey: .orderTaskGroupIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case billingPeriod = "billing_period"
        case invoiceId = "invoice_id"
        case invoiceLineItemId = "invoice_line_item_id"
        case invoiceStatus = "invoice_status"
        case orderTaskGroupIds = "order_task_group_ids"
    }
}