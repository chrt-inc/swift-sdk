import Foundation

public struct OrderScheduleSpec1: Codable, Hashable, Sendable {
    public let scheduleCalendarSpec: ScheduleCalendarSpec?
    public let startAt: Date?
    public let endAt: Date?
    /// IANA time zone name (e.g. `America/New_York`).
    public let timeZoneName: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        scheduleCalendarSpec: ScheduleCalendarSpec? = nil,
        startAt: Date? = nil,
        endAt: Date? = nil,
        timeZoneName: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.scheduleCalendarSpec = scheduleCalendarSpec
        self.startAt = startAt
        self.endAt = endAt
        self.timeZoneName = timeZoneName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.scheduleCalendarSpec = try container.decodeIfPresent(ScheduleCalendarSpec.self, forKey: .scheduleCalendarSpec)
        self.startAt = try container.decodeIfPresent(Date.self, forKey: .startAt)
        self.endAt = try container.decodeIfPresent(Date.self, forKey: .endAt)
        self.timeZoneName = try container.decode(String.self, forKey: .timeZoneName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.scheduleCalendarSpec, forKey: .scheduleCalendarSpec)
        try container.encodeIfPresent(self.startAt, forKey: .startAt)
        try container.encodeIfPresent(self.endAt, forKey: .endAt)
        try container.encode(self.timeZoneName, forKey: .timeZoneName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case scheduleCalendarSpec = "schedule_calendar_spec"
        case startAt = "start_at"
        case endAt = "end_at"
        case timeZoneName = "time_zone_name"
    }
}