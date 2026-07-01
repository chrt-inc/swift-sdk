import Foundation

public struct TrackingSessionDestinationGeofenceEnteredWebhookPayload: Codable, Hashable, Sendable {
    /// UTC timestamp when the event occurred
    public let eventTimestamp: Date
    public let eventType: TrackingSessionDestinationGeofenceEntered?
    /// The tracking session whose tracker entered the destination geofence
    public let sessionId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        eventTimestamp: Date,
        eventType: TrackingSessionDestinationGeofenceEntered? = nil,
        sessionId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.eventTimestamp = eventTimestamp
        self.eventType = eventType
        self.sessionId = sessionId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.eventTimestamp = try container.decode(Date.self, forKey: .eventTimestamp)
        self.eventType = try container.decodeIfPresent(TrackingSessionDestinationGeofenceEntered.self, forKey: .eventType)
        self.sessionId = try container.decode(String.self, forKey: .sessionId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(self.eventType, forKey: .eventType)
        try container.encode(self.sessionId, forKey: .sessionId)
    }

    public enum TrackingSessionDestinationGeofenceEntered: String, Codable, Hashable, CaseIterable, Sendable {
        case trackingSessionDestinationGeofenceEntered = "tracking.session.destination_geofence_entered"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp = "event_timestamp"
        case eventType = "event_type"
        case sessionId = "session_id"
    }
}