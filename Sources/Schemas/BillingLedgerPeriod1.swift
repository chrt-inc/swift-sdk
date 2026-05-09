import Foundation

public struct BillingLedgerPeriod1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    public let billingLedgerId: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    /// Must be a string starting with `org_`
    public let paymentOriginOrgId: String?
    public let paymentOriginOffChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let paymentDestinationOrgId: String?
    public let paymentDestinationOffChrtProviderOrgId: String?
    public let paymentDestinationDriverId: String?
    public let periodStartAtTimestamp: Date
    public let periodEndAtTimestamp: Date
    public let cycle: BillingCycleEnum
    public let rateUsd: Double
    public let status: BillingLedgerPeriodStatusEnum?
    /// Must be a string starting with `user_`
    public let openedByUserId: String
    /// Must be a string starting with `org_`
    public let openedByOrgId: String
    public let openedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let closedByUserId: String?
    /// Must be a string starting with `org_`
    public let closedByOrgId: String?
    public let closedAtTimestamp: Date?
    public let linkedTaskGroupIds: [String]?
    public let statementId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        billingLedgerId: String,
        ownedByOrgId: String,
        paymentOriginOrgId: String? = nil,
        paymentOriginOffChrtShipperOrgId: String? = nil,
        paymentDestinationOrgId: String? = nil,
        paymentDestinationOffChrtProviderOrgId: String? = nil,
        paymentDestinationDriverId: String? = nil,
        periodStartAtTimestamp: Date,
        periodEndAtTimestamp: Date,
        cycle: BillingCycleEnum,
        rateUsd: Double,
        status: BillingLedgerPeriodStatusEnum? = nil,
        openedByUserId: String,
        openedByOrgId: String,
        openedAtTimestamp: Date,
        closedByUserId: String? = nil,
        closedByOrgId: String? = nil,
        closedAtTimestamp: Date? = nil,
        linkedTaskGroupIds: [String]? = nil,
        statementId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.billingLedgerId = billingLedgerId
        self.ownedByOrgId = ownedByOrgId
        self.paymentOriginOrgId = paymentOriginOrgId
        self.paymentOriginOffChrtShipperOrgId = paymentOriginOffChrtShipperOrgId
        self.paymentDestinationOrgId = paymentDestinationOrgId
        self.paymentDestinationOffChrtProviderOrgId = paymentDestinationOffChrtProviderOrgId
        self.paymentDestinationDriverId = paymentDestinationDriverId
        self.periodStartAtTimestamp = periodStartAtTimestamp
        self.periodEndAtTimestamp = periodEndAtTimestamp
        self.cycle = cycle
        self.rateUsd = rateUsd
        self.status = status
        self.openedByUserId = openedByUserId
        self.openedByOrgId = openedByOrgId
        self.openedAtTimestamp = openedAtTimestamp
        self.closedByUserId = closedByUserId
        self.closedByOrgId = closedByOrgId
        self.closedAtTimestamp = closedAtTimestamp
        self.linkedTaskGroupIds = linkedTaskGroupIds
        self.statementId = statementId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.billingLedgerId = try container.decode(String.self, forKey: .billingLedgerId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.paymentOriginOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOrgId)
        self.paymentOriginOffChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .paymentOriginOffChrtShipperOrgId)
        self.paymentDestinationOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOrgId)
        self.paymentDestinationOffChrtProviderOrgId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationOffChrtProviderOrgId)
        self.paymentDestinationDriverId = try container.decodeIfPresent(String.self, forKey: .paymentDestinationDriverId)
        self.periodStartAtTimestamp = try container.decode(Date.self, forKey: .periodStartAtTimestamp)
        self.periodEndAtTimestamp = try container.decode(Date.self, forKey: .periodEndAtTimestamp)
        self.cycle = try container.decode(BillingCycleEnum.self, forKey: .cycle)
        self.rateUsd = try container.decode(Double.self, forKey: .rateUsd)
        self.status = try container.decodeIfPresent(BillingLedgerPeriodStatusEnum.self, forKey: .status)
        self.openedByUserId = try container.decode(String.self, forKey: .openedByUserId)
        self.openedByOrgId = try container.decode(String.self, forKey: .openedByOrgId)
        self.openedAtTimestamp = try container.decode(Date.self, forKey: .openedAtTimestamp)
        self.closedByUserId = try container.decodeIfPresent(String.self, forKey: .closedByUserId)
        self.closedByOrgId = try container.decodeIfPresent(String.self, forKey: .closedByOrgId)
        self.closedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .closedAtTimestamp)
        self.linkedTaskGroupIds = try container.decodeIfPresent([String].self, forKey: .linkedTaskGroupIds)
        self.statementId = try container.decodeIfPresent(String.self, forKey: .statementId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.billingLedgerId, forKey: .billingLedgerId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encodeIfPresent(self.paymentOriginOrgId, forKey: .paymentOriginOrgId)
        try container.encodeIfPresent(self.paymentOriginOffChrtShipperOrgId, forKey: .paymentOriginOffChrtShipperOrgId)
        try container.encodeIfPresent(self.paymentDestinationOrgId, forKey: .paymentDestinationOrgId)
        try container.encodeIfPresent(self.paymentDestinationOffChrtProviderOrgId, forKey: .paymentDestinationOffChrtProviderOrgId)
        try container.encodeIfPresent(self.paymentDestinationDriverId, forKey: .paymentDestinationDriverId)
        try container.encode(self.periodStartAtTimestamp, forKey: .periodStartAtTimestamp)
        try container.encode(self.periodEndAtTimestamp, forKey: .periodEndAtTimestamp)
        try container.encode(self.cycle, forKey: .cycle)
        try container.encode(self.rateUsd, forKey: .rateUsd)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encode(self.openedByUserId, forKey: .openedByUserId)
        try container.encode(self.openedByOrgId, forKey: .openedByOrgId)
        try container.encode(self.openedAtTimestamp, forKey: .openedAtTimestamp)
        try container.encodeIfPresent(self.closedByUserId, forKey: .closedByUserId)
        try container.encodeIfPresent(self.closedByOrgId, forKey: .closedByOrgId)
        try container.encodeIfPresent(self.closedAtTimestamp, forKey: .closedAtTimestamp)
        try container.encodeIfPresent(self.linkedTaskGroupIds, forKey: .linkedTaskGroupIds)
        try container.encodeIfPresent(self.statementId, forKey: .statementId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case billingLedgerId = "billing_ledger_id"
        case ownedByOrgId = "owned_by_org_id"
        case paymentOriginOrgId = "payment_origin_org_id"
        case paymentOriginOffChrtShipperOrgId = "payment_origin_off_chrt_shipper_org_id"
        case paymentDestinationOrgId = "payment_destination_org_id"
        case paymentDestinationOffChrtProviderOrgId = "payment_destination_off_chrt_provider_org_id"
        case paymentDestinationDriverId = "payment_destination_driver_id"
        case periodStartAtTimestamp = "period_start_at_timestamp"
        case periodEndAtTimestamp = "period_end_at_timestamp"
        case cycle
        case rateUsd = "rate_usd"
        case status
        case openedByUserId = "opened_by_user_id"
        case openedByOrgId = "opened_by_org_id"
        case openedAtTimestamp = "opened_at_timestamp"
        case closedByUserId = "closed_by_user_id"
        case closedByOrgId = "closed_by_org_id"
        case closedAtTimestamp = "closed_at_timestamp"
        case linkedTaskGroupIds = "linked_task_group_ids"
        case statementId = "statement_id"
    }
}