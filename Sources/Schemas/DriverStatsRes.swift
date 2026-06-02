import Foundation

public struct DriverStatsRes: Codable, Hashable, Sendable {
    public let taskGroups: [TaskGroup1]
    public let excludedTaskGroups: [TaskGroup1]
    public let cleanedTaskGroupDurationHours: Double
    public let overlapDetected: Bool
    public let totalMileageObserved: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroups: [TaskGroup1],
        excludedTaskGroups: [TaskGroup1],
        cleanedTaskGroupDurationHours: Double,
        overlapDetected: Bool,
        totalMileageObserved: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroups = taskGroups
        self.excludedTaskGroups = excludedTaskGroups
        self.cleanedTaskGroupDurationHours = cleanedTaskGroupDurationHours
        self.overlapDetected = overlapDetected
        self.totalMileageObserved = totalMileageObserved
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroups = try container.decode([TaskGroup1].self, forKey: .taskGroups)
        self.excludedTaskGroups = try container.decode([TaskGroup1].self, forKey: .excludedTaskGroups)
        self.cleanedTaskGroupDurationHours = try container.decode(Double.self, forKey: .cleanedTaskGroupDurationHours)
        self.overlapDetected = try container.decode(Bool.self, forKey: .overlapDetected)
        self.totalMileageObserved = try container.decodeIfPresent(Double.self, forKey: .totalMileageObserved)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroups, forKey: .taskGroups)
        try container.encode(self.excludedTaskGroups, forKey: .excludedTaskGroups)
        try container.encode(self.cleanedTaskGroupDurationHours, forKey: .cleanedTaskGroupDurationHours)
        try container.encode(self.overlapDetected, forKey: .overlapDetected)
        try container.encodeIfPresent(self.totalMileageObserved, forKey: .totalMileageObserved)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroups = "task_groups"
        case excludedTaskGroups = "excluded_task_groups"
        case cleanedTaskGroupDurationHours = "cleaned_task_group_duration_hours"
        case overlapDetected = "overlap_detected"
        case totalMileageObserved = "total_mileage_observed"
    }
}