import Foundation

public struct AlvysCoordinatesResponse1: Codable, Hashable, Sendable {
    public let latitude: String?
    public let longitude: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        latitude: String? = nil,
        longitude: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.latitude = latitude
        self.longitude = longitude
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.latitude = try container.decodeIfPresent(String.self, forKey: .latitude)
        self.longitude = try container.decodeIfPresent(String.self, forKey: .longitude)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.latitude, forKey: .latitude)
        try container.encodeIfPresent(self.longitude, forKey: .longitude)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case latitude = "Latitude"
        case longitude = "Longitude"
    }
}