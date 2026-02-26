import Foundation

extension Requests {
    public struct AnalyticsTimePeriodRequest: Codable, Hashable, Sendable {
        public let start: Date
        public let end: Date
        public let granularity: TimeGranularity?
        public let timezone: TimezoneEnum?
        public let startOfWeek: StartOfWeek?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            start: Date,
            end: Date,
            granularity: TimeGranularity? = nil,
            timezone: TimezoneEnum? = nil,
            startOfWeek: StartOfWeek? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.start = start
            self.end = end
            self.granularity = granularity
            self.timezone = timezone
            self.startOfWeek = startOfWeek
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.start = try container.decode(Date.self, forKey: .start)
            self.end = try container.decode(Date.self, forKey: .end)
            self.granularity = try container.decodeIfPresent(TimeGranularity.self, forKey: .granularity)
            self.timezone = try container.decodeIfPresent(TimezoneEnum.self, forKey: .timezone)
            self.startOfWeek = try container.decodeIfPresent(StartOfWeek.self, forKey: .startOfWeek)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.start, forKey: .start)
            try container.encode(self.end, forKey: .end)
            try container.encodeIfPresent(self.granularity, forKey: .granularity)
            try container.encodeIfPresent(self.timezone, forKey: .timezone)
            try container.encodeIfPresent(self.startOfWeek, forKey: .startOfWeek)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case start
            case end
            case granularity
            case timezone
            case startOfWeek = "start_of_week"
        }
    }
}