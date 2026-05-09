import Foundation

public struct ScheduleCalendarSpec: Codable, Hashable, Sendable {
    public let second: [ScheduleRange]?
    public let minute: [ScheduleRange]?
    public let hour: [ScheduleRange]?
    public let dayOfMonth: [ScheduleRange]?
    public let month: [ScheduleRange]?
    public let year: [ScheduleRange]?
    public let dayOfWeek: [ScheduleRange]?
    public let comment: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        second: [ScheduleRange]? = nil,
        minute: [ScheduleRange]? = nil,
        hour: [ScheduleRange]? = nil,
        dayOfMonth: [ScheduleRange]? = nil,
        month: [ScheduleRange]? = nil,
        year: [ScheduleRange]? = nil,
        dayOfWeek: [ScheduleRange]? = nil,
        comment: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.second = second
        self.minute = minute
        self.hour = hour
        self.dayOfMonth = dayOfMonth
        self.month = month
        self.year = year
        self.dayOfWeek = dayOfWeek
        self.comment = comment
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.second = try container.decodeIfPresent([ScheduleRange].self, forKey: .second)
        self.minute = try container.decodeIfPresent([ScheduleRange].self, forKey: .minute)
        self.hour = try container.decodeIfPresent([ScheduleRange].self, forKey: .hour)
        self.dayOfMonth = try container.decodeIfPresent([ScheduleRange].self, forKey: .dayOfMonth)
        self.month = try container.decodeIfPresent([ScheduleRange].self, forKey: .month)
        self.year = try container.decodeIfPresent([ScheduleRange].self, forKey: .year)
        self.dayOfWeek = try container.decodeIfPresent([ScheduleRange].self, forKey: .dayOfWeek)
        self.comment = try container.decodeIfPresent(String.self, forKey: .comment)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.second, forKey: .second)
        try container.encodeIfPresent(self.minute, forKey: .minute)
        try container.encodeIfPresent(self.hour, forKey: .hour)
        try container.encodeIfPresent(self.dayOfMonth, forKey: .dayOfMonth)
        try container.encodeIfPresent(self.month, forKey: .month)
        try container.encodeIfPresent(self.year, forKey: .year)
        try container.encodeIfPresent(self.dayOfWeek, forKey: .dayOfWeek)
        try container.encodeIfPresent(self.comment, forKey: .comment)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case second
        case minute
        case hour
        case dayOfMonth = "day_of_month"
        case month
        case year
        case dayOfWeek = "day_of_week"
        case comment
    }
}