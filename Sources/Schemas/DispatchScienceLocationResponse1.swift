import Foundation

/// A `LatLng`. `isValid` is false when the provider could not geocode the address.
public struct DispatchScienceLocationResponse1: Codable, Hashable, Sendable {
    public let isValid: Bool?
    public let latitude: Double?
    public let longitude: Double?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        isValid: Bool? = nil,
        latitude: Double? = nil,
        longitude: Double? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.isValid = isValid
        self.latitude = latitude
        self.longitude = longitude
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.isValid = try container.decodeIfPresent(Bool.self, forKey: .isValid)
        self.latitude = try container.decodeIfPresent(Double.self, forKey: .latitude)
        self.longitude = try container.decodeIfPresent(Double.self, forKey: .longitude)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.isValid, forKey: .isValid)
        try container.encodeIfPresent(self.latitude, forKey: .latitude)
        try container.encodeIfPresent(self.longitude, forKey: .longitude)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case isValid
        case latitude
        case longitude
    }
}