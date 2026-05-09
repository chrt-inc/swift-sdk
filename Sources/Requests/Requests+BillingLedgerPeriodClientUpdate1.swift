import Foundation

extension Requests {
    public struct BillingLedgerPeriodClientUpdate1: Codable, Hashable, Sendable {
        public let periodStartAtTimestamp: Date?
        public let periodEndAtTimestamp: Date?
        public let cycle: BillingCycleEnum?
        public let rateUsd: Double?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            periodStartAtTimestamp: Date? = nil,
            periodEndAtTimestamp: Date? = nil,
            cycle: BillingCycleEnum? = nil,
            rateUsd: Double? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.periodStartAtTimestamp = periodStartAtTimestamp
            self.periodEndAtTimestamp = periodEndAtTimestamp
            self.cycle = cycle
            self.rateUsd = rateUsd
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.periodStartAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .periodStartAtTimestamp)
            self.periodEndAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .periodEndAtTimestamp)
            self.cycle = try container.decodeIfPresent(BillingCycleEnum.self, forKey: .cycle)
            self.rateUsd = try container.decodeIfPresent(Double.self, forKey: .rateUsd)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.periodStartAtTimestamp, forKey: .periodStartAtTimestamp)
            try container.encodeIfPresent(self.periodEndAtTimestamp, forKey: .periodEndAtTimestamp)
            try container.encodeIfPresent(self.cycle, forKey: .cycle)
            try container.encodeIfPresent(self.rateUsd, forKey: .rateUsd)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case periodStartAtTimestamp = "period_start_at_timestamp"
            case periodEndAtTimestamp = "period_end_at_timestamp"
            case cycle
            case rateUsd = "rate_usd"
        }
    }
}