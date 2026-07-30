import Foundation

public struct TaskGroupInvoiceLineItemsFromChrtGroundProviderRateSheetsPreview1: Codable, Hashable, Sendable {
    public let accountsPayableInvoiceLineItems: [InvoiceLineItemServerCreate1]?
    public let accountsReceivableInvoiceLineItems: [InvoiceLineItemServerCreate1]?
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountsPayableInvoiceLineItems: [InvoiceLineItemServerCreate1]? = nil,
        accountsReceivableInvoiceLineItems: [InvoiceLineItemServerCreate1]? = nil,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountsPayableInvoiceLineItems = accountsPayableInvoiceLineItems
        self.accountsReceivableInvoiceLineItems = accountsReceivableInvoiceLineItems
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountsPayableInvoiceLineItems = try container.decodeIfPresent([InvoiceLineItemServerCreate1].self, forKey: .accountsPayableInvoiceLineItems)
        self.accountsReceivableInvoiceLineItems = try container.decodeIfPresent([InvoiceLineItemServerCreate1].self, forKey: .accountsReceivableInvoiceLineItems)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accountsPayableInvoiceLineItems, forKey: .accountsPayableInvoiceLineItems)
        try container.encodeIfPresent(self.accountsReceivableInvoiceLineItems, forKey: .accountsReceivableInvoiceLineItems)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountsPayableInvoiceLineItems = "accounts_payable_invoice_line_items"
        case accountsReceivableInvoiceLineItems = "accounts_receivable_invoice_line_items"
        case taskGroupId = "task_group_id"
    }
}