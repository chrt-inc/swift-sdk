import Foundation

extension Requests {
    public struct BillingPeriodClientCreate1: Codable, Hashable, Sendable {
        public let amount: Double
        public let counterpartyDriverId: String?
        public let counterpartyOffChrtOrgDataId: String?
        /// Must be a string starting with `org_`
        public let counterpartyOrgId: String?
        public let currencyCode: BillingCurrencyCodeEnum1
        public let cycle: BillingPeriodCycleEnum1
        public let description: String
        public let invoiceType: InvoiceTypeEnum1
        public let name: String?
        public let periodEndAtTimestamp: Date
        public let periodStartAtTimestamp: Date
        public let schemaVersion: Int
        public let shipperAccountId: String?
        public let taskGroupIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            amount: Double,
            counterpartyDriverId: String? = nil,
            counterpartyOffChrtOrgDataId: String? = nil,
            counterpartyOrgId: String? = nil,
            currencyCode: BillingCurrencyCodeEnum1,
            cycle: BillingPeriodCycleEnum1,
            description: String,
            invoiceType: InvoiceTypeEnum1,
            name: String? = nil,
            periodEndAtTimestamp: Date,
            periodStartAtTimestamp: Date,
            schemaVersion: Int,
            shipperAccountId: String? = nil,
            taskGroupIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.amount = amount
            self.counterpartyDriverId = counterpartyDriverId
            self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
            self.counterpartyOrgId = counterpartyOrgId
            self.currencyCode = currencyCode
            self.cycle = cycle
            self.description = description
            self.invoiceType = invoiceType
            self.name = name
            self.periodEndAtTimestamp = periodEndAtTimestamp
            self.periodStartAtTimestamp = periodStartAtTimestamp
            self.schemaVersion = schemaVersion
            self.shipperAccountId = shipperAccountId
            self.taskGroupIds = taskGroupIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.amount = try container.decode(Double.self, forKey: .amount)
            self.counterpartyDriverId = try container.decodeIfPresent(String.self, forKey: .counterpartyDriverId)
            self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
            self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
            self.currencyCode = try container.decode(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
            self.cycle = try container.decode(BillingPeriodCycleEnum1.self, forKey: .cycle)
            self.description = try container.decode(String.self, forKey: .description)
            self.invoiceType = try container.decode(InvoiceTypeEnum1.self, forKey: .invoiceType)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.periodEndAtTimestamp = try container.decode(Date.self, forKey: .periodEndAtTimestamp)
            self.periodStartAtTimestamp = try container.decode(Date.self, forKey: .periodStartAtTimestamp)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.shipperAccountId = try container.decodeIfPresent(String.self, forKey: .shipperAccountId)
            self.taskGroupIds = try container.decodeIfPresent([String].self, forKey: .taskGroupIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.amount, forKey: .amount)
            try container.encodeIfPresent(self.counterpartyDriverId, forKey: .counterpartyDriverId)
            try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
            try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
            try container.encode(self.currencyCode, forKey: .currencyCode)
            try container.encode(self.cycle, forKey: .cycle)
            try container.encode(self.description, forKey: .description)
            try container.encode(self.invoiceType, forKey: .invoiceType)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encode(self.periodEndAtTimestamp, forKey: .periodEndAtTimestamp)
            try container.encode(self.periodStartAtTimestamp, forKey: .periodStartAtTimestamp)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.shipperAccountId, forKey: .shipperAccountId)
            try container.encodeIfPresent(self.taskGroupIds, forKey: .taskGroupIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case amount
            case counterpartyDriverId = "counterparty_driver_id"
            case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
            case counterpartyOrgId = "counterparty_org_id"
            case currencyCode = "currency_code"
            case cycle
            case description
            case invoiceType = "invoice_type"
            case name
            case periodEndAtTimestamp = "period_end_at_timestamp"
            case periodStartAtTimestamp = "period_start_at_timestamp"
            case schemaVersion = "schema_version"
            case shipperAccountId = "shipper_account_id"
            case taskGroupIds = "task_group_ids"
        }
    }
}