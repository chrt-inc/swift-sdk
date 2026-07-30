import Foundation

public struct OrderBillingExpandedListItem1: Codable, Hashable, Sendable {
    public let accounts: [OrderBillingAccount1]?
    public let awbNumbers: [String]?
    public let coordinatorLabel: String?
    public let executors: [OrderBillingExecutor1]?
    public let includesAirWaybillInvoiceLineItem: Bool
    public let invoiceCount: Int
    public let invoiceLineItemCount: Int
    public let invoiceStatuses: [InvoiceStatusEnum1]?
    public let orderId: String
    public let orderShortId: String
    public let orderStatus: OrderStatusEnum1
    public let shipper: OrderBillingShipper1?
    public let totalsByCurrency: [OrderBillingCurrencyTotals1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accounts: [OrderBillingAccount1]? = nil,
        awbNumbers: [String]? = nil,
        coordinatorLabel: String? = nil,
        executors: [OrderBillingExecutor1]? = nil,
        includesAirWaybillInvoiceLineItem: Bool,
        invoiceCount: Int,
        invoiceLineItemCount: Int,
        invoiceStatuses: [InvoiceStatusEnum1]? = nil,
        orderId: String,
        orderShortId: String,
        orderStatus: OrderStatusEnum1,
        shipper: OrderBillingShipper1? = nil,
        totalsByCurrency: [OrderBillingCurrencyTotals1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accounts = accounts
        self.awbNumbers = awbNumbers
        self.coordinatorLabel = coordinatorLabel
        self.executors = executors
        self.includesAirWaybillInvoiceLineItem = includesAirWaybillInvoiceLineItem
        self.invoiceCount = invoiceCount
        self.invoiceLineItemCount = invoiceLineItemCount
        self.invoiceStatuses = invoiceStatuses
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.orderStatus = orderStatus
        self.shipper = shipper
        self.totalsByCurrency = totalsByCurrency
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accounts = try container.decodeIfPresent([OrderBillingAccount1].self, forKey: .accounts)
        self.awbNumbers = try container.decodeIfPresent([String].self, forKey: .awbNumbers)
        self.coordinatorLabel = try container.decodeIfPresent(String.self, forKey: .coordinatorLabel)
        self.executors = try container.decodeIfPresent([OrderBillingExecutor1].self, forKey: .executors)
        self.includesAirWaybillInvoiceLineItem = try container.decode(Bool.self, forKey: .includesAirWaybillInvoiceLineItem)
        self.invoiceCount = try container.decode(Int.self, forKey: .invoiceCount)
        self.invoiceLineItemCount = try container.decode(Int.self, forKey: .invoiceLineItemCount)
        self.invoiceStatuses = try container.decodeIfPresent([InvoiceStatusEnum1].self, forKey: .invoiceStatuses)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.orderStatus = try container.decode(OrderStatusEnum1.self, forKey: .orderStatus)
        self.shipper = try container.decodeIfPresent(OrderBillingShipper1.self, forKey: .shipper)
        self.totalsByCurrency = try container.decodeIfPresent([OrderBillingCurrencyTotals1].self, forKey: .totalsByCurrency)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accounts, forKey: .accounts)
        try container.encodeIfPresent(self.awbNumbers, forKey: .awbNumbers)
        try container.encodeIfPresent(self.coordinatorLabel, forKey: .coordinatorLabel)
        try container.encodeIfPresent(self.executors, forKey: .executors)
        try container.encode(self.includesAirWaybillInvoiceLineItem, forKey: .includesAirWaybillInvoiceLineItem)
        try container.encode(self.invoiceCount, forKey: .invoiceCount)
        try container.encode(self.invoiceLineItemCount, forKey: .invoiceLineItemCount)
        try container.encodeIfPresent(self.invoiceStatuses, forKey: .invoiceStatuses)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.orderStatus, forKey: .orderStatus)
        try container.encodeIfPresent(self.shipper, forKey: .shipper)
        try container.encodeIfPresent(self.totalsByCurrency, forKey: .totalsByCurrency)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accounts
        case awbNumbers = "awb_numbers"
        case coordinatorLabel = "coordinator_label"
        case executors
        case includesAirWaybillInvoiceLineItem = "includes_air_waybill_invoice_line_item"
        case invoiceCount = "invoice_count"
        case invoiceLineItemCount = "invoice_line_item_count"
        case invoiceStatuses = "invoice_statuses"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case orderStatus = "order_status"
        case shipper
        case totalsByCurrency = "totals_by_currency"
    }
}