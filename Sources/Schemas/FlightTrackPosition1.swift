import Foundation

public struct FlightTrackPosition1: Codable, Hashable, Sendable {
    public let altitudeFt: Int?
    public let dateUtc: Date?
    public let lat: Double?
    public let lon: Double?
    public let source: String?
    public let speedMph: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        altitudeFt: Int? = nil,
        dateUtc: Date? = nil,
        lat: Double? = nil,
        lon: Double? = nil,
        source: String? = nil,
        speedMph: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.altitudeFt = altitudeFt
        self.dateUtc = dateUtc
        self.lat = lat
        self.lon = lon
        self.source = source
        self.speedMph = speedMph
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.altitudeFt = try container.decodeIfPresent(Int.self, forKey: .altitudeFt)
        self.dateUtc = try container.decodeIfPresent(Date.self, forKey: .dateUtc)
        self.lat = try container.decodeIfPresent(Double.self, forKey: .lat)
        self.lon = try container.decodeIfPresent(Double.self, forKey: .lon)
        self.source = try container.decodeIfPresent(String.self, forKey: .source)
        self.speedMph = try container.decodeIfPresent(Int.self, forKey: .speedMph)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.altitudeFt, forKey: .altitudeFt)
        try container.encodeIfPresent(self.dateUtc, forKey: .dateUtc)
        try container.encodeIfPresent(self.lat, forKey: .lat)
        try container.encodeIfPresent(self.lon, forKey: .lon)
        try container.encodeIfPresent(self.source, forKey: .source)
        try container.encodeIfPresent(self.speedMph, forKey: .speedMph)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case altitudeFt = "altitude_ft"
        case dateUtc = "date_utc"
        case lat
        case lon
        case source
        case speedMph = "speed_mph"
    }
}