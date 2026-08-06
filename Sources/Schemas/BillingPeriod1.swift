import Foundation

public struct BillingPeriod1: Codable, Hashable, Sendable {
    public let id: String
    public let amount: Double
    public let closedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let closedByUserId: String?
    public let counterpartyDriverId: String?
    public let counterpartyOffChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let currencyCode: BillingCurrencyCodeEnum1
    public let cycle: BillingPeriodCycleEnum1
    public let description: String
    public let invoiceType: InvoiceTypeEnum1
    public let lastEditedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let lastEditedByUserId: String
    public let name: String?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let periodEndAtTimestamp: Date
    public let periodStartAtTimestamp: Date
    public let schemaVersion: Int
    public let shipperAccountId: String?
    public let status: BillingPeriodStatusEnum1?
    public let taskGroupIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        amount: Double,
        closedAtTimestamp: Date? = nil,
        closedByUserId: String? = nil,
        counterpartyDriverId: String? = nil,
        counterpartyOffChrtOrgDataId: String? = nil,
        counterpartyOrgId: String? = nil,
        createdAtTimestamp: Date,
        createdByUserId: String,
        currencyCode: BillingCurrencyCodeEnum1,
        cycle: BillingPeriodCycleEnum1,
        description: String,
        invoiceType: InvoiceTypeEnum1,
        lastEditedAtTimestamp: Date,
        lastEditedByUserId: String,
        name: String? = nil,
        ownedByOrgId: String,
        periodEndAtTimestamp: Date,
        periodStartAtTimestamp: Date,
        schemaVersion: Int,
        shipperAccountId: String? = nil,
        status: BillingPeriodStatusEnum1? = nil,
        taskGroupIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.amount = amount
        self.closedAtTimestamp = closedAtTimestamp
        self.closedByUserId = closedByUserId
        self.counterpartyDriverId = counterpartyDriverId
        self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
        self.counterpartyOrgId = counterpartyOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.currencyCode = currencyCode
        self.cycle = cycle
        self.description = description
        self.invoiceType = invoiceType
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.lastEditedByUserId = lastEditedByUserId
        self.name = name
        self.ownedByOrgId = ownedByOrgId
        self.periodEndAtTimestamp = periodEndAtTimestamp
        self.periodStartAtTimestamp = periodStartAtTimestamp
        self.schemaVersion = schemaVersion
        self.shipperAccountId = shipperAccountId
        self.status = status
        self.taskGroupIds = taskGroupIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.amount = try container.decode(Double.self, forKey: .amount)
        self.closedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .closedAtTimestamp)
        self.closedByUserId = try container.decodeIfPresent(String.self, forKey: .closedByUserId)
        self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
        self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
        self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.cycle = try container.decode(BillingPeriodCycleEnum1.self, forKey: .cycle)
        self.description = try container.decode(String.self, forKey: .description)
        self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.lastEditedByUserId = try container.decode(String.self, forKey: .lastEditedByUserId)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.periodEndAtTimestamp = try container.decode(Date.self, forKey: .periodEndAtTimestamp)
        self.periodStartAtTimestamp = try container.decode(Date.self, forKey: .periodStartAtTimestamp)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperAccountId = try container.decodeIfPresent(String.self, forKey: .shipperAccountId)
        self.status = try container.decodeIfPresent(BillingPeriodStatusEnum1.self, forKey: .status)
        self.taskGroupIds = try container.decodeIfPresent([String].self, forKey: .taskGroupIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.amount, forKey: .amount)
        try container.encodeIfPresent(self.closedAtTimestamp, forKey: .closedAtTimestamp)
        try container.encodeIfPresent(self.closedByUserId, forKey: .closedByUserId)
        try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
        try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encode(self.cycle, forKey: .cycle)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.invoiceType, forKey: .invoiceType)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.lastEditedByUserId, forKey: .lastEditedByUserId)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.periodEndAtTimestamp, forKey: .periodEndAtTimestamp)
        try container.encode(self.periodStartAtTimestamp, forKey: .periodStartAtTimestamp)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperAccountId, forKey: .shipperAccountId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.taskGroupIds, forKey: .taskGroupIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case amount
        case closedAtTimestamp = "closed_at_timestamp"
        case closedByUserId = "closed_by_user_id"
        case counterpartyDriverId = "counterparty_driver_id"
        case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
        case counterpartyOrgId = "counterparty_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case currencyCode = "currency_code"
        case cycle
        case description
        case invoiceType = "invoice_type"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case lastEditedByUserId = "last_edited_by_user_id"
        case name
        case ownedByOrgId = "owned_by_org_id"
        case periodEndAtTimestamp = "period_end_at_timestamp"
        case periodStartAtTimestamp = "period_start_at_timestamp"
        case schemaVersion = "schema_version"
        case shipperAccountId = "shipper_account_id"
        case status
        case taskGroupIds = "task_group_ids"
    }
}