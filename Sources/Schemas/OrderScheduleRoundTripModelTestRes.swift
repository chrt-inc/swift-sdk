import Foundation

public struct OrderScheduleRoundTripModelTestRes: Codable, Hashable, Sendable {
    public let scheduleCalendarSpec: ScheduleCalendarSpec?
    public let scheduleIntervalSpec: ScheduleIntervalSpec?
    public let executedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let callerUserId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        scheduleCalendarSpec: ScheduleCalendarSpec? = nil,
        scheduleIntervalSpec: ScheduleIntervalSpec? = nil,
        executedAtTimestamp: Date,
        callerUserId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.scheduleCalendarSpec = scheduleCalendarSpec
        self.scheduleIntervalSpec = scheduleIntervalSpec
        self.executedAtTimestamp = executedAtTimestamp
        self.callerUserId = callerUserId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.scheduleCalendarSpec = try container.decodeIfPresent(ScheduleCalendarSpec.self, forKey: .scheduleCalendarSpec)
        self.scheduleIntervalSpec = try container.decodeIfPresent(ScheduleIntervalSpec.self, forKey: .scheduleIntervalSpec)
        self.executedAtTimestamp = try container.decode(Date.self, forKey: .executedAtTimestamp)
        self.callerUserId = try container.decode(String.self, forKey: .callerUserId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.scheduleCalendarSpec, forKey: .scheduleCalendarSpec)
        try container.encodeIfPresent(self.scheduleIntervalSpec, forKey: .scheduleIntervalSpec)
        try container.encode(self.executedAtTimestamp, forKey: .executedAtTimestamp)
        try container.encode(self.callerUserId, forKey: .callerUserId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case scheduleCalendarSpec = "schedule_calendar_spec"
        case scheduleIntervalSpec = "schedule_interval_spec"
        case executedAtTimestamp = "executed_at_timestamp"
        case callerUserId = "caller_user_id"
    }
}