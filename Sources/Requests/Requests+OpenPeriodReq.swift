import Foundation

extension Requests {
    public struct OpenPeriodReq: Codable, Hashable, Sendable {
        public let cycle: BillingCycleEnum
        public let rateUsd: Double
        public let periodStartAtTimestamp: Date?
        public let periodEndAtTimestamp: Date?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cycle: BillingCycleEnum,
            rateUsd: Double,
            periodStartAtTimestamp: Date? = nil,
            periodEndAtTimestamp: Date? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cycle = cycle
            self.rateUsd = rateUsd
            self.periodStartAtTimestamp = periodStartAtTimestamp
            self.periodEndAtTimestamp = periodEndAtTimestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cycle = try container.decode(BillingCycleEnum.self, forKey: .cycle)
            self.rateUsd = try container.decode(Double.self, forKey: .rateUsd)
            self.periodStartAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .periodStartAtTimestamp)
            self.periodEndAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .periodEndAtTimestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.cycle, forKey: .cycle)
            try container.encode(self.rateUsd, forKey: .rateUsd)
            try container.encodeIfPresent(self.periodStartAtTimestamp, forKey: .periodStartAtTimestamp)
            try container.encodeIfPresent(self.periodEndAtTimestamp, forKey: .periodEndAtTimestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cycle
            case rateUsd = "rate_usd"
            case periodStartAtTimestamp = "period_start_at_timestamp"
            case periodEndAtTimestamp = "period_end_at_timestamp"
        }
    }
}