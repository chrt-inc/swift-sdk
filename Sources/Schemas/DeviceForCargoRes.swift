import Foundation

/// A device as seen by the cargo's order parties, who may not own or share the device.
///
/// NOTE - excludes device_token (the webhook secret), location, and owner-only fields.
public struct DeviceForCargoRes: Codable, Hashable, Sendable {
    public let deviceId: String
    public let deviceMacAddress: String
    public let isCurrentlyLinked: Bool
    public let lastSeenAtTimestamp: Date?
    public let lastSeenBatteryLevel: String?
    public let type: TrackingDeviceTypeEnum1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        deviceId: String,
        deviceMacAddress: String,
        isCurrentlyLinked: Bool,
        lastSeenAtTimestamp: Date? = nil,
        lastSeenBatteryLevel: String? = nil,
        type: TrackingDeviceTypeEnum1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.deviceId = deviceId
        self.deviceMacAddress = deviceMacAddress
        self.isCurrentlyLinked = isCurrentlyLinked
        self.lastSeenAtTimestamp = lastSeenAtTimestamp
        self.lastSeenBatteryLevel = lastSeenBatteryLevel
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.deviceId = try container.decode(String.self, forKey: .deviceId)
        self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
        self.isCurrentlyLinked = try container.decode(Bool.self, forKey: .isCurrentlyLinked)
        self.lastSeenAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastSeenAtTimestamp)
        self.lastSeenBatteryLevel = try container.decodeIfPresent(String.self, forKey: .lastSeenBatteryLevel)
        self.type = try container.decodeIfPresent(TrackingDeviceTypeEnum1.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.deviceId, forKey: .deviceId)
        try container.encode(self.deviceMacAddress, forKey: .deviceMacAddress)
        try container.encode(self.isCurrentlyLinked, forKey: .isCurrentlyLinked)
        try container.encodeIfPresent(self.lastSeenAtTimestamp, forKey: .lastSeenAtTimestamp)
        try container.encodeIfPresent(self.lastSeenBatteryLevel, forKey: .lastSeenBatteryLevel)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case deviceId = "device_id"
        case deviceMacAddress = "device_mac_address"
        case isCurrentlyLinked = "is_currently_linked"
        case lastSeenAtTimestamp = "last_seen_at_timestamp"
        case lastSeenBatteryLevel = "last_seen_battery_level"
        case type
    }
}