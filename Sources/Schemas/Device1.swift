import Foundation

public struct Device1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let orgId: String
    public let deviceMacAddress: String
    public let deviceToken: String?
    public let type: TrackingDeviceTypeEnum1?
    public let registeredAtTimestamp: Date?
    public let firstSeenAtTimestamp: Date?
    public let lastSeenAtLocation: LocationFeature?
    public let lastSeenAtTimestamp: Date?
    public let lastSeenBatteryLevel: String?
    public let sessionId: String?
    public let cargoId: String?
    public let comments: String?
    public let offChrtOrderId: String?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        orgId: String,
        deviceMacAddress: String,
        deviceToken: String? = nil,
        type: TrackingDeviceTypeEnum1? = nil,
        registeredAtTimestamp: Date? = nil,
        firstSeenAtTimestamp: Date? = nil,
        lastSeenAtLocation: LocationFeature? = nil,
        lastSeenAtTimestamp: Date? = nil,
        lastSeenBatteryLevel: String? = nil,
        sessionId: String? = nil,
        cargoId: String? = nil,
        comments: String? = nil,
        offChrtOrderId: String? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.orgId = orgId
        self.deviceMacAddress = deviceMacAddress
        self.deviceToken = deviceToken
        self.type = type
        self.registeredAtTimestamp = registeredAtTimestamp
        self.firstSeenAtTimestamp = firstSeenAtTimestamp
        self.lastSeenAtLocation = lastSeenAtLocation
        self.lastSeenAtTimestamp = lastSeenAtTimestamp
        self.lastSeenBatteryLevel = lastSeenBatteryLevel
        self.sessionId = sessionId
        self.cargoId = cargoId
        self.comments = comments
        self.offChrtOrderId = offChrtOrderId
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
        self.deviceToken = try container.decodeIfPresent(String.self, forKey: .deviceToken)
        self.type = try container.decodeIfPresent(TrackingDeviceTypeEnum1.self, forKey: .type)
        self.registeredAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .registeredAtTimestamp)
        self.firstSeenAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .firstSeenAtTimestamp)
        self.lastSeenAtLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .lastSeenAtLocation)
        self.lastSeenAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastSeenAtTimestamp)
        self.lastSeenBatteryLevel = try container.decodeIfPresent(String.self, forKey: .lastSeenBatteryLevel)
        self.sessionId = try container.decodeIfPresent(String.self, forKey: .sessionId)
        self.cargoId = try container.decodeIfPresent(String.self, forKey: .cargoId)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.offChrtOrderId = try container.decodeIfPresent(String.self, forKey: .offChrtOrderId)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.deviceMacAddress, forKey: .deviceMacAddress)
        try container.encodeIfPresent(self.deviceToken, forKey: .deviceToken)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.registeredAtTimestamp, forKey: .registeredAtTimestamp)
        try container.encodeIfPresent(self.firstSeenAtTimestamp, forKey: .firstSeenAtTimestamp)
        try container.encodeIfPresent(self.lastSeenAtLocation, forKey: .lastSeenAtLocation)
        try container.encodeIfPresent(self.lastSeenAtTimestamp, forKey: .lastSeenAtTimestamp)
        try container.encodeIfPresent(self.lastSeenBatteryLevel, forKey: .lastSeenBatteryLevel)
        try container.encodeIfPresent(self.sessionId, forKey: .sessionId)
        try container.encodeIfPresent(self.cargoId, forKey: .cargoId)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.offChrtOrderId, forKey: .offChrtOrderId)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case orgId = "org_id"
        case deviceMacAddress = "device_mac_address"
        case deviceToken = "device_token"
        case type
        case registeredAtTimestamp = "registered_at_timestamp"
        case firstSeenAtTimestamp = "first_seen_at_timestamp"
        case lastSeenAtLocation = "last_seen_at_location"
        case lastSeenAtTimestamp = "last_seen_at_timestamp"
        case lastSeenBatteryLevel = "last_seen_battery_level"
        case sessionId = "session_id"
        case cargoId = "cargo_id"
        case comments
        case offChrtOrderId = "off_chrt_order_id"
        case id = "_id"
    }
}