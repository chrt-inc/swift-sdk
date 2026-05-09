import Foundation

public struct ScheduleSpec: Codable, Hashable, Sendable {
    public let calendars: [ScheduleCalendarSpec]?
    public let intervals: [ScheduleIntervalSpec]?
    public let cronExpressions: [String]?
    public let skip: [ScheduleCalendarSpec]?
    public let startAt: Date?
    public let endAt: Date?
    public let jitter: String?
    public let timeZoneName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        calendars: [ScheduleCalendarSpec]? = nil,
        intervals: [ScheduleIntervalSpec]? = nil,
        cronExpressions: [String]? = nil,
        skip: [ScheduleCalendarSpec]? = nil,
        startAt: Date? = nil,
        endAt: Date? = nil,
        jitter: String? = nil,
        timeZoneName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.calendars = calendars
        self.intervals = intervals
        self.cronExpressions = cronExpressions
        self.skip = skip
        self.startAt = startAt
        self.endAt = endAt
        self.jitter = jitter
        self.timeZoneName = timeZoneName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.calendars = try container.decodeIfPresent([ScheduleCalendarSpec].self, forKey: .calendars)
        self.intervals = try container.decodeIfPresent([ScheduleIntervalSpec].self, forKey: .intervals)
        self.cronExpressions = try container.decodeIfPresent([String].self, forKey: .cronExpressions)
        self.skip = try container.decodeIfPresent([ScheduleCalendarSpec].self, forKey: .skip)
        self.startAt = try container.decodeIfPresent(Date.self, forKey: .startAt)
        self.endAt = try container.decodeIfPresent(Date.self, forKey: .endAt)
        self.jitter = try container.decodeIfPresent(String.self, forKey: .jitter)
        self.timeZoneName = try container.decodeIfPresent(String.self, forKey: .timeZoneName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.calendars, forKey: .calendars)
        try container.encodeIfPresent(self.intervals, forKey: .intervals)
        try container.encodeIfPresent(self.cronExpressions, forKey: .cronExpressions)
        try container.encodeIfPresent(self.skip, forKey: .skip)
        try container.encodeIfPresent(self.startAt, forKey: .startAt)
        try container.encodeIfPresent(self.endAt, forKey: .endAt)
        try container.encodeIfPresent(self.jitter, forKey: .jitter)
        try container.encodeIfPresent(self.timeZoneName, forKey: .timeZoneName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case calendars
        case intervals
        case cronExpressions = "cron_expressions"
        case skip
        case startAt = "start_at"
        case endAt = "end_at"
        case jitter
        case timeZoneName = "time_zone_name"
    }
}