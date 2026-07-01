import Foundation

/// Specification relative to calendar time when to run an action.
/// 
/// A timestamp matches if at least one range of each field matches except for
/// year. If year is missing, that means all years match. For all fields besides
/// year, at least one range must be present to match anything.
public struct ScheduleCalendarSpec: Codable, Hashable, Sendable {
    public let comment: String?
    public let dayOfMonth: [ScheduleRange]?
    public let dayOfWeek: [ScheduleRange]?
    public let hour: [ScheduleRange]?
    public let minute: [ScheduleRange]?
    public let month: [ScheduleRange]?
    public let second: [ScheduleRange]?
    public let year: [ScheduleRange]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        comment: String? = nil,
        dayOfMonth: [ScheduleRange]? = nil,
        dayOfWeek: [ScheduleRange]? = nil,
        hour: [ScheduleRange]? = nil,
        minute: [ScheduleRange]? = nil,
        month: [ScheduleRange]? = nil,
        second: [ScheduleRange]? = nil,
        year: [ScheduleRange]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.comment = comment
        self.dayOfMonth = dayOfMonth
        self.dayOfWeek = dayOfWeek
        self.hour = hour
        self.minute = minute
        self.month = month
        self.second = second
        self.year = year
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.comment = try container.decodeIfPresent(String.self, forKey: .comment)
        self.dayOfMonth = try container.decodeIfPresent([ScheduleRange].self, forKey: .dayOfMonth)
        self.dayOfWeek = try container.decodeIfPresent([ScheduleRange].self, forKey: .dayOfWeek)
        self.hour = try container.decodeIfPresent([ScheduleRange].self, forKey: .hour)
        self.minute = try container.decodeIfPresent([ScheduleRange].self, forKey: .minute)
        self.month = try container.decodeIfPresent([ScheduleRange].self, forKey: .month)
        self.second = try container.decodeIfPresent([ScheduleRange].self, forKey: .second)
        self.year = try container.decodeIfPresent([ScheduleRange].self, forKey: .year)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.comment, forKey: .comment)
        try container.encodeIfPresent(self.dayOfMonth, forKey: .dayOfMonth)
        try container.encodeIfPresent(self.dayOfWeek, forKey: .dayOfWeek)
        try container.encodeIfPresent(self.hour, forKey: .hour)
        try container.encodeIfPresent(self.minute, forKey: .minute)
        try container.encodeIfPresent(self.month, forKey: .month)
        try container.encodeIfPresent(self.second, forKey: .second)
        try container.encodeIfPresent(self.year, forKey: .year)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case comment
        case dayOfMonth = "day_of_month"
        case dayOfWeek = "day_of_week"
        case hour
        case minute
        case month
        case second
        case year
    }
}