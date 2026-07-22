import Foundation

public struct ReelablesAsset1: Codable, Hashable, Sendable {
    public let id: String
    public let assetId: String
    public let createdAtTimestamp: Date?
    public let destinationGeofenceLocation: LocationFeature?
    public let destinationGeofenceRadiusMiles: Double?
    public let label: ReelablesLabel1?
    public let lastSeenAtLocation: LocationFeature?
    public let lastSeenAtLocationCity: String?
    public let lastSeenAtLocationLargeCity: String?
    public let lastSeenAtTimestamp: Date?
    public let name: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    public let syncedAtTimestamp: Date?
    public let workspaceId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        assetId: String,
        createdAtTimestamp: Date? = nil,
        destinationGeofenceLocation: LocationFeature? = nil,
        destinationGeofenceRadiusMiles: Double? = nil,
        label: ReelablesLabel1? = nil,
        lastSeenAtLocation: LocationFeature? = nil,
        lastSeenAtLocationCity: String? = nil,
        lastSeenAtLocationLargeCity: String? = nil,
        lastSeenAtTimestamp: Date? = nil,
        name: String,
        orgId: String,
        schemaVersion: Int,
        syncedAtTimestamp: Date? = nil,
        workspaceId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.assetId = assetId
        self.createdAtTimestamp = createdAtTimestamp
        self.destinationGeofenceLocation = destinationGeofenceLocation
        self.destinationGeofenceRadiusMiles = destinationGeofenceRadiusMiles
        self.label = label
        self.lastSeenAtLocation = lastSeenAtLocation
        self.lastSeenAtLocationCity = lastSeenAtLocationCity
        self.lastSeenAtLocationLargeCity = lastSeenAtLocationLargeCity
        self.lastSeenAtTimestamp = lastSeenAtTimestamp
        self.name = name
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.syncedAtTimestamp = syncedAtTimestamp
        self.workspaceId = workspaceId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.assetId = try container.decode(String.self, forKey: .assetId)
        self.createdAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .createdAtTimestamp)
        self.destinationGeofenceLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .destinationGeofenceLocation)
        self.destinationGeofenceRadiusMiles = try container.decodeIfPresent(Double.self, forKey: .destinationGeofenceRadiusMiles)
        self.label = try container.decodeIfPresent(ReelablesLabel1.self, forKey: .label)
        self.lastSeenAtLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .lastSeenAtLocation)
        self.lastSeenAtLocationCity = try container.decodeIfPresent(String.self, forKey: .lastSeenAtLocationCity)
        self.lastSeenAtLocationLargeCity = try container.decodeIfPresent(String.self, forKey: .lastSeenAtLocationLargeCity)
        self.lastSeenAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastSeenAtTimestamp)
        self.name = try container.decode(String.self, forKey: .name)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.syncedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .syncedAtTimestamp)
        self.workspaceId = try container.decode(String.self, forKey: .workspaceId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.assetId, forKey: .assetId)
        try container.encodeIfPresent(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.destinationGeofenceLocation, forKey: .destinationGeofenceLocation)
        try container.encodeIfPresent(self.destinationGeofenceRadiusMiles, forKey: .destinationGeofenceRadiusMiles)
        try container.encodeIfPresent(self.label, forKey: .label)
        try container.encodeIfPresent(self.lastSeenAtLocation, forKey: .lastSeenAtLocation)
        try container.encodeIfPresent(self.lastSeenAtLocationCity, forKey: .lastSeenAtLocationCity)
        try container.encodeIfPresent(self.lastSeenAtLocationLargeCity, forKey: .lastSeenAtLocationLargeCity)
        try container.encodeIfPresent(self.lastSeenAtTimestamp, forKey: .lastSeenAtTimestamp)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.syncedAtTimestamp, forKey: .syncedAtTimestamp)
        try container.encode(self.workspaceId, forKey: .workspaceId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case assetId = "asset_id"
        case createdAtTimestamp = "created_at_timestamp"
        case destinationGeofenceLocation = "destination_geofence_location"
        case destinationGeofenceRadiusMiles = "destination_geofence_radius_miles"
        case label
        case lastSeenAtLocation = "last_seen_at_location"
        case lastSeenAtLocationCity = "last_seen_at_location_city"
        case lastSeenAtLocationLargeCity = "last_seen_at_location_large_city"
        case lastSeenAtTimestamp = "last_seen_at_timestamp"
        case name
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case syncedAtTimestamp = "synced_at_timestamp"
        case workspaceId = "workspace_id"
    }
}