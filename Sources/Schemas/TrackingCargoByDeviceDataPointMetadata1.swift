import Foundation

public struct TrackingCargoByDeviceDataPointMetadata1: Codable, Hashable, Sendable {
    public let deviceId: String
    public let cargoId: String
    public let taskGroupId: String
    public let outlier: Bool?
    public let outlierLabeller: OutlierLabellerEnum?
    public let pytest: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        deviceId: String,
        cargoId: String,
        taskGroupId: String,
        outlier: Bool? = nil,
        outlierLabeller: OutlierLabellerEnum? = nil,
        pytest: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.deviceId = deviceId
        self.cargoId = cargoId
        self.taskGroupId = taskGroupId
        self.outlier = outlier
        self.outlierLabeller = outlierLabeller
        self.pytest = pytest
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.deviceId = try container.decode(String.self, forKey: .deviceId)
        self.cargoId = try container.decode(String.self, forKey: .cargoId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.outlier = try container.decodeIfPresent(Bool.self, forKey: .outlier)
        self.outlierLabeller = try container.decodeIfPresent(OutlierLabellerEnum.self, forKey: .outlierLabeller)
        self.pytest = try container.decodeIfPresent(Bool.self, forKey: .pytest)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.deviceId, forKey: .deviceId)
        try container.encode(self.cargoId, forKey: .cargoId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encodeIfPresent(self.outlier, forKey: .outlier)
        try container.encodeIfPresent(self.outlierLabeller, forKey: .outlierLabeller)
        try container.encodeIfPresent(self.pytest, forKey: .pytest)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case deviceId = "device_id"
        case cargoId = "cargo_id"
        case taskGroupId = "task_group_id"
        case outlier
        case outlierLabeller = "outlier_labeller"
        case pytest
    }
}