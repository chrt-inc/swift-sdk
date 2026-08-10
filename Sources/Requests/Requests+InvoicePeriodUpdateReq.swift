import Foundation

extension Requests {
    public struct InvoicePeriodUpdateReq: Codable, Hashable, Sendable {
        public let periodEndAtTimestamp: Date
        public let periodStartAtTimestamp: Date
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            periodEndAtTimestamp: Date,
            periodStartAtTimestamp: Date,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.periodEndAtTimestamp = periodEndAtTimestamp
            self.periodStartAtTimestamp = periodStartAtTimestamp
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.periodEndAtTimestamp = try container.decode(Date.self, forKey: .periodEndAtTimestamp)
            self.periodStartAtTimestamp = try container.decode(Date.self, forKey: .periodStartAtTimestamp)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.periodEndAtTimestamp, forKey: .periodEndAtTimestamp)
            try container.encode(self.periodStartAtTimestamp, forKey: .periodStartAtTimestamp)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case periodEndAtTimestamp = "period_end_at_timestamp"
            case periodStartAtTimestamp = "period_start_at_timestamp"
        }
    }
}