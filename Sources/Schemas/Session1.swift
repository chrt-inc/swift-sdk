import Foundation

public struct Session1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let offChrtReferenceId: String?
    public let comments: String?
    public let `public`: Bool?
    public let offChrtShipperOrgId: String?
    public let terminationScheduledForTimestamp: Date?
    public let deviceId: String
    public let deviceMacAddress: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let sharedWithOrgIds: [String]?
    public let createdAtTimestamp: Date
    public let terminated: Bool?
    public let terminatedAtTimestamp: Date?
    public let lastSeenAtLocation: LocationFeature?
    public let lastSeenAtTimestamp: Date?
    public let lastSeenAtLocationCity: String?
    public let lastSeenAtLocationLargeCity: String?
    public let destinationGeofenceLocation: LocationFeature?
    public let destinationGeofenceRadiusMiles: Double?
    public let destinationGeofenceEntered: Bool?
    public let flightLegIds: [String]?
    public let flightNumbers: [String]?
    public let flightLoadedStatuses: [String]?
    public let flightLoadedStatusByFlightLegId: [String: String?]?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        offChrtReferenceId: String? = nil,
        comments: String? = nil,
        public: Bool? = nil,
        offChrtShipperOrgId: String? = nil,
        terminationScheduledForTimestamp: Date? = nil,
        deviceId: String,
        deviceMacAddress: String,
        orgId: String,
        sharedWithOrgIds: [String]? = nil,
        createdAtTimestamp: Date,
        terminated: Bool? = nil,
        terminatedAtTimestamp: Date? = nil,
        lastSeenAtLocation: LocationFeature? = nil,
        lastSeenAtTimestamp: Date? = nil,
        lastSeenAtLocationCity: String? = nil,
        lastSeenAtLocationLargeCity: String? = nil,
        destinationGeofenceLocation: LocationFeature? = nil,
        destinationGeofenceRadiusMiles: Double? = nil,
        destinationGeofenceEntered: Bool? = nil,
        flightLegIds: [String]? = nil,
        flightNumbers: [String]? = nil,
        flightLoadedStatuses: [String]? = nil,
        flightLoadedStatusByFlightLegId: [String: String?]? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.offChrtReferenceId = offChrtReferenceId
        self.comments = comments
        self.public = `public`
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.terminationScheduledForTimestamp = terminationScheduledForTimestamp
        self.deviceId = deviceId
        self.deviceMacAddress = deviceMacAddress
        self.orgId = orgId
        self.sharedWithOrgIds = sharedWithOrgIds
        self.createdAtTimestamp = createdAtTimestamp
        self.terminated = terminated
        self.terminatedAtTimestamp = terminatedAtTimestamp
        self.lastSeenAtLocation = lastSeenAtLocation
        self.lastSeenAtTimestamp = lastSeenAtTimestamp
        self.lastSeenAtLocationCity = lastSeenAtLocationCity
        self.lastSeenAtLocationLargeCity = lastSeenAtLocationLargeCity
        self.destinationGeofenceLocation = destinationGeofenceLocation
        self.destinationGeofenceRadiusMiles = destinationGeofenceRadiusMiles
        self.destinationGeofenceEntered = destinationGeofenceEntered
        self.flightLegIds = flightLegIds
        self.flightNumbers = flightNumbers
        self.flightLoadedStatuses = flightLoadedStatuses
        self.flightLoadedStatusByFlightLegId = flightLoadedStatusByFlightLegId
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.terminationScheduledForTimestamp = try container.decodeIfPresent(Date.self, forKey: .terminationScheduledForTimestamp)
        self.deviceId = try container.decode(String.self, forKey: .deviceId)
        self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.sharedWithOrgIds = try container.decodeIfPresent([String].self, forKey: .sharedWithOrgIds)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.terminated = try container.decodeIfPresent(Bool.self, forKey: .terminated)
        self.terminatedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .terminatedAtTimestamp)
        self.lastSeenAtLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .lastSeenAtLocation)
        self.lastSeenAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastSeenAtTimestamp)
        self.lastSeenAtLocationCity = try container.decodeIfPresent(String.self, forKey: .lastSeenAtLocationCity)
        self.lastSeenAtLocationLargeCity = try container.decodeIfPresent(String.self, forKey: .lastSeenAtLocationLargeCity)
        self.destinationGeofenceLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .destinationGeofenceLocation)
        self.destinationGeofenceRadiusMiles = try container.decodeIfPresent(Double.self, forKey: .destinationGeofenceRadiusMiles)
        self.destinationGeofenceEntered = try container.decodeIfPresent(Bool.self, forKey: .destinationGeofenceEntered)
        self.flightLegIds = try container.decodeIfPresent([String].self, forKey: .flightLegIds)
        self.flightNumbers = try container.decodeIfPresent([String].self, forKey: .flightNumbers)
        self.flightLoadedStatuses = try container.decodeIfPresent([String].self, forKey: .flightLoadedStatuses)
        self.flightLoadedStatusByFlightLegId = try container.decodeIfPresent([String: String?].self, forKey: .flightLoadedStatusByFlightLegId)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encodeIfPresent(self.public, forKey: .public)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.terminationScheduledForTimestamp, forKey: .terminationScheduledForTimestamp)
        try container.encode(self.deviceId, forKey: .deviceId)
        try container.encode(self.deviceMacAddress, forKey: .deviceMacAddress)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.sharedWithOrgIds, forKey: .sharedWithOrgIds)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.terminated, forKey: .terminated)
        try container.encodeIfPresent(self.terminatedAtTimestamp, forKey: .terminatedAtTimestamp)
        try container.encodeIfPresent(self.lastSeenAtLocation, forKey: .lastSeenAtLocation)
        try container.encodeIfPresent(self.lastSeenAtTimestamp, forKey: .lastSeenAtTimestamp)
        try container.encodeIfPresent(self.lastSeenAtLocationCity, forKey: .lastSeenAtLocationCity)
        try container.encodeIfPresent(self.lastSeenAtLocationLargeCity, forKey: .lastSeenAtLocationLargeCity)
        try container.encodeIfPresent(self.destinationGeofenceLocation, forKey: .destinationGeofenceLocation)
        try container.encodeIfPresent(self.destinationGeofenceRadiusMiles, forKey: .destinationGeofenceRadiusMiles)
        try container.encodeIfPresent(self.destinationGeofenceEntered, forKey: .destinationGeofenceEntered)
        try container.encodeIfPresent(self.flightLegIds, forKey: .flightLegIds)
        try container.encodeIfPresent(self.flightNumbers, forKey: .flightNumbers)
        try container.encodeIfPresent(self.flightLoadedStatuses, forKey: .flightLoadedStatuses)
        try container.encodeIfPresent(self.flightLoadedStatusByFlightLegId, forKey: .flightLoadedStatusByFlightLegId)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case offChrtReferenceId = "off_chrt_reference_id"
        case comments
        case `public`
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case terminationScheduledForTimestamp = "termination_scheduled_for_timestamp"
        case deviceId = "device_id"
        case deviceMacAddress = "device_mac_address"
        case orgId = "org_id"
        case sharedWithOrgIds = "shared_with_org_ids"
        case createdAtTimestamp = "created_at_timestamp"
        case terminated
        case terminatedAtTimestamp = "terminated_at_timestamp"
        case lastSeenAtLocation = "last_seen_at_location"
        case lastSeenAtTimestamp = "last_seen_at_timestamp"
        case lastSeenAtLocationCity = "last_seen_at_location_city"
        case lastSeenAtLocationLargeCity = "last_seen_at_location_large_city"
        case destinationGeofenceLocation = "destination_geofence_location"
        case destinationGeofenceRadiusMiles = "destination_geofence_radius_miles"
        case destinationGeofenceEntered = "destination_geofence_entered"
        case flightLegIds = "flight_leg_ids"
        case flightNumbers = "flight_numbers"
        case flightLoadedStatuses = "flight_loaded_statuses"
        case flightLoadedStatusByFlightLegId = "flight_loaded_status_by_flight_leg_id"
        case id = "_id"
    }
}