import Foundation

public struct TrackingSessionGeofenceEnteredWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: TrackingSessionGeofenceEntered?
    /// The display name of the geofence that the tracker entered
    public let geofenceDisplayName: String
    /// The geofence that the tracker entered
    public let geofenceId: String
    /// The tracking session whose tracker entered a geofence
    public let sessionId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: TrackingSessionGeofenceEntered? = nil,
        geofenceDisplayName: String,
        geofenceId: String,
        sessionId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.geofenceDisplayName = geofenceDisplayName
        self.geofenceId = geofenceId
        self.sessionId = sessionId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(TrackingSessionGeofenceEntered.self, forKey: .eventType)
        self.geofenceDisplayName = try container.decode(String.self, forKey: .geofenceDisplayName)
        self.geofenceId = try container.decode(String.self, forKey: .geofenceId)
        self.sessionId = try container.decode(String.self, forKey: .sessionId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.geofenceDisplayName, forKey: .geofenceDisplayName)
        try container.encode(self.geofenceId, forKey: .geofenceId)
        try container.encode(self.sessionId, forKey: .sessionId)
    }

    public enum TrackingSessionGeofenceEntered: String, Codable, Hashable, CaseIterable, Sendable {
        case trackingSessionGeofenceEntered = "tracking.session.geofence_entered"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case geofenceDisplayName = "geofence_display_name"
        case geofenceId = "geofence_id"
        case sessionId = "session_id"
    }
}