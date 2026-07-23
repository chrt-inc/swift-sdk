import Foundation

public struct Invoice1: Codable, Hashable, Sendable {
    public let id: String
    public let approvedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let approvedByUserId: String?
    public let counterpartyAccountIds: [String]?
    public let counterpartyOffChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let currencyCode: BillingCurrencyCodeEnum1
    public let description: String?
    public let exportRefSageCustomerId: String?
    public let exportRefSageDepartmentId: String?
    public let fileExportedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let fileExportedByUserId: String?
    public let invoiceLineItemIds: [String]?
    public let invoiceType: InvoiceTypeEnum1
    public let lastEditedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let lastEditedByUserId: String
    public let mergeExportedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let mergeExportedByUserId: String?
    public let mergeInvoiceId: String?
    public let mergeInvoiceNumber: String?
    public let mergeInvoiceUrl: String?
    public let mergeLinkedAccountId: String?
    public let mergeRemoteId: String?
    public let mergeRemoteWasDeleted: Bool?
    public let mergeStatus: InvoiceMergeStatusEnum1?
    public let name: String?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let schemaVersion: Int
    public let status: InvoiceStatusEnum1?
    public let stripeExportedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let stripeExportedByUserId: String?
    public let stripeInvoiceId: String?
    public let stripeInvoiceNumber: String?
    public let stripeInvoiceUrl: String?
    public let stripeStatus: InvoiceStripeStatusEnum1?
    public let stripeWasDeleted: Bool?
    public let totalAmount: Double?
    public let voidReason: String?
    public let voidedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let voidedByUserId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        approvedAtTimestamp: Date? = nil,
        approvedByUserId: String? = nil,
        counterpartyAccountIds: [String]? = nil,
        counterpartyOffChrtOrgDataId: String? = nil,
        counterpartyOrgId: String? = nil,
        createdAtTimestamp: Date,
        createdByUserId: String,
        currencyCode: BillingCurrencyCodeEnum1,
        description: String? = nil,
        exportRefSageCustomerId: String? = nil,
        exportRefSageDepartmentId: String? = nil,
        fileExportedAtTimestamp: Date? = nil,
        fileExportedByUserId: String? = nil,
        invoiceLineItemIds: [String]? = nil,
        invoiceType: InvoiceTypeEnum1,
        lastEditedAtTimestamp: Date,
        lastEditedByUserId: String,
        mergeExportedAtTimestamp: Date? = nil,
        mergeExportedByUserId: String? = nil,
        mergeInvoiceId: String? = nil,
        mergeInvoiceNumber: String? = nil,
        mergeInvoiceUrl: String? = nil,
        mergeLinkedAccountId: String? = nil,
        mergeRemoteId: String? = nil,
        mergeRemoteWasDeleted: Bool? = nil,
        mergeStatus: InvoiceMergeStatusEnum1? = nil,
        name: String? = nil,
        ownedByOrgId: String,
        schemaVersion: Int,
        status: InvoiceStatusEnum1? = nil,
        stripeExportedAtTimestamp: Date? = nil,
        stripeExportedByUserId: String? = nil,
        stripeInvoiceId: String? = nil,
        stripeInvoiceNumber: String? = nil,
        stripeInvoiceUrl: String? = nil,
        stripeStatus: InvoiceStripeStatusEnum1? = nil,
        stripeWasDeleted: Bool? = nil,
        totalAmount: Double? = nil,
        voidReason: String? = nil,
        voidedAtTimestamp: Date? = nil,
        voidedByUserId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.approvedAtTimestamp = approvedAtTimestamp
        self.approvedByUserId = approvedByUserId
        self.counterpartyAccountIds = counterpartyAccountIds
        self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
        self.counterpartyOrgId = counterpartyOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.currencyCode = currencyCode
        self.description = description
        self.exportRefSageCustomerId = exportRefSageCustomerId
        self.exportRefSageDepartmentId = exportRefSageDepartmentId
        self.fileExportedAtTimestamp = fileExportedAtTimestamp
        self.fileExportedByUserId = fileExportedByUserId
        self.invoiceLineItemIds = invoiceLineItemIds
        self.invoiceType = invoiceType
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.lastEditedByUserId = lastEditedByUserId
        self.mergeExportedAtTimestamp = mergeExportedAtTimestamp
        self.mergeExportedByUserId = mergeExportedByUserId
        self.mergeInvoiceId = mergeInvoiceId
        self.mergeInvoiceNumber = mergeInvoiceNumber
        self.mergeInvoiceUrl = mergeInvoiceUrl
        self.mergeLinkedAccountId = mergeLinkedAccountId
        self.mergeRemoteId = mergeRemoteId
        self.mergeRemoteWasDeleted = mergeRemoteWasDeleted
        self.mergeStatus = mergeStatus
        self.name = name
        self.ownedByOrgId = ownedByOrgId
        self.schemaVersion = schemaVersion
        self.status = status
        self.stripeExportedAtTimestamp = stripeExportedAtTimestamp
        self.stripeExportedByUserId = stripeExportedByUserId
        self.stripeInvoiceId = stripeInvoiceId
        self.stripeInvoiceNumber = stripeInvoiceNumber
        self.stripeInvoiceUrl = stripeInvoiceUrl
        self.stripeStatus = stripeStatus
        self.stripeWasDeleted = stripeWasDeleted
        self.totalAmount = totalAmount
        self.voidReason = voidReason
        self.voidedAtTimestamp = voidedAtTimestamp
        self.voidedByUserId = voidedByUserId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.approvedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .approvedAtTimestamp)
        self.approvedByUserId = try container.decodeIfPresent(String.self, forKey: .approvedByUserId)
        self.counterpartyAccountIds = try container.decodeIfPresent([String].self, forKey: .counterpartyAccountIds)
        self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
        self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.exportRefSageCustomerId = try container.decodeIfPresent(String.self, forKey: .exportRefSageCustomerId)
        self.exportRefSageDepartmentId = try container.decodeIfPresent(String.self, forKey: .exportRefSageDepartmentId)
        self.fileExportedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .fileExportedAtTimestamp)
        self.fileExportedByUserId = try container.decodeIfPresent(String.self, forKey: .fileExportedByUserId)
        self.invoiceLineItemIds = try container.decodeIfPresent([String].self, forKey: .invoiceLineItemIds)
        self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.lastEditedByUserId = try container.decode(String.self, forKey: .lastEditedByUserId)
        self.mergeExportedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .mergeExportedAtTimestamp)
        self.mergeExportedByUserId = try container.decodeIfPresent(String.self, forKey: .mergeExportedByUserId)
        self.mergeInvoiceId = try container.decodeIfPresent(String.self, forKey: .mergeInvoiceId)
        self.mergeInvoiceNumber = try container.decodeIfPresent(String.self, forKey: .mergeInvoiceNumber)
        self.mergeInvoiceUrl = try container.decodeIfPresent(String.self, forKey: .mergeInvoiceUrl)
        self.mergeLinkedAccountId = try container.decodeIfPresent(String.self, forKey: .mergeLinkedAccountId)
        self.mergeRemoteId = try container.decodeIfPresent(String.self, forKey: .mergeRemoteId)
        self.mergeRemoteWasDeleted = try container.decodeIfPresent(Bool.self, forKey: .mergeRemoteWasDeleted)
        self.mergeStatus = try container.decodeIfPresent(InvoiceMergeStatusEnum1.self, forKey: .mergeStatus)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.status = try container.decodeIfPresent(InvoiceStatusEnum1.self, forKey: .status)
        self.stripeExportedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stripeExportedAtTimestamp)
        self.stripeExportedByUserId = try container.decodeIfPresent(String.self, forKey: .stripeExportedByUserId)
        self.stripeInvoiceId = try container.decodeIfPresent(String.self, forKey: .stripeInvoiceId)
        self.stripeInvoiceNumber = try container.decodeIfPresent(String.self, forKey: .stripeInvoiceNumber)
        self.stripeInvoiceUrl = try container.decodeIfPresent(String.self, forKey: .stripeInvoiceUrl)
        self.stripeStatus = try container.decodeIfPresent(InvoiceStripeStatusEnum1.self, forKey: .stripeStatus)
        self.stripeWasDeleted = try container.decodeIfPresent(Bool.self, forKey: .stripeWasDeleted)
        self.totalAmount = try container.decodeIfPresent(Double.self, forKey: .totalAmount)
        self.voidReason = try container.decodeIfPresent(String.self, forKey: .voidReason)
        self.voidedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .voidedAtTimestamp)
        self.voidedByUserId = try container.decodeIfPresent(String.self, forKey: .voidedByUserId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.approvedAtTimestamp, forKey: .approvedAtTimestamp)
        try container.encodeIfPresent(self.approvedByUserId, forKey: .approvedByUserId)
        try container.encodeIfPresent(self.counterpartyAccountIds, forKey: .counterpartyAccountIds)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
        try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.exportRefSageCustomerId, forKey: .exportRefSageCustomerId)
        try container.encodeIfPresent(self.exportRefSageDepartmentId, forKey: .exportRefSageDepartmentId)
        try container.encodeIfPresent(self.fileExportedAtTimestamp, forKey: .fileExportedAtTimestamp)
        try container.encodeIfPresent(self.fileExportedByUserId, forKey: .fileExportedByUserId)
        try container.encodeIfPresent(self.invoiceLineItemIds, forKey: .invoiceLineItemIds)
        try container.encode(self.invoiceType, forKey: .invoiceType)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.lastEditedByUserId, forKey: .lastEditedByUserId)
        try container.encodeIfPresent(self.mergeExportedAtTimestamp, forKey: .mergeExportedAtTimestamp)
        try container.encodeIfPresent(self.mergeExportedByUserId, forKey: .mergeExportedByUserId)
        try container.encodeIfPresent(self.mergeInvoiceId, forKey: .mergeInvoiceId)
        try container.encodeIfPresent(self.mergeInvoiceNumber, forKey: .mergeInvoiceNumber)
        try container.encodeIfPresent(self.mergeInvoiceUrl, forKey: .mergeInvoiceUrl)
        try container.encodeIfPresent(self.mergeLinkedAccountId, forKey: .mergeLinkedAccountId)
        try container.encodeIfPresent(self.mergeRemoteId, forKey: .mergeRemoteId)
        try container.encodeIfPresent(self.mergeRemoteWasDeleted, forKey: .mergeRemoteWasDeleted)
        try container.encodeIfPresent(self.mergeStatus, forKey: .mergeStatus)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.stripeExportedAtTimestamp, forKey: .stripeExportedAtTimestamp)
        try container.encodeIfPresent(self.stripeExportedByUserId, forKey: .stripeExportedByUserId)
        try container.encodeIfPresent(self.stripeInvoiceId, forKey: .stripeInvoiceId)
        try container.encodeIfPresent(self.stripeInvoiceNumber, forKey: .stripeInvoiceNumber)
        try container.encodeIfPresent(self.stripeInvoiceUrl, forKey: .stripeInvoiceUrl)
        try container.encodeIfPresent(self.stripeStatus, forKey: .stripeStatus)
        try container.encodeIfPresent(self.stripeWasDeleted, forKey: .stripeWasDeleted)
        try container.encodeIfPresent(self.totalAmount, forKey: .totalAmount)
        try container.encodeIfPresent(self.voidReason, forKey: .voidReason)
        try container.encodeIfPresent(self.voidedAtTimestamp, forKey: .voidedAtTimestamp)
        try container.encodeIfPresent(self.voidedByUserId, forKey: .voidedByUserId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case approvedAtTimestamp = "approved_at_timestamp"
        case approvedByUserId = "approved_by_user_id"
        case counterpartyAccountIds = "counterparty_account_ids"
        case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
        case counterpartyOrgId = "counterparty_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case currencyCode = "currency_code"
        case description
        case exportRefSageCustomerId = "export_ref__sage__customer_id"
        case exportRefSageDepartmentId = "export_ref__sage__department_id"
        case fileExportedAtTimestamp = "file_exported_at_timestamp"
        case fileExportedByUserId = "file_exported_by_user_id"
        case invoiceLineItemIds = "invoice_line_item_ids"
        case invoiceType = "invoice_type"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case lastEditedByUserId = "last_edited_by_user_id"
        case mergeExportedAtTimestamp = "merge_exported_at_timestamp"
        case mergeExportedByUserId = "merge_exported_by_user_id"
        case mergeInvoiceId = "merge_invoice_id"
        case mergeInvoiceNumber = "merge_invoice_number"
        case mergeInvoiceUrl = "merge_invoice_url"
        case mergeLinkedAccountId = "merge_linked_account_id"
        case mergeRemoteId = "merge_remote_id"
        case mergeRemoteWasDeleted = "merge_remote_was_deleted"
        case mergeStatus = "merge_status"
        case name
        case ownedByOrgId = "owned_by_org_id"
        case schemaVersion = "schema_version"
        case status
        case stripeExportedAtTimestamp = "stripe_exported_at_timestamp"
        case stripeExportedByUserId = "stripe_exported_by_user_id"
        case stripeInvoiceId = "stripe_invoice_id"
        case stripeInvoiceNumber = "stripe_invoice_number"
        case stripeInvoiceUrl = "stripe_invoice_url"
        case stripeStatus = "stripe_status"
        case stripeWasDeleted = "stripe_was_deleted"
        case totalAmount = "total_amount"
        case voidReason = "void_reason"
        case voidedAtTimestamp = "voided_at_timestamp"
        case voidedByUserId = "voided_by_user_id"
    }
}