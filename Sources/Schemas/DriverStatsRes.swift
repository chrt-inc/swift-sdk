import Foundation

public struct DriverStatsRes: Codable, Hashable, Sendable {
    public let taskGroups: [TaskGroup1]
    public let excludedTaskGroups: [TaskGroup1]
    /// Summed from task group in-progress intervals merged to eliminate double-counting of overlapping task groups.
    public let dedupedTaskGroupDriverHours: Double
    public let overlappingTaskGroupsDetected: Bool
    /// Total mileage recorded for this driver across all tracked pings that fall within the requested query window. Independent of task group filtering or deduplication. i.e. includes pings inside and outside of task group time windows
    public let totalDriverMileageTracked: Double?
    /// Total mileage from pings that fall within task group in-progress merged intervals. i.e. excludes pings outside of merged task group time windows
    public let dedupedTaskGroupDriverMileageTracked: Double?
    public let selfReportedHoursAndMileage: [DriverSelfReportedHoursAndMileage1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroups: [TaskGroup1],
        excludedTaskGroups: [TaskGroup1],
        dedupedTaskGroupDriverHours: Double,
        overlappingTaskGroupsDetected: Bool,
        totalDriverMileageTracked: Double? = nil,
        dedupedTaskGroupDriverMileageTracked: Double? = nil,
        selfReportedHoursAndMileage: [DriverSelfReportedHoursAndMileage1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroups = taskGroups
        self.excludedTaskGroups = excludedTaskGroups
        self.dedupedTaskGroupDriverHours = dedupedTaskGroupDriverHours
        self.overlappingTaskGroupsDetected = overlappingTaskGroupsDetected
        self.totalDriverMileageTracked = totalDriverMileageTracked
        self.dedupedTaskGroupDriverMileageTracked = dedupedTaskGroupDriverMileageTracked
        self.selfReportedHoursAndMileage = selfReportedHoursAndMileage
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroups = try container.decode([TaskGroup1].self, forKey: .taskGroups)
        self.excludedTaskGroups = try container.decode([TaskGroup1].self, forKey: .excludedTaskGroups)
        self.dedupedTaskGroupDriverHours = try container.decode(Double.self, forKey: .dedupedTaskGroupDriverHours)
        self.overlappingTaskGroupsDetected = try container.decode(Bool.self, forKey: .overlappingTaskGroupsDetected)
        self.totalDriverMileageTracked = try container.decodeIfPresent(Double.self, forKey: .totalDriverMileageTracked)
        self.dedupedTaskGroupDriverMileageTracked = try container.decodeIfPresent(Double.self, forKey: .dedupedTaskGroupDriverMileageTracked)
        self.selfReportedHoursAndMileage = try container.decodeIfPresent([DriverSelfReportedHoursAndMileage1].self, forKey: .selfReportedHoursAndMileage)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroups, forKey: .taskGroups)
        try container.encode(self.excludedTaskGroups, forKey: .excludedTaskGroups)
        try container.encode(self.dedupedTaskGroupDriverHours, forKey: .dedupedTaskGroupDriverHours)
        try container.encode(self.overlappingTaskGroupsDetected, forKey: .overlappingTaskGroupsDetected)
        try container.encodeIfPresent(self.totalDriverMileageTracked, forKey: .totalDriverMileageTracked)
        try container.encodeIfPresent(self.dedupedTaskGroupDriverMileageTracked, forKey: .dedupedTaskGroupDriverMileageTracked)
        try container.encodeIfPresent(self.selfReportedHoursAndMileage, forKey: .selfReportedHoursAndMileage)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroups = "task_groups"
        case excludedTaskGroups = "excluded_task_groups"
        case dedupedTaskGroupDriverHours = "deduped_task_group_driver_hours"
        case overlappingTaskGroupsDetected = "overlapping_task_groups_detected"
        case totalDriverMileageTracked = "total_driver_mileage_tracked"
        case dedupedTaskGroupDriverMileageTracked = "deduped_task_group_driver_mileage_tracked"
        case selfReportedHoursAndMileage = "self_reported_hours_and_mileage"
    }
}