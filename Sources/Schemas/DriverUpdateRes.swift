import Foundation

/// Response showing what was updated.
public struct DriverUpdateRes: Codable, Hashable, Sendable {
    public let cargoTrackingCount: Int
    public let driverByDriverPingRecorded: Bool
    public let driverUpdated: Bool
    public let taskGroupTrackingCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cargoTrackingCount: Int,
        driverByDriverPingRecorded: Bool,
        driverUpdated: Bool,
        taskGroupTrackingCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cargoTrackingCount = cargoTrackingCount
        self.driverByDriverPingRecorded = driverByDriverPingRecorded
        self.driverUpdated = driverUpdated
        self.taskGroupTrackingCount = taskGroupTrackingCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cargoTrackingCount = try container.decode(Int.self, forKey: .cargoTrackingCount)
        self.driverByDriverPingRecorded = try container.decode(Bool.self, forKey: .driverByDriverPingRecorded)
        self.driverUpdated = try container.decode(Bool.self, forKey: .driverUpdated)
        self.taskGroupTrackingCount = try container.decode(Int.self, forKey: .taskGroupTrackingCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.cargoTrackingCount, forKey: .cargoTrackingCount)
        try container.encode(self.driverByDriverPingRecorded, forKey: .driverByDriverPingRecorded)
        try container.encode(self.driverUpdated, forKey: .driverUpdated)
        try container.encode(self.taskGroupTrackingCount, forKey: .taskGroupTrackingCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cargoTrackingCount = "cargo_tracking_count"
        case driverByDriverPingRecorded = "driver_by_driver_ping_recorded"
        case driverUpdated = "driver_updated"
        case taskGroupTrackingCount = "task_group_tracking_count"
    }
}