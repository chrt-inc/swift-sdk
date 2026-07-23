import Foundation

public struct InvoiceLineItem1: Codable, Hashable, Sendable {
    public let id: String
    public let counterpartyAccountId: String?
    public let counterpartyOffChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let currencyCode: BillingCurrencyCodeEnum1
    public let description: String
    public let exportRefSageItemId: String?
    public let invoiceId: String?
    public let invoiceType: InvoiceTypeEnum1
    public let lastEditedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let lastEditedByUserId: String
    public let lineItemType: InvoiceLineItemTypeEnum1
    public let orderId: String?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let quantity: Double
    public let schemaVersion: Int
    public let taskGroupId: String?
    public let unit: InvoiceLineItemUnitEnum1?
    public let unitPrice: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        counterpartyAccountId: String? = nil,
        counterpartyOffChrtOrgDataId: String? = nil,
        counterpartyOrgId: String? = nil,
        createdAtTimestamp: Date,
        createdByUserId: String,
        currencyCode: BillingCurrencyCodeEnum1,
        description: String,
        exportRefSageItemId: String? = nil,
        invoiceId: String? = nil,
        invoiceType: InvoiceTypeEnum1,
        lastEditedAtTimestamp: Date,
        lastEditedByUserId: String,
        lineItemType: InvoiceLineItemTypeEnum1,
        orderId: String? = nil,
        ownedByOrgId: String,
        quantity: Double,
        schemaVersion: Int,
        taskGroupId: String? = nil,
        unit: InvoiceLineItemUnitEnum1? = nil,
        unitPrice: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.counterpartyAccountId = counterpartyAccountId
        self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
        self.counterpartyOrgId = counterpartyOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.currencyCode = currencyCode
        self.description = description
        self.exportRefSageItemId = exportRefSageItemId
        self.invoiceId = invoiceId
        self.invoiceType = invoiceType
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.lastEditedByUserId = lastEditedByUserId
        self.lineItemType = lineItemType
        self.orderId = orderId
        self.ownedByOrgId = ownedByOrgId
        self.quantity = quantity
        self.schemaVersion = schemaVersion
        self.taskGroupId = taskGroupId
        self.unit = unit
        self.unitPrice = unitPrice
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.counterpartyAccountId = try container.decodeIfPresent(String.self, forKey: .counterpartyAccountId)
        self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
        self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.description = try container.decode(String.self, forKey: .description)
        self.exportRefSageItemId = try container.decodeIfPresent(String.self, forKey: .exportRefSageItemId)
        self.invoiceId = try container.decodeIfPresent(String.self, forKey: .invoiceId)
        self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.lastEditedByUserId = try container.decode(String.self, forKey: .lastEditedByUserId)
        self.lineItemType = try container.decode(InvoiceLineItemTypeEnum1.self, forKey: .lineItemType)
        self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.quantity = try container.decode(Double.self, forKey: .quantity)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.unit = try container.decodeIfPresent(InvoiceLineItemUnitEnum1.self, forKey: .unit)
        self.unitPrice = try container.decode(Double.self, forKey: .unitPrice)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.counterpartyAccountId, forKey: .counterpartyAccountId)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
        try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encode(self.description, forKey: .description)
        try container.encodeIfPresent(self.exportRefSageItemId, forKey: .exportRefSageItemId)
        try container.encodeIfPresent(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.invoiceType, forKey: .invoiceType)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.lastEditedByUserId, forKey: .lastEditedByUserId)
        try container.encode(self.lineItemType, forKey: .lineItemType)
        try container.encodeIfPresent(self.orderId, forKey: .orderId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
        try container.encodeIfPresent(self.unit, forKey: .unit)
        try container.encode(self.unitPrice, forKey: .unitPrice)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case counterpartyAccountId = "counterparty_account_id"
        case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
        case counterpartyOrgId = "counterparty_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case currencyCode = "currency_code"
        case description
        case exportRefSageItemId = "export_ref__sage__item_id"
        case invoiceId = "invoice_id"
        case invoiceType = "invoice_type"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case lastEditedByUserId = "last_edited_by_user_id"
        case lineItemType = "line_item_type"
        case orderId = "order_id"
        case ownedByOrgId = "owned_by_org_id"
        case quantity
        case schemaVersion = "schema_version"
        case taskGroupId = "task_group_id"
        case unit
        case unitPrice = "unit_price"
    }
}