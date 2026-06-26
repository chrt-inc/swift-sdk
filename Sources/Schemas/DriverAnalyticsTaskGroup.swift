import Foundation

public struct DriverAnalyticsTaskGroup: Codable, Hashable, Sendable {
    /// Task group assigned to the driver whose in-progress interval overlaps the requested analytics window.
    public let taskGroup: TaskGroup1
    /// Observed GPS mileage for this task group from tracking.task_group_by_driver_timeseries across the full task-group in-progress interval, excluding outlier points. This can include mileage outside the requested analytics window when the task group overlaps the window but starts before it or ends after it.
    public let observedMileageOrderInProgress: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroup: TaskGroup1,
        observedMileageOrderInProgress: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroup = taskGroup
        self.observedMileageOrderInProgress = observedMileageOrderInProgress
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.observedMileageOrderInProgress = try container.decode(Double.self, forKey: .observedMileageOrderInProgress)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroup, forKey: .taskGroup)
        try container.encode(self.observedMileageOrderInProgress, forKey: .observedMileageOrderInProgress)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroup = "task_group"
        case observedMileageOrderInProgress = "observed_mileage_order_in_progress"
    }
}