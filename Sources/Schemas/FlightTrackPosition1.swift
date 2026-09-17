import Foundation

public struct FlightTrackPosition1: Codable, Hashable, Sendable {
    public let altitudeFeet: Int?
    public let groundSpeedKnots: Int?
    public let headingDegrees: Int?
    public let latitude: Double?
    public let longitude: Double?
    public let name: String?
    public let positionSource: String?
    public let receivedAtTimestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        altitudeFeet: Int? = nil,
        groundSpeedKnots: Int? = nil,
        headingDegrees: Int? = nil,
        latitude: Double? = nil,
        longitude: Double? = nil,
        name: String? = nil,
        positionSource: String? = nil,
        receivedAtTimestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.altitudeFeet = altitudeFeet
        self.groundSpeedKnots = groundSpeedKnots
        self.headingDegrees = headingDegrees
        self.latitude = latitude
        self.longitude = longitude
        self.name = name
        self.positionSource = positionSource
        self.receivedAtTimestamp = receivedAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.altitudeFeet = try container.decodeIfPresent(Int.self, forKey: .altitudeFeet)
        self.groundSpeedKnots = try container.decodeIfPresent(Int.self, forKey: .groundSpeedKnots)
        self.headingDegrees = try container.decodeIfPresent(Int.self, forKey: .headingDegrees)
        self.latitude = try container.decodeIfPresent(Double.self, forKey: .latitude)
        self.longitude = try container.decodeIfPresent(Double.self, forKey: .longitude)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.positionSource = try container.decodeIfPresent(String.self, forKey: .positionSource)
        self.receivedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .receivedAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.altitudeFeet, forKey: .altitudeFeet)
        try container.encodeIfPresent(self.groundSpeedKnots, forKey: .groundSpeedKnots)
        try container.encodeIfPresent(self.headingDegrees, forKey: .headingDegrees)
        try container.encodeIfPresent(self.latitude, forKey: .latitude)
        try container.encodeIfPresent(self.longitude, forKey: .longitude)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encodeIfPresent(self.positionSource, forKey: .positionSource)
        try container.encodeIfPresent(self.receivedAtTimestamp, forKey: .receivedAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case altitudeFeet = "altitude_feet"
        case groundSpeedKnots = "ground_speed_knots"
        case headingDegrees = "heading_degrees"
        case latitude
        case longitude
        case name
        case positionSource = "position_source"
        case receivedAtTimestamp = "received_at_timestamp"
    }
}