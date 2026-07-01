import Foundation

public struct Session1: Codable, Hashable, Sendable {
    public let id: String
    public let comments: String?
    public let createdAtTimestamp: Date
    public let destinationGeofenceEntered: Bool?
    public let destinationGeofenceLocation: LocationFeature?
    public let destinationGeofenceRadiusMiles: Double?
    public let deviceId: String
    public let deviceMacAddress: String
    public let flightLegIds: [String]?
    public let flightLoadedStatusByFlightLegId: [String: String?]?
    public let flightLoadedStatuses: [String]?
    public let flightNumbers: [String]?
    public let lastSeenAtLocation: LocationFeature?
    public let lastSeenAtLocationCity: String?
    public let lastSeenAtLocationLargeCity: String?
    public let lastSeenAtTimestamp: Date?
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let offChrtReferenceId: String?
    public let offChrtShipperOrgId: String?
    /// Must be a string starting with `org_`
    public let orgId: String
    public let `public`: Bool?
    public let schemaVersion: Int
    public let sharedWithOrgIds: [String]?
    public let terminated: Bool?
    public let terminatedAtTimestamp: Date?
    public let terminationScheduledForTimestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        comments: String? = nil,
        createdAtTimestamp: Date,
        destinationGeofenceEntered: Bool? = nil,
        destinationGeofenceLocation: LocationFeature? = nil,
        destinationGeofenceRadiusMiles: Double? = nil,
        deviceId: String,
        deviceMacAddress: String,
        flightLegIds: [String]? = nil,
        flightLoadedStatusByFlightLegId: [String: String?]? = nil,
        flightLoadedStatuses: [String]? = nil,
        flightNumbers: [String]? = nil,
        lastSeenAtLocation: LocationFeature? = nil,
        lastSeenAtLocationCity: String? = nil,
        lastSeenAtLocationLargeCity: String? = nil,
        lastSeenAtTimestamp: Date? = nil,
        offChrtReferenceId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        orgId: String,
        public: Bool? = nil,
        schemaVersion: Int,
        sharedWithOrgIds: [String]? = nil,
        terminated: Bool? = nil,
        terminatedAtTimestamp: Date? = nil,
        terminationScheduledForTimestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.comments = comments
        self.createdAtTimestamp = createdAtTimestamp
        self.destinationGeofenceEntered = destinationGeofenceEntered
        self.destinationGeofenceLocation = destinationGeofenceLocation
        self.destinationGeofenceRadiusMiles = destinationGeofenceRadiusMiles
        self.deviceId = deviceId
        self.deviceMacAddress = deviceMacAddress
        self.flightLegIds = flightLegIds
        self.flightLoadedStatusByFlightLegId = flightLoadedStatusByFlightLegId
        self.flightLoadedStatuses = flightLoadedStatuses
        self.flightNumbers = flightNumbers
        self.lastSeenAtLocation = lastSeenAtLocation
        self.lastSeenAtLocationCity = lastSeenAtLocationCity
        self.lastSeenAtLocationLargeCity = lastSeenAtLocationLargeCity
        self.lastSeenAtTimestamp = lastSeenAtTimestamp
        self.offChrtReferenceId = offChrtReferenceId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.orgId = orgId
        self.public = `public`
        self.schemaVersion = schemaVersion
        self.sharedWithOrgIds = sharedWithOrgIds
        self.terminated = terminated
        self.terminatedAtTimestamp = terminatedAtTimestamp
        self.terminationScheduledForTimestamp = terminationScheduledForTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.destinationGeofenceEntered = try container.decodeIfPresent(Bool.self, forKey: .destinationGeofenceEntered)
        self.destinationGeofenceLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .destinationGeofenceLocation)
        self.destinationGeofenceRadiusMiles = try container.decodeIfPresent(Double.self, forKey: .destinationGeofenceRadiusMiles)
        self.deviceId = try container.decode(String.self, forKey: .deviceId)
        self.deviceMacAddress = try container.decode(String.self, forKey: .deviceMacAddress)
        self.flightLegIds = try container.decodeIfPresent([String].self, forKey: .flightLegIds)
        self.flightLoadedStatusByFlightLegId = try container.decodeIfPresent([String: String?].self, forKey: .flightLoadedStatusByFlightLegId)
        self.flightLoadedStatuses = try container.decodeIfPresent([String].self, forKey: .flightLoadedStatuses)
        self.flightNumbers = try container.decodeIfPresent([String].self, forKey: .flightNumbers)
        self.lastSeenAtLocation = try container.decodeIfPresent(LocationFeature.self, forKey: .lastSeenAtLocation)
        self.lastSeenAtLocationCity = try container.decodeIfPresent(String.self, forKey: .lastSeenAtLocationCity)
        self.lastSeenAtLocationLargeCity = try container.decodeIfPresent(String.self, forKey: .lastSeenAtLocationLargeCity)
        self.lastSeenAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .lastSeenAtTimestamp)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.sharedWithOrgIds = try container.decodeIfPresent([String].self, forKey: .sharedWithOrgIds)
        self.terminated = try container.decodeIfPresent(Bool.self, forKey: .terminated)
        self.terminatedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .terminatedAtTimestamp)
        self.terminationScheduledForTimestamp = try container.decodeIfPresent(Date.self, forKey: .terminationScheduledForTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.comments, forKey: .comments)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.destinationGeofenceEntered, forKey: .destinationGeofenceEntered)
        try container.encodeIfPresent(self.destinationGeofenceLocation, forKey: .destinationGeofenceLocation)
        try container.encodeIfPresent(self.destinationGeofenceRadiusMiles, forKey: .destinationGeofenceRadiusMiles)
        try container.encode(self.deviceId, forKey: .deviceId)
        try container.encode(self.deviceMacAddress, forKey: .deviceMacAddress)
        try container.encodeIfPresent(self.flightLegIds, forKey: .flightLegIds)
        try container.encodeIfPresent(self.flightLoadedStatusByFlightLegId, forKey: .flightLoadedStatusByFlightLegId)
        try container.encodeIfPresent(self.flightLoadedStatuses, forKey: .flightLoadedStatuses)
        try container.encodeIfPresent(self.flightNumbers, forKey: .flightNumbers)
        try container.encodeIfPresent(self.lastSeenAtLocation, forKey: .lastSeenAtLocation)
        try container.encodeIfPresent(self.lastSeenAtLocationCity, forKey: .lastSeenAtLocationCity)
        try container.encodeIfPresent(self.lastSeenAtLocationLargeCity, forKey: .lastSeenAtLocationLargeCity)
        try container.encodeIfPresent(self.lastSeenAtTimestamp, forKey: .lastSeenAtTimestamp)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.public, forKey: .public)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.sharedWithOrgIds, forKey: .sharedWithOrgIds)
        try container.encodeIfPresent(self.terminated, forKey: .terminated)
        try container.encodeIfPresent(self.terminatedAtTimestamp, forKey: .terminatedAtTimestamp)
        try container.encodeIfPresent(self.terminationScheduledForTimestamp, forKey: .terminationScheduledForTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case comments
        case createdAtTimestamp = "created_at_timestamp"
        case destinationGeofenceEntered = "destination_geofence_entered"
        case destinationGeofenceLocation = "destination_geofence_location"
        case destinationGeofenceRadiusMiles = "destination_geofence_radius_miles"
        case deviceId = "device_id"
        case deviceMacAddress = "device_mac_address"
        case flightLegIds = "flight_leg_ids"
        case flightLoadedStatusByFlightLegId = "flight_loaded_status_by_flight_leg_id"
        case flightLoadedStatuses = "flight_loaded_statuses"
        case flightNumbers = "flight_numbers"
        case lastSeenAtLocation = "last_seen_at_location"
        case lastSeenAtLocationCity = "last_seen_at_location_city"
        case lastSeenAtLocationLargeCity = "last_seen_at_location_large_city"
        case lastSeenAtTimestamp = "last_seen_at_timestamp"
        case offChrtReferenceId = "off_chrt_reference_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case orgId = "org_id"
        case `public`
        case schemaVersion = "schema_version"
        case sharedWithOrgIds = "shared_with_org_ids"
        case terminated
        case terminatedAtTimestamp = "terminated_at_timestamp"
        case terminationScheduledForTimestamp = "termination_scheduled_for_timestamp"
    }
}