import Foundation

public struct BillingLedgerPeriod1: Codable, Hashable, Sendable {
    public let id: String
    public let billingLedgerId: String
    public let closedAtTimestamp: Date?
    /// Must be a string starting with `org_`
    public let closedByOrgId: String?
    /// Must be a string starting with `user_`
    public let closedByUserId: String?
    public let cycle: BillingCycleEnum
    public let linkedTaskGroupIds: [String]?
    public let openedAtTimestamp: Date
    /// Must be a string starting with `org_`
    public let openedByOrgId: String
    /// Must be a string starting with `user_`
    public let openedByUserId: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let paymentDestinationDriverId: String?
    public let paymentDestinationOffChrtProviderOrgDataId: String?
    /// Must be a string starting with `org_`
    public let paymentDestinationOrgId: String?
    public let paymentOriginOffChrtShipperOrgDataId: String?
    /// Must be a string starting with `org_`
    public let paymentOriginOrgId: String?
    public let periodEndAtTimestamp: Date
    public let periodStartAtTimestamp: Date
    public let rateUsd: Double
    public let schemaVersion: Int
    public let statementId: String?
    public let status: BillingLedgerPeriodStatusEnum?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        billingLedgerId: String,
        closedAtTimestamp: Date? = nil,
        closedByOrgId: String? = nil,
        closedByUserId: String? = nil,
        cycle: BillingCycleEnum,
        linkedTaskGroupIds: [String]? = nil,
        openedAtTimestamp: Date,
        openedByOrgId: String,
        openedByUserId: String,
        ownedByOrgId: String,
        paymentDestinationDriverId: String? = nil,
        paymentDestinationOffChrtProviderOrgDataId: String? = nil,
        paymentDestinationOrgId: String? = nil,
        paymentOriginOffChrtShipperOrgDataId: String? = nil,
        paymentOriginOrgId: String? = nil,
        periodEndAtTimestamp: Date,
        periodStartAtTimestamp: Date,
        rateUsd: Double,
        schemaVersion: Int,
        statementId: String? = nil,
        status: BillingLedgerPeriodStatusEnum? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.billingLedgerId = billingLedgerId
        self.closedAtTimestamp = closedAtTimestamp
        self.closedByOrgId = closedByOrgId
        self.closedByUserId = closedByUserId
        self.cycle = cycle
        self.linkedTaskGroupIds = linkedTaskGroupIds
        self.openedAtTimestamp = openedAtTimestamp
        self.openedByOrgId = openedByOrgId
        self.openedByUserId = openedByUserId
        self.ownedByOrgId = ownedByOrgId
        self.paymentDestinationDriverId = paymentDestinationDriverId
        self.paymentDestinationOffChrtProviderOrgDataId = paymentDestinationOffChrtProviderOrgDataId
        self.paymentDestinationOrgId = paymentDestinationOrgId
        self.paymentOriginOffChrtShipperOrgDataId = paymentOriginOffChrtShipperOrgDataId
        self.paymentOriginOrgId = paymentOriginOrgId
        self.periodEndAtTimestamp = periodEndAtTimestamp
        self.periodStartAtTimestamp = periodStartAtTimestamp
        self.rateUsd = rateUsd
        self.schemaVersion = schemaVersion
        self.statementId = statementId
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.billingLedgerId = try container.decode(String.self, forKey: .billingLedgerId)
        self.closedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .closedAtTimestamp)
        self.closedByOrgId = try container.decodeIfPresent(String.self, forKey: .closedByOrgId)
        self.closedByUserId = try container.decodeIfPresent(String.self, forKey: .closedByUserId)
        self.cycle = try container.decode(BillingCycleEnum.self, forKey: .cycle)
        self.linkedTaskGroupIds = try container.decodeIfPresent([String].self, forKey: .linkedTaskGroupIds)
        self.openedAtTimestamp = try container.decode(Date.self, forKey: .openedAtTimestamp)
        self.openedByOrgId = try container.decode(String.self, forKey: .openedByOrgId)
        self.openedByUserId = try container.decode(String.self, forKey: .openedByUserId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
        self.paymentDestinationOffChrtProviderOrgDataId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtProviderOrgDataId)
        self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
        self.paymentOriginOffChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgDataId)
        self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
        self.periodEndAtTimestamp = try container.decode(Date.self, forKey: .periodEndAtTimestamp)
        self.periodStartAtTimestamp = try container.decode(Date.self, forKey: .periodStartAtTimestamp)
        self.rateUsd = try container.decode(Double.self, forKey: .rateUsd)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.statementId = try container.decodeIfPresent(String.self, forKey: .statementId)
        self.status = try container.decodeIfPresent(BillingLedgerPeriodStatusEnum.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.billingLedgerId, forKey: .billingLedgerId)
        try container.encodeIfPresent(self.closedAtTimestamp, forKey: .closedAtTimestamp)
        try container.encodeIfPresent(self.closedByOrgId, forKey: .closedByOrgId)
        try container.encodeIfPresent(self.closedByUserId, forKey: .closedByUserId)
        try container.encode(self.cycle, forKey: .cycle)
        try container.encodeIfPresent(self.linkedTaskGroupIds, forKey: .linkedTaskGroupIds)
        try container.encode(self.openedAtTimestamp, forKey: .openedAtTimestamp)
        try container.encode(self.openedByOrgId, forKey: .openedByOrgId)
        try container.encode(self.openedByUserId, forKey: .openedByUserId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
        try container.encodeIfPresent(self.paymentDestinationOffChrtProviderOrgDataId, forKey: .paymentDestinationOffChrtProviderOrgDataId)
        try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
        try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgDataId, forKey: .paymentOriginOffChrtShipperOrgDataId)
        try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
        try container.encode(self.periodEndAtTimestamp, forKey: .periodEndAtTimestamp)
        try container.encode(self.periodStartAtTimestamp, forKey: .periodStartAtTimestamp)
        try container.encode(self.rateUsd, forKey: .rateUsd)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.statementId, forKey: .statementId)
        try container.encodeIfPresent(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case billingLedgerId = "billing_ledger_id"
        case closedAtTimestamp = "closed_at_timestamp"
        case closedByOrgId = "closed_by_org_id"
        case closedByUserId = "closed_by_user_id"
        case cycle
        case linkedTaskGroupIds = "linked_task_group_ids"
        case openedAtTimestamp = "opened_at_timestamp"
        case openedByOrgId = "opened_by_org_id"
        case openedByUserId = "opened_by_user_id"
        case ownedByOrgId = "owned_by_org_id"
        case paymentDestinationDriverId = "payment_destination_driver_id"
        case paymentDestinationOffChrtProviderOrgDataId = "payment_destination_off_chrt_provider_org_data_id"
        case paymentDestinationOrgId = "payment_destination_org_id"
        case paymentOriginOffChrtShipperOrgDataId = "payment_origin_off_chrt_shipper_org_data_id"
        case paymentOriginOrgId = "payment_origin_org_id"
        case periodEndAtTimestamp = "period_end_at_timestamp"
        case periodStartAtTimestamp = "period_start_at_timestamp"
        case rateUsd = "rate_usd"
        case schemaVersion = "schema_version"
        case statementId = "statement_id"
        case status
    }
}