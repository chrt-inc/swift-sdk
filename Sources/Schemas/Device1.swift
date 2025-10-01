import Foundation

public struct Device1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let orgId: String
    public let deviceMacAddress: String
    public let deviceToken: Nullable<String>?
    public let type: Nullable<TrackingDeviceTypeEnum1>?
    public let registeredAtTimestamp: Nullable<Date>?
    public let firstSeenAtTimestamp: Nullable<Date>?
    public let lastSeenAtLocation: Nullable<LocationFeature>?
    public let lastSeenAtTimestamp: Nullable<Date>?
    public let lastSeenBatteryLevel: Nullable<String>?
    public let sessionId: Nullable<String>?
    public let cargoId: Nullable<String>?
    public let comments: Nullable<String>?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        orgId: String,
        deviceMacAddress: String,
        deviceToken: Nullable<String>? = nil,
        type: Nullable<TrackingDeviceTypeEnum1>? = nil,
        registeredAtTimestamp: Nullable<Date>? = nil,
        firstSeenAtTimestamp: Nullable<Date>? = nil,
        lastSeenAtLocation: Nullable<LocationFeature>? = nil,
        lastSeenAtTimestamp: Nullable<Date>? = nil,
        lastSeenBatteryLevel: Nullable<String>? = nil,
        sessionId: Nullable<String>? = nil,
        cargoId: Nullable<String>? = nil,
        comments: Nullable<String>? = nil,
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
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
        self.deviceToken = try container.decodeNullableIfPresent(String.self, forKey: .deviceToken)
        self.type = try container.decodeNullableIfPresent(TrackingDeviceTypeEnum1.self, forKey: .type)
        self.registeredAtTimestamp = try container.decodeNullableIfPresent(Date.self, forKey: .registeredAtTimestamp)
        self.firstSeenAtTimestamp = try container.decodeNullableIfPresent(Date.self, forKey: .firstSeenAtTimestamp)
        self.lastSeenAtLocation = try container.decodeNullableIfPresent(LocationFeature.self, forKey: .lastSeenAtLocation)
        self.lastSeenAtTimestamp = try container.decodeNullableIfPresent(Date.self, forKey: .lastSeenAtTimestamp)
        self.lastSeenBatteryLevel = try container.decodeNullableIfPresent(String.self, forKey: .lastSeenBatteryLevel)
        self.sessionId = try container.decodeNullableIfPresent(String.self, forKey: .sessionId)
        self.cargoId = try container.decodeNullableIfPresent(String.self, forKey: .cargoId)
        self.comments = try container.decodeNullableIfPresent(String.self, forKey: .comments)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.deviceMacAddress, forKey: .deviceMacAddress)
        try container.encodeNullableIfPresent(self.deviceToken, forKey: .deviceToken)
        try container.encodeNullableIfPresent(self.type, forKey: .type)
        try container.encodeNullableIfPresent(self.registeredAtTimestamp, forKey: .registeredAtTimestamp)
        try container.encodeNullableIfPresent(self.firstSeenAtTimestamp, forKey: .firstSeenAtTimestamp)
        try container.encodeNullableIfPresent(self.lastSeenAtLocation, forKey: .lastSeenAtLocation)
        try container.encodeNullableIfPresent(self.lastSeenAtTimestamp, forKey: .lastSeenAtTimestamp)
        try container.encodeNullableIfPresent(self.lastSeenBatteryLevel, forKey: .lastSeenBatteryLevel)
        try container.encodeNullableIfPresent(self.sessionId, forKey: .sessionId)
        try container.encodeNullableIfPresent(self.cargoId, forKey: .cargoId)
        try container.encodeNullableIfPresent(self.comments, forKey: .comments)
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
        case id = "_id"
    }
}