import Foundation

public struct RateSheetClientCreate1: Codable, Hashable, Sendable {
    public let appliesToServiceLines: [ServiceLineEnum]?
    public let counterpartyDriverId: String?
    public let counterpartyOffChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String?
    public let currencyCode: BillingCurrencyCodeEnum1
    public let effectiveEndsAtTimestamp: Date?
    public let effectiveStartsAtTimestamp: Date?
    /// IANA time zone name (e.g. `America/New_York`).
    public let effectiveTimeZoneName: String?
    public let invoiceType: InvoiceTypeEnum1
    public let name: String
    public let rules: [RulesItem]
    public let schemaVersion: Int
    public let taskGroupType: TaskGroupTypeEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        appliesToServiceLines: [ServiceLineEnum]? = nil,
        counterpartyDriverId: String? = nil,
        counterpartyOffChrtOrgDataId: String? = nil,
        counterpartyOrgId: String? = nil,
        currencyCode: BillingCurrencyCodeEnum1,
        effectiveEndsAtTimestamp: Date? = nil,
        effectiveStartsAtTimestamp: Date? = nil,
        effectiveTimeZoneName: String? = nil,
        invoiceType: InvoiceTypeEnum1,
        name: String,
        rules: [RulesItem],
        schemaVersion: Int,
        taskGroupType: TaskGroupTypeEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.appliesToServiceLines = appliesToServiceLines
        self.counterpartyDriverId = counterpartyDriverId
        self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
        self.counterpartyOrgId = counterpartyOrgId
        self.currencyCode = currencyCode
        self.effectiveEndsAtTimestamp = effectiveEndsAtTimestamp
        self.effectiveStartsAtTimestamp = effectiveStartsAtTimestamp
        self.effectiveTimeZoneName = effectiveTimeZoneName
        self.invoiceType = invoiceType
        self.name = name
        self.rules = rules
        self.schemaVersion = schemaVersion
        self.taskGroupType = taskGroupType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.appliesToServiceLines = try container.decodeIfPresent([ServiceLineEnum].self, forKey: .appliesToServiceLines)
        self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
        self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
        self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
        self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
        self.effectiveEndsAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .effectiveEndsAtTimestamp)
        self.effectiveStartsAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .effectiveStartsAtTimestamp)
        self.effectiveTimeZoneName = try container.decodeIfPresent(String.self, forKey: .effectiveTimeZoneName)
        self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
        self.name = try container.decode(String.self, forKey: .name)
        self.rules = try container.decode([RulesItem].self, forKey: .rules)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.appliesToServiceLines, forKey: .appliesToServiceLines)
        try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
        try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encode(self.currencyCode, forKey: .currencyCode)
        try container.encodeIfPresent(self.effectiveEndsAtTimestamp, forKey: .effectiveEndsAtTimestamp)
        try container.encodeIfPresent(self.effectiveStartsAtTimestamp, forKey: .effectiveStartsAtTimestamp)
        try container.encodeIfPresent(self.effectiveTimeZoneName, forKey: .effectiveTimeZoneName)
        try container.encode(self.invoiceType, forKey: .invoiceType)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.rules, forKey: .rules)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.taskGroupType, forKey: .taskGroupType)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case appliesToServiceLines = "applies_to_service_lines"
        case counterpartyDriverId = "counterparty_driver_id"
        case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
        case counterpartyOrgId = "counterparty_org_id"
        case currencyCode = "currency_code"
        case effectiveEndsAtTimestamp = "effective_ends_at_timestamp"
        case effectiveStartsAtTimestamp = "effective_starts_at_timestamp"
        case effectiveTimeZoneName = "effective_time_zone_name"
        case invoiceType = "invoice_type"
        case name
        case rules
        case schemaVersion = "schema_version"
        case taskGroupType = "task_group_type"
    }
}