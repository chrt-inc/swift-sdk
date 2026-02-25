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
    public let lastSeenAtTimestamp: Date?
    public let lastSeenBatteryLevel: String?
    public let offChrtReferenceId: String?
    public let offChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let orgId: String
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
        lastSeenAtTimestamp: Date? = nil,
        lastSeenBatteryLevel: String? = nil,
        offChrtReferenceId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        orgId: String,
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
        self.lastSeenAtTimestamp = lastSeenAtTimestamp
        self.lastSeenBatteryLevel = lastSeenBatteryLevel
        self.offChrtReferenceId = offChrtReferenceId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.orgId = orgId
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
        self.lastSeenAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastSeenAtTimestamp)
        self.lastSeenBatteryLevel = try container.decodeIfPresent(String.self, forKey: .lastSeenBatteryLevel)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
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
        try container.encodeIfPresent(self.lastSeenAtTimestamp, forKey: .lastSeenAtTimestamp)
        try container.encodeIfPresent(self.lastSeenBatteryLevel, forKey: .lastSeenBatteryLevel)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encode(self.orgId, forKey: .orgId)
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
        case lastSeenAtTimestamp = "last_seen_at_timestamp"
        case lastSeenBatteryLevel = "last_seen_battery_level"
        case offChrtReferenceId = "off_chrt_reference_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case orgId = "org_id"
        case registeredAtTimestamp = "registered_at_timestamp"
        case schemaVersion = "schema_version"
        case sharedWithOrgIds = "shared_with_org_ids"
        case type
    }
}