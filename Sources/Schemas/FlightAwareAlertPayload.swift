import Foundation

/// Top-level FlightAware alert POST payload.
public struct FlightAwareAlertPayload: Codable, Hashable, Sendable {
    public let alertId: Int?
    public let eventCode: String?
    public let flight: FlightAwareAlertFlight?
    public let longDescription: String?
    public let shortDescription: String?
    public let summary: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        alertId: Int? = nil,
        eventCode: String? = nil,
        flight: FlightAwareAlertFlight? = nil,
        longDescription: String? = nil,
        shortDescription: String? = nil,
        summary: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.alertId = alertId
        self.eventCode = eventCode
        self.flight = flight
        self.longDescription = longDescription
        self.shortDescription = shortDescription
        self.summary = summary
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.alertId = try container.decodeIfPresent(Int.self, forKey: .alertId)
        self.eventCode = try container.decodeIfPresent(String.self, forKey: .eventCode)
        self.flight = try container.decodeIfPresent(FlightAwareAlertFlight.self, forKey: .flight)
        self.longDescription = try container.decodeIfPresent(String.self, forKey: .longDescription)
        self.shortDescription = try container.decodeIfPresent(String.self, forKey: .shortDescription)
        self.summary = try container.decodeIfPresent(String.self, forKey: .summary)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.alertId, forKey: .alertId)
        try container.encodeIfPresent(self.eventCode, forKey: .eventCode)
        try container.encodeIfPresent(self.flight, forKey: .flight)
        try container.encodeIfPresent(self.longDescription, forKey: .longDescription)
        try container.encodeIfPresent(self.shortDescription, forKey: .shortDescription)
        try container.encodeIfPresent(self.summary, forKey: .summary)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case alertId = "alert_id"
        case eventCode = "event_code"
        case flight
        case longDescription = "long_description"
        case shortDescription = "short_description"
        case summary
    }
}