import Foundation

public struct TrackingTaskGroupByDriverDataPointMetadata1: Codable, Hashable, Sendable {
    public let driverId: String
    public let taskGroupId: String
    public let outlier: Nullable<Bool>?
    public let outlierLabeller: Nullable<OutlierLabellerEnum>?
    public let pytest: Nullable<Bool>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        driverId: String,
        taskGroupId: String,
        outlier: Nullable<Bool>? = nil,
        outlierLabeller: Nullable<OutlierLabellerEnum>? = nil,
        pytest: Nullable<Bool>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.driverId = driverId
        self.taskGroupId = taskGroupId
        self.outlier = outlier
        self.outlierLabeller = outlierLabeller
        self.pytest = pytest
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.driverId = try container.decode(String.self, forKey: .driverId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.outlier = try container.decodeNullableIfPresent(Bool.self, forKey: .outlier)
        self.outlierLabeller = try container.decodeNullableIfPresent(OutlierLabellerEnum.self, forKey: .outlierLabeller)
        self.pytest = try container.decodeNullableIfPresent(Bool.self, forKey: .pytest)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.driverId, forKey: .driverId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encodeNullableIfPresent(self.outlier, forKey: .outlier)
        try container.encodeNullableIfPresent(self.outlierLabeller, forKey: .outlierLabeller)
        try container.encodeNullableIfPresent(self.pytest, forKey: .pytest)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case driverId = "driver_id"
        case taskGroupId = "task_group_id"
        case outlier
        case outlierLabeller = "outlier_labeller"
        case pytest
    }
}