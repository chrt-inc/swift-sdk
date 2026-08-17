import Foundation

public struct AtlasEventResponse1: Codable, Hashable, Sendable {
    public let code: String?
    public let dateUtc: String?
    public let latitude: Double?
    public let longitude: Double?
    public let type: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String? = nil,
        dateUtc: String? = nil,
        latitude: Double? = nil,
        longitude: Double? = nil,
        type: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.dateUtc = dateUtc
        self.latitude = latitude
        self.longitude = longitude
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decodeIfPresent(String.self, forKey: .code)
        self.dateUtc = try container.decodeIfPresent(String.self, forKey: .dateUtc)
        self.latitude = try container.decodeIfPresent(Double.self, forKey: .latitude)
        self.longitude = try container.decodeIfPresent(Double.self, forKey: .longitude)
        self.type = try container.decodeIfPresent(String.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.code, forKey: .code)
        try container.encodeIfPresent(self.dateUtc, forKey: .dateUtc)
        try container.encodeIfPresent(self.latitude, forKey: .latitude)
        try container.encodeIfPresent(self.longitude, forKey: .longitude)
        try container.encodeIfPresent(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case dateUtc
        case latitude
        case longitude
        case type
    }
}