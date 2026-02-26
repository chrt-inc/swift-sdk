import Foundation

/// Response model for timezone endpoint.
public struct TimezoneResponse: Codable, Hashable, Sendable {
    public let timezone: String
    public let lat: Double
    public let lng: Double
    public let method: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        timezone: String,
        lat: Double,
        lng: Double,
        method: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.timezone = timezone
        self.lat = lat
        self.lng = lng
        self.method = method
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.timezone = try container.decode(String.self, forKey: .timezone)
        self.lat = try container.decode(Double.self, forKey: .lat)
        self.lng = try container.decode(Double.self, forKey: .lng)
        self.method = try container.decode(String.self, forKey: .method)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.timezone, forKey: .timezone)
        try container.encode(self.lat, forKey: .lat)
        try container.encode(self.lng, forKey: .lng)
        try container.encode(self.method, forKey: .method)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case timezone
        case lat
        case lng
        case method
    }
}