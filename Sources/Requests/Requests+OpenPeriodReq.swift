import Foundation

extension Requests {
    public struct OpenPeriodReq: Codable, Hashable, Sendable {
        public let cycle: BillingCycleEnum
        public let periodEndAtTimestamp: Date?
        public let periodStartAtTimestamp: Date?
        public let rateUsd: Double
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cycle: BillingCycleEnum,
            periodEndAtTimestamp: Date? = nil,
            periodStartAtTimestamp: Date? = nil,
            rateUsd: Double,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cycle = cycle
            self.periodEndAtTimestamp = periodEndAtTimestamp
            self.periodStartAtTimestamp = periodStartAtTimestamp
            self.rateUsd = rateUsd
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cycle = try container.decode(BillingCycleEnum.self, forKey: .cycle)
            self.periodEndAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .periodEndAtTimestamp)
            self.periodStartAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .periodStartAtTimestamp)
            self.rateUsd = try container.decode(Double.self, forKey: .rateUsd)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.cycle, forKey: .cycle)
            try container.encodeIfPresent(self.periodEndAtTimestamp, forKey: .periodEndAtTimestamp)
            try container.encodeIfPresent(self.periodStartAtTimestamp, forKey: .periodStartAtTimestamp)
            try container.encode(self.rateUsd, forKey: .rateUsd)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cycle
            case periodEndAtTimestamp = "period_end_at_timestamp"
            case periodStartAtTimestamp = "period_start_at_timestamp"
            case rateUsd = "rate_usd"
        }
    }
}