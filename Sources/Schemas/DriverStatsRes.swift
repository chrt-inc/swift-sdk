import Foundation

public struct DriverStatsRes: Codable, Hashable, Sendable {
    public let driverAnalyticsDays: [DriverAnalyticsDay]?
    public let driverAnalyticsTaskGroups: [DriverAnalyticsTaskGroup]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        driverAnalyticsDays: [DriverAnalyticsDay]? = nil,
        driverAnalyticsTaskGroups: [DriverAnalyticsTaskGroup]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.driverAnalyticsDays = driverAnalyticsDays
        self.driverAnalyticsTaskGroups = driverAnalyticsTaskGroups
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.driverAnalyticsDays = try container.decodeIfPresent([DriverAnalyticsDay].self, forKey: .driverAnalyticsDays)
        self.driverAnalyticsTaskGroups = try container.decodeIfPresent([DriverAnalyticsTaskGroup].self, forKey: .driverAnalyticsTaskGroups)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.driverAnalyticsDays, forKey: .driverAnalyticsDays)
        try container.encodeIfPresent(self.driverAnalyticsTaskGroups, forKey: .driverAnalyticsTaskGroups)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case driverAnalyticsDays = "driver_analytics_days"
        case driverAnalyticsTaskGroups = "driver_analytics_task_groups"
    }
}