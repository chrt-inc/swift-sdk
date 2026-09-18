import Foundation

public struct OrderBillingExpandedListItem1: Codable, Hashable, Sendable {
    public let accounts: [OrderBillingAccount1]?
    public let awbNumbers: [String]?
    public let billingPeriods: [OrderBillingPeriod1]?
    public let cancelledAtTimestamp: Date?
    public let completedAtTimestamp: Date?
    public let coordinatorLabels: [String]?
    public let draftStartedAtTimestamp: Date
    public let exceptionAtTimestamp: Date?
    public let executors: [OrderBillingExecutor1]?
    public let inProgressAtTimestamp: Date?
    public let includesAirWaybillInvoiceLineItem: Bool
    public let invoiceCount: Int
    public let invoiceLineItemCount: Int
    public let invoiceStatuses: [InvoiceStatusEnum1]?
    public let lastDeliveryTaskCompletedAtTimestamp: Date?
    public let orderId: String
    public let orderShortId: String
    public let orderStatus: OrderStatusEnum1
    public let shipper: OrderBillingShipper1?
    public let stagedAtTimestamp: Date?
    public let totalsByCurrency: [OrderBillingCurrencyTotals1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accounts: [OrderBillingAccount1]? = nil,
        awbNumbers: [String]? = nil,
        billingPeriods: [OrderBillingPeriod1]? = nil,
        cancelledAtTimestamp: Date? = nil,
        completedAtTimestamp: Date? = nil,
        coordinatorLabels: [String]? = nil,
        draftStartedAtTimestamp: Date,
        exceptionAtTimestamp: Date? = nil,
        executors: [OrderBillingExecutor1]? = nil,
        inProgressAtTimestamp: Date? = nil,
        includesAirWaybillInvoiceLineItem: Bool,
        invoiceCount: Int,
        invoiceLineItemCount: Int,
        invoiceStatuses: [InvoiceStatusEnum1]? = nil,
        lastDeliveryTaskCompletedAtTimestamp: Date? = nil,
        orderId: String,
        orderShortId: String,
        orderStatus: OrderStatusEnum1,
        shipper: OrderBillingShipper1? = nil,
        stagedAtTimestamp: Date? = nil,
        totalsByCurrency: [OrderBillingCurrencyTotals1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accounts = accounts
        self.awbNumbers = awbNumbers
        self.billingPeriods = billingPeriods
        self.cancelledAtTimestamp = cancelledAtTimestamp
        self.completedAtTimestamp = completedAtTimestamp
        self.coordinatorLabels = coordinatorLabels
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.executors = executors
        self.inProgressAtTimestamp = inProgressAtTimestamp
        self.includesAirWaybillInvoiceLineItem = includesAirWaybillInvoiceLineItem
        self.invoiceCount = invoiceCount
        self.invoiceLineItemCount = invoiceLineItemCount
        self.invoiceStatuses = invoiceStatuses
        self.lastDeliveryTaskCompletedAtTimestamp = lastDeliveryTaskCompletedAtTimestamp
        self.orderId = orderId
        self.orderShortId = orderShortId
        self.orderStatus = orderStatus
        self.shipper = shipper
        self.stagedAtTimestamp = stagedAtTimestamp
        self.totalsByCurrency = totalsByCurrency
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accounts = try container.decodeIfPresent([OrderBillingAccount1].self, forKey: .accounts)
        self.awbNumbers = try container.decodeIfPresent([String].self, forKey: .awbNumbers)
        self.billingPeriods = try container.decodeIfPresent([OrderBillingPeriod1].self, forKey: .billingPeriods)
        self.cancelledAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .cancelledAtTimestamp)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.coordinatorLabels = try container.decodeIfPresent([String].self, forKey: .coordinatorLabels)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.executors = try container.decodeIfPresent([OrderBillingExecutor1].self, forKey: .executors)
        self.inProgressAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inProgressAtTimestamp)
        self.includesAirWaybillInvoiceLineItem = try container.decode(Bool.self, forKey: .includesAirWaybillInvoiceLineItem)
        self.invoiceCount = try container.decode(Int.self, forKey: .invoiceCount)
        self.invoiceLineItemCount = try container.decode(Int.self, forKey: .invoiceLineItemCount)
        self.invoiceStatuses = try container.decodeIfPresent([InvoiceStatusEnum1].self, forKey: .invoiceStatuses)
        self.lastDeliveryTaskCompletedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastDeliveryTaskCompletedAtTimestamp)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.orderStatus = try container.decode(OrderStatusEnum1.self, forKey: .orderStatus)
        self.shipper = try container.decodeIfPresent(OrderBillingShipper1.self, forKey: .shipper)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.totalsByCurrency = try container.decodeIfPresent([OrderBillingCurrencyTotals1].self, forKey: .totalsByCurrency)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accounts, forKey: .accounts)
        try container.encodeIfPresent(self.awbNumbers, forKey: .awbNumbers)
        try container.encodeIfPresent(self.billingPeriods, forKey: .billingPeriods)
        try container.encodeIfPresent(self.cancelledAtTimestamp, forKey: .cancelledAtTimestamp)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.coordinatorLabels, forKey: .coordinatorLabels)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encodeIfPresent(self.executors, forKey: .executors)
        try container.encodeIfPresent(self.inProgressAtTimestamp, forKey: .inProgressAtTimestamp)
        try container.encode(self.includesAirWaybillInvoiceLineItem, forKey: .includesAirWaybillInvoiceLineItem)
        try container.encode(self.invoiceCount, forKey: .invoiceCount)
        try container.encode(self.invoiceLineItemCount, forKey: .invoiceLineItemCount)
        try container.encodeIfPresent(self.invoiceStatuses, forKey: .invoiceStatuses)
        try container.encodeIfPresent(self.lastDeliveryTaskCompletedAtTimestamp, forKey: .lastDeliveryTaskCompletedAtTimestamp)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encode(self.orderStatus, forKey: .orderStatus)
        try container.encodeIfPresent(self.shipper, forKey: .shipper)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.totalsByCurrency, forKey: .totalsByCurrency)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accounts
        case awbNumbers = "awb_numbers"
        case billingPeriods = "billing_periods"
        case cancelledAtTimestamp = "cancelled_at_timestamp"
        case completedAtTimestamp = "completed_at_timestamp"
        case coordinatorLabels = "coordinator_labels"
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case executors
        case inProgressAtTimestamp = "in_progress_at_timestamp"
        case includesAirWaybillInvoiceLineItem = "includes_air_waybill_invoice_line_item"
        case invoiceCount = "invoice_count"
        case invoiceLineItemCount = "invoice_line_item_count"
        case invoiceStatuses = "invoice_statuses"
        case lastDeliveryTaskCompletedAtTimestamp = "last_delivery_task_completed_at_timestamp"
        case orderId = "order_id"
        case orderShortId = "order_short_id"
        case orderStatus = "order_status"
        case shipper
        case stagedAtTimestamp = "staged_at_timestamp"
        case totalsByCurrency = "totals_by_currency"
    }
}