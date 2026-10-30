import Foundation

/// What the order pricing routes return for the caller's organization.
public struct OrderPricingRes: Codable, Hashable, Sendable {
    /// Relationships priced by a bid or quote; filled when the order is re-priced, empty on a plain read.
    public let agreedPrices: [OrderAgreedPrice1]?
    public let invoiceLineItems: [InvoiceLineItem1]?
    public let orderBillingState: OrderBillingState1?
    /// The order's task groups, in order.
    public let taskGroupIds: [String]?
    public let unpricedReasons: [UnpricedReason1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        agreedPrices: [OrderAgreedPrice1]? = nil,
        invoiceLineItems: [InvoiceLineItem1]? = nil,
        orderBillingState: OrderBillingState1? = nil,
        taskGroupIds: [String]? = nil,
        unpricedReasons: [UnpricedReason1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.agreedPrices = agreedPrices
        self.invoiceLineItems = invoiceLineItems
        self.orderBillingState = orderBillingState
        self.taskGroupIds = taskGroupIds
        self.unpricedReasons = unpricedReasons
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.agreedPrices = try container.decodeIfPresent([OrderAgreedPrice1].self, forKey: .agreedPrices)
        self.invoiceLineItems = try container.decodeIfPresent([InvoiceLineItem1].self, forKey: .invoiceLineItems)
        self.orderBillingState = try container.decodeIfPresent(OrderBillingState1.self, forKey: .orderBillingState)
        self.taskGroupIds = try container.decodeIfPresent([String].self, forKey: .taskGroupIds)
        self.unpricedReasons = try container.decodeIfPresent([UnpricedReason1].self, forKey: .unpricedReasons)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.agreedPrices, forKey: .agreedPrices)
        try container.encodeIfPresent(self.invoiceLineItems, forKey: .invoiceLineItems)
        try container.encodeIfPresent(self.orderBillingState, forKey: .orderBillingState)
        try container.encodeIfPresent(self.taskGroupIds, forKey: .taskGroupIds)
        try container.encodeIfPresent(self.unpricedReasons, forKey: .unpricedReasons)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case agreedPrices = "agreed_prices"
        case invoiceLineItems = "invoice_line_items"
        case orderBillingState = "order_billing_state"
        case taskGroupIds = "task_group_ids"
        case unpricedReasons = "unpriced_reasons"
    }
}