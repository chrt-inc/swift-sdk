import Foundation

extension Requests {
    public struct OrderScheduleRoundTripModelTestReq: Codable, Hashable, Sendable {
        public let scheduleCalendarSpec: ScheduleCalendarSpec?
        public let scheduleIntervalSpec: ScheduleIntervalSpec?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            scheduleCalendarSpec: ScheduleCalendarSpec? = nil,
            scheduleIntervalSpec: ScheduleIntervalSpec? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.scheduleCalendarSpec = scheduleCalendarSpec
            self.scheduleIntervalSpec = scheduleIntervalSpec
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.scheduleCalendarSpec = try container.decodeIfPresent(ScheduleCalendarSpec.self, forKey: .scheduleCalendarSpec)
            self.scheduleIntervalSpec = try container.decodeIfPresent(ScheduleIntervalSpec.self, forKey: .scheduleIntervalSpec)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.scheduleCalendarSpec, forKey: .scheduleCalendarSpec)
            try container.encodeIfPresent(self.scheduleIntervalSpec, forKey: .scheduleIntervalSpec)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case scheduleCalendarSpec = "schedule_calendar_spec"
            case scheduleIntervalSpec = "schedule_interval_spec"
        }
    }
}