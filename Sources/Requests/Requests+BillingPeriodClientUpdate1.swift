import Foundation

extension Requests {
    public struct BillingPeriodClientUpdate1: Codable, Hashable, Sendable {
        public let amount: Double?
        public let currencyCode: BillingCurrencyCodeEnum1?
        public let cycle: BillingPeriodCycleEnum1?
        public let description: String?
        public let name: String?
        public let nameSetToNone: Bool?
        public let periodEndAtTimestamp: Date?
        public let periodStartAtTimestamp: Date?
        public let shipperAccountId: String?
        public let shipperAccountIdSetToNone: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            amount: Double? = nil,
            currencyCode: BillingCurrencyCodeEnum1? = nil,
            cycle: BillingPeriodCycleEnum1? = nil,
            description: String? = nil,
            name: String? = nil,
            nameSetToNone: Bool? = nil,
            periodEndAtTimestamp: Date? = nil,
            periodStartAtTimestamp: Date? = nil,
            shipperAccountId: String? = nil,
            shipperAccountIdSetToNone: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.amount = amount
            self.currencyCode = currencyCode
            self.cycle = cycle
            self.description = description
            self.name = name
            self.nameSetToNone = nameSetToNone
            self.periodEndAtTimestamp = periodEndAtTimestamp
            self.periodStartAtTimestamp = periodStartAtTimestamp
            self.shipperAccountId = shipperAccountId
            self.shipperAccountIdSetToNone = shipperAccountIdSetToNone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.amount = try container.decodeIfPresent(Double.self, forKey: .amount)
            self.currencyCode = try container.decodeIfPresent(BillingCurrencyCodeEnum1.self, forKey: .currencyCode)
            self.cycle = try container.decodeIfPresent(BillingPeriodCycleEnum1.self, forKey: .cycle)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.nameSetToNone = try container.decodeIfPresent(Bool.self, forKey: .nameSetToNone)
            self.periodEndAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .periodEndAtTimestamp)
            self.periodStartAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .periodStartAtTimestamp)
            self.shipperAccountId = try container.decodeIfPresent(String.self, forKey: .shipperAccountId)
            self.shipperAccountIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .shipperAccountIdSetToNone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.amount, forKey: .amount)
            try container.encodeIfPresent(self.currencyCode, forKey: .currencyCode)
            try container.encodeIfPresent(self.cycle, forKey: .cycle)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.nameSetToNone, forKey: .nameSetToNone)
            try container.encodeIfPresent(self.periodEndAtTimestamp, forKey: .periodEndAtTimestamp)
            try container.encodeIfPresent(self.periodStartAtTimestamp, forKey: .periodStartAtTimestamp)
            try container.encodeIfPresent(self.shipperAccountId, forKey: .shipperAccountId)
            try container.encodeIfPresent(self.shipperAccountIdSetToNone, forKey: .shipperAccountIdSetToNone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case amount
            case currencyCode = "currency_code"
            case cycle
            case description
            case name
            case nameSetToNone = "name__set_to_None"
            case periodEndAtTimestamp = "period_end_at_timestamp"
            case periodStartAtTimestamp = "period_start_at_timestamp"
            case shipperAccountId = "shipper_account_id"
            case shipperAccountIdSetToNone = "shipper_account_id__set_to_None"
        }
    }
}