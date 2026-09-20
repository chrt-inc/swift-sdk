import Foundation

public struct CourieLatLngResponse1: Codable, Hashable, Sendable {
    public let latitude: Double?
    public let longitude: Double?
    public let valid: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        latitude: Double? = nil,
        longitude: Double? = nil,
        valid: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.latitude = latitude
        self.longitude = longitude
        self.valid = valid
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.latitude = try container.decodeIfPresent(Double.self, forKey: .latitude)
        self.longitude = try container.decodeIfPresent(Double.self, forKey: .longitude)
        self.valid = try container.decodeIfPresent(Bool.self, forKey: .valid)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.latitude, forKey: .latitude)
        try container.encodeIfPresent(self.longitude, forKey: .longitude)
        try container.encodeIfPresent(self.valid, forKey: .valid)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case latitude
        case longitude
        case valid
    }
}