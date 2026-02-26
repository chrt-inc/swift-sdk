import Foundation

/// Response model for list/search views.
/// 
/// Excludes historical relationship fields:
/// - past_session_ids
/// - past_cargo_ids
public struct DeviceLimitedForList1: Codable, Hashable, Sendable {
    public let id: String
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let orgId: String
    public let deviceMacAddress: String
    public let deviceToken: String?
    public let type: TrackingDeviceTypeEnum1?
    public let comments: String?
    public let offChrtReferenceId: String?
    public let registeredAtTimestamp: Date?
    public let firstSeenAtTimestamp: Date?
    public let lastSeenAtLocation: LocationFeature?
    public let lastSeenAtTimestamp: Date?
    public let lastSeenBatteryLevel: String?
    public let archived: Bool?
    public let sharedWithOrgIds: [String]?
    public let offChrtShipperOrgId: String?
    public let activeSessionId: String?
    public let activeCargoId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        schemaVersion: Int,
        orgId: String,
        deviceMacAddress: String,
        deviceToken: String? = nil,
        type: TrackingDeviceTypeEnum1? = nil,
        comments: String? = nil,
        offChrtReferenceId: String? = nil,
        registeredAtTimestamp: Date? = nil,
        firstSeenAtTimestamp: Date? = nil,
        lastSeenAtLocation: LocationFeature? = nil,
        lastSeenAtTimestamp: Date? = nil,
        lastSeenBatteryLevel: String? = nil,
        archived: Bool? = nil,
        sharedWithOrgIds: [String]? = nil,
        offChrtShipperOrgId: String? = nil,
        activeSessionId: String? = nil,
        activeCargoId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.schemaVersion = schemaVersion
        self.orgId = orgId
        self.deviceMacAddress = deviceMacAddress
        self.deviceToken = deviceToken
        self.type = type
        self.comments = comments
        self.offChrtReferenceId = offChrtReferenceId
        self.registeredAtTimestamp = registeredAtTimestamp
        self.firstSeenAtTimestamp = firstSeenAtTimestamp
        self.lastSeenAtLocation = lastSeenAtLocation
        self.lastSeenAtTimestamp = lastSeenAtTimestamp
        self.lastSeenBatteryLevel = lastSeenBatteryLevel
        self.archived = archived
        self.sharedWithOrgIds = sharedWithOrgIds
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.activeSessionId = activeSessionId
        self.activeCargoId = activeCargoId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
        self.deviceToken = try container.decodeIfPresent(String.self, forKey: .deviceToken)
        self.type = try container.decodeIfPresent(TrackingDeviceTypeEnum1.self, forKey: .type)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.registeredAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .registeredAtTimestamp)
        self.firstSeenAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .firstSeenAtTimestamp)
        self.lastSeenAtLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .lastSeenAtLocation)
        self.lastSeenAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastSeenAtTimestamp)
        self.lastSeenBatteryLevel = try container.decodeIfPresent(String.self, forKey: .lastSeenBatteryLevel)
        self.archived = try container.decodeIfPresent(Bool.self, forKey: .archived)
        self.sharedWithOrgIds = try container.decodeIfPresent([String].self, forKey: .sharedWithOrgIds)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.activeSessionId = try container.decodeIfPresent(String.self, forKey: .activeSessionId)
        self.activeCargoId = try container.decodeIfPresent(String.self, forKey: .activeCargoId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.deviceMacAddress, forKey: .deviceMacAddress)
        try container.encodeIfPresent(self.deviceToken, forKey: .deviceToken)
        try container.encodeIfPresent(self.type, forKey: .type)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.registeredAtTimestamp, forKey: .registeredAtTimestamp)
        try container.encodeIfPresent(self.firstSeenAtTimestamp, forKey: .firstSeenAtTimestamp)
        try container.encodeIfPresent(self.lastSeenAtLocation, forKey: .lastSeenAtLocation)
        try container.encodeIfPresent(self.lastSeenAtTimestamp, forKey: .lastSeenAtTimestamp)
        try container.encodeIfPresent(self.lastSeenBatteryLevel, forKey: .lastSeenBatteryLevel)
        try container.encodeIfPresent(self.archived, forKey: .archived)
        try container.encodeIfPresent(self.sharedWithOrgIds, forKey: .sharedWithOrgIds)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.activeSessionId, forKey: .activeSessionId)
        try container.encodeIfPresent(self.activeCargoId, forKey: .activeCargoId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case schemaVersion = "schema_version"
        case orgId = "org_id"
        case deviceMacAddress = "device_mac_address"
        case deviceToken = "device_token"
        case type
        case comments
        case offChrtReferenceId = "off_chrt_reference_id"
        case registeredAtTimestamp = "registered_at_timestamp"
        case firstSeenAtTimestamp = "first_seen_at_timestamp"
        case lastSeenAtLocation = "last_seen_at_location"
        case lastSeenAtTimestamp = "last_seen_at_timestamp"
        case lastSeenBatteryLevel = "last_seen_battery_level"
        case archived
        case sharedWithOrgIds = "shared_with_org_ids"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case activeSessionId = "active_session_id"
        case activeCargoId = "active_cargo_id"
    }
}