import Foundation

public struct FlightTrackPosition1: Codable, Hashable, Sendable {
    public let lat: Double?
    public let lon: Double?
    public let altitudeFt: Int?
    public let speedMph: Int?
    public let source: String?
    public let dateUtc: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        lat: Double? = nil,
        lon: Double? = nil,
        altitudeFt: Int? = nil,
        speedMph: Int? = nil,
        source: String? = nil,
        dateUtc: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.lat = lat
        self.lon = lon
        self.altitudeFt = altitudeFt
        self.speedMph = speedMph
        self.source = source
        self.dateUtc = dateUtc
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.lat = try container.decodeIfPresent(Double.self, forKey: .lat)
        self.lon = try container.decodeIfPresent(Double.self, forKey: .lon)
        self.altitudeFt = try container.decodeIfPresent(Int.self, forKey: .altitudeFt)
        self.speedMph = try container.decodeIfPresent(Int.self, forKey: .speedMph)
        self.source = try container.decodeIfPresent(String.self, forKey: .source)
        self.dateUtc = try container.decodeIfPresent(Date.self, forKey: .dateUtc)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.lat, forKey: .lat)
        try container.encodeIfPresent(self.lon, forKey: .lon)
        try container.encodeIfPresent(self.altitudeFt, forKey: .altitudeFt)
        try container.encodeIfPresent(self.speedMph, forKey: .speedMph)
        try container.encodeIfPresent(self.source, forKey: .source)
        try container.encodeIfPresent(self.dateUtc, forKey: .dateUtc)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case lat
        case lon
        case altitudeFt = "altitude_ft"
        case speedMph = "speed_mph"
        case source
        case dateUtc = "date_utc"
    }
}