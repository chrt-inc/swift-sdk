import Foundation

/// Response model for list/search views.
/// 
/// Excludes historical relationship fields:
/// - past_session_ids
/// - past_cargo_ids
public struct DeviceLimitedForList1: Codable, Hashable, Sendable {
    public let id: String
    public let activeCargoId: String?
    public let activeSessionId: String?
    public let archived: Bool?
    public let comments: String?
    public let deviceMacAddress: String
    public let deviceToken: String?
    public let firstSeenAtTimestamp: Date?
    public let lastSeenAtLocation: LocationFeature?
    public let lastSeenAtLocationCity: String?
    public let lastSeenAtLocationLargeCity: String?
    public let lastSeenAtTimestamp: Date?
    public let lastSeenBatteryLevel: String?
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let offChrtReferenceId: String?
    public let offChrtShipperOrgDataId: String?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let pauseWindows: [DevicePausedTimeWindow1]?
    public let paused: Bool?
    public let registeredAtTimestamp: Date?
    public let schemaVersion: Int
    public let sharedWithOrgIds: [String]?
    public let type: TrackingDeviceTypeEnum1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        activeCargoId: String? = nil,
        activeSessionId: String? = nil,
        archived: Bool? = nil,
        comments: String? = nil,
        deviceMacAddress: String,
        deviceToken: String? = nil,
        firstSeenAtTimestamp: Date? = nil,
        lastSeenAtLocation: LocationFeature? = nil,
        lastSeenAtLocationCity: String? = nil,
        lastSeenAtLocationLargeCity: String? = nil,
        lastSeenAtTimestamp: Date? = nil,
        lastSeenBatteryLevel: String? = nil,
        offChrtReferenceId: String? = nil,
        offChrtShipperOrgDataId: String? = nil,
        orgId: String,
        pauseWindows: [DevicePausedTimeWindow1]? = nil,
        paused: Bool? = nil,
        registeredAtTimestamp: Date? = nil,
        schemaVersion: Int,
        sharedWithOrgIds: [String]? = nil,
        type: TrackingDeviceTypeEnum1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.activeCargoId = activeCargoId
        self.activeSessionId = activeSessionId
        self.archived = archived
        self.comments = comments
        self.deviceMacAddress = deviceMacAddress
        self.deviceToken = deviceToken
        self.firstSeenAtTimestamp = firstSeenAtTimestamp
        self.lastSeenAtLocation = lastSeenAtLocation
        self.lastSeenAtLocationCity = lastSeenAtLocationCity
        self.lastSeenAtLocationLargeCity = lastSeenAtLocationLargeCity
        self.lastSeenAtTimestamp = lastSeenAtTimestamp
        self.lastSeenBatteryLevel = lastSeenBatteryLevel
        self.offChrtReferenceId = offChrtReferenceId
        self.offChrtShipperOrgDataId = offChrtShipperOrgDataId
        self.orgId = orgId
        self.pauseWindows = pauseWindows
        self.paused = paused
        self.registeredAtTimestamp = registeredAtTimestamp
        self.schemaVersion = schemaVersion
        self.sharedWithOrgIds = sharedWithOrgIds
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.activeCargoId = try container.decodeIfPresent(String.self, forKey: .activeCargoId)
        self.activeSessionId = try container.decodeIfPresent(String.self, forKey: .activeSessionId)
        self.archived = try container.decodeIfPresent(Bool.self, forKey: .archived)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
        self.deviceToken = try container.decodeIfPresent(String.self, forKey: .deviceToken)
        self.firstSeenAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .firstSeenAtTimestamp)
        self.lastSeenAtLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .lastSeenAtLocation)
        self.lastSeenAtLocationCity = try container.decodeIfPresent(String.self, forKey: .lastSeenAtLocationCity)
        self.lastSeenAtLocationLargeCity = try container.decodeIfPresent(String.self, forKey: .lastSeenAtLocationLargeCity)
        self.lastSeenAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastSeenAtTimestamp)
        self.lastSeenBatteryLevel = try container.decodeIfPresent(String.self, forKey: .lastSeenBatteryLevel)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.offChrtShipperOrgDataId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgDataId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.pauseWindows = try container.decodeIfPresent([DevicePausedTimeWindow1].self, forKey: .pauseWindows)
        self.paused = try container.decodeIfPresent(Bool.self, forKey: .paused)
        self.registeredAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .registeredAtTimestamp)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.sharedWithOrgIds = try container.decodeIfPresent([String].self, forKey: .sharedWithOrgIds)
        self.type = try container.decodeIfPresent(TrackingDeviceTypeEnum1.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.activeCargoId, forKey: .activeCargoId)
        try container.encodeIfPresent(self.activeSessionId, forKey: .activeSessionId)
        try container.encodeIfPresent(self.archived, forKey: .archived)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encode(self.deviceMacAddress, forKey: .deviceMacAddress)
        try container.encodeIfPresent(self.deviceToken, forKey: .deviceToken)
        try container.encodeIfPresent(self.firstSeenAtTimestamp, forKey: .firstSeenAtTimestamp)
        try container.encodeIfPresent(self.lastSeenAtLocation, forKey: .lastSeenAtLocation)
        try container.encodeIfPresent(self.lastSeenAtLocationCity, forKey: .lastSeenAtLocationCity)
        try container.encodeIfPresent(self.lastSeenAtLocationLargeCity, forKey: .lastSeenAtLocationLargeCity)
        try container.encodeIfPresent(self.lastSeenAtTimestamp, forKey: .lastSeenAtTimestamp)
        try container.encodeIfPresent(self.lastSeenBatteryLevel, forKey: .lastSeenBatteryLevel)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.offChrtShipperOrgDataId, forKey: .offChrtShipperOrgDataId)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.pauseWindows, forKey: .pauseWindows)
        try container.encodeIfPresent(self.paused, forKey: .paused)
        try container.encodeIfPresent(self.registeredAtTimestamp, forKey: .registeredAtTimestamp)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.sharedWithOrgIds, forKey: .sharedWithOrgIds)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case activeCargoId = "active_cargo_id"
        case activeSessionId = "active_session_id"
        case archived
        case comments
        case deviceMacAddress = "device_mac_address"
        case deviceToken = "device_token"
        case firstSeenAtTimestamp = "first_seen_at_timestamp"
        case lastSeenAtLocation = "last_seen_at_location"
        case lastSeenAtLocationCity = "last_seen_at_location_city"
        case lastSeenAtLocationLargeCity = "last_seen_at_location_large_city"
        case lastSeenAtTimestamp = "last_seen_at_timestamp"
        case lastSeenBatteryLevel = "last_seen_battery_level"
        case offChrtReferenceId = "off_chrt_reference_id"
        case offChrtShipperOrgDataId = "off_chrt_shipper_org_data_id"
        case orgId = "org_id"
        case pauseWindows = "pause_windows"
        case paused
        case registeredAtTimestamp = "registered_at_timestamp"
        case schemaVersion = "schema_version"
        case sharedWithOrgIds = "shared_with_org_ids"
        case type
    }
}