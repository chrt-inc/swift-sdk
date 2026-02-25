import Foundation

extension Requests {
    public struct AnalyticsTimePeriodRequest: Codable, Hashable, Sendable {
        public let end: Date
        public let granularity: TimeGranularity?
        public let start: Date
        public let startOfWeek: StartOfWeek?
        public let timezone: TimezoneEnum?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            end: Date,
            granularity: TimeGranularity? = nil,
            start: Date,
            startOfWeek: StartOfWeek? = nil,
            timezone: TimezoneEnum? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.end = end
            self.granularity = granularity
            self.start = start
            self.startOfWeek = startOfWeek
            self.timezone = timezone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.end = try container.decode(Date.self, forKey: .end)
            self.granularity = try container.decodeIfPresent(TimeGranularity.self, forKey: .granularity)
            self.start = try container.decode(Date.self, forKey: .start)
            self.startOfWeek = try container.decodeIfPresent(StartOfWeek.self, forKey: .startOfWeek)
            self.timezone = try container.decodeIfPresent(TimezoneEnum.self, forKey: .timezone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.end, forKey: .end)
            try container.encodeIfPresent(self.granularity, forKey: .granularity)
            try container.encode(self.start, forKey: .start)
            try container.encodeIfPresent(self.startOfWeek, forKey: .startOfWeek)
            try container.encodeIfPresent(self.timezone, forKey: .timezone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case end
            case granularity
            case start
            case startOfWeek = "start_of_week"
            case timezone
        }
    }
}