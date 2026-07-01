import Foundation

public struct DriverAnalyticsTaskGroup: Codable, Hashable, Sendable {
    /// Observed GPS mileage for this task group from tracking.task_group_by_driver_timeseries across the full task-group in-progress interval, excluding outlier points. This can include mileage outside the requested analytics window when the task group overlaps the window but starts before it or ends after it.
    public let observedMileageOrderInProgress: Double
    /// Task group assigned to the driver whose in-progress interval overlaps the requested analytics window.
    public let taskGroup: TaskGroup1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        observedMileageOrderInProgress: Double,
        taskGroup: TaskGroup1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.observedMileageOrderInProgress = observedMileageOrderInProgress
        self.taskGroup = taskGroup
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.observedMileageOrderInProgress = try container.decode(Double.self, forKey: .observedMileageOrderInProgress)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.observedMileageOrderInProgress, forKey: .observedMileageOrderInProgress)
        try container.encode(self.taskGroup, forKey: .taskGroup)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case observedMileageOrderInProgress = "observed_mileage_order_in_progress"
        case taskGroup = "task_group"
    }
}