import Foundation

/// Top-level FlightAware alert POST payload.
public struct FlightAwareAlertPayload: Codable, Hashable, Sendable {
    public let longDescription: String?
    public let shortDescription: String?
    public let summary: String?
    public let eventCode: String?
    public let alertId: Int?
    public let flight: FlightAwareAlertFlight?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        longDescription: String? = nil,
        shortDescription: String? = nil,
        summary: String? = nil,
        eventCode: String? = nil,
        alertId: Int? = nil,
        flight: FlightAwareAlertFlight? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.longDescription = longDescription
        self.shortDescription = shortDescription
        self.summary = summary
        self.eventCode = eventCode
        self.alertId = alertId
        self.flight = flight
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.longDescription = try container.decodeIfPresent(String.self, forKey: .longDescription)
        self.shortDescription = try container.decodeIfPresent(String.self, forKey: .shortDescription)
        self.summary = try container.decodeIfPresent(String.self, forKey: .summary)
        self.eventCode = try container.decodeIfPresent(String.self, forKey: .eventCode)
        self.alertId = try container.decodeIfPresent(Int.self, forKey: .alertId)
        self.flight = try container.decodeIfPresent(FlightAwareAlertFlight.self, forKey: .flight)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.longDescription, forKey: .longDescription)
        try container.encodeIfPresent(self.shortDescription, forKey: .shortDescription)
        try container.encodeIfPresent(self.summary, forKey: .summary)
        try container.encodeIfPresent(self.eventCode, forKey: .eventCode)
        try container.encodeIfPresent(self.alertId, forKey: .alertId)
        try container.encodeIfPresent(self.flight, forKey: .flight)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case longDescription = "long_description"
        case shortDescription = "short_description"
        case summary
        case eventCode = "event_code"
        case alertId = "alert_id"
        case flight
    }
}