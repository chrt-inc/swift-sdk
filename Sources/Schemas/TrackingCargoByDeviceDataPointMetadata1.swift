import Foundation

public struct TrackingCargoByDeviceDataPointMetadata1: Codable, Hashable, Sendable {
    public let deviceId: String
    public let cargoId: String
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        deviceId: String,
        cargoId: String,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.deviceId = deviceId
        self.cargoId = cargoId
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.deviceId = try container.decode(String.self, forKey: .deviceId)
        self.cargoId = try container.decode(String.self, forKey: .cargoId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.deviceId, forKey: .deviceId)
        try container.encode(self.cargoId, forKey: .cargoId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case deviceId = "device_id"
        case cargoId = "cargo_id"
        case taskGroupId = "task_group_id"
    }
}