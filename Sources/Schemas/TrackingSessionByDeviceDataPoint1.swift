import Foundation

public struct TrackingSessionByDeviceDataPoint1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let timestamp: Date
    public let metadata: TrackingSessionByDeviceDataPointMetadata1
    public let location: LocationFeature
    public let temperature: Double?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        timestamp: Date,
        metadata: TrackingSessionByDeviceDataPointMetadata1,
        location: LocationFeature,
        temperature: Double? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.timestamp = timestamp
        self.metadata = metadata
        self.location = location
        self.temperature = temperature
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.metadata = try container.decode(TrackingSessionByDeviceDataPointMetadata1.self, forKey: .metadata)
        self.location = try container.decode(LocationFeature.self, forKey: .location)
        self.temperature = try container.decodeIfPresent(Double.self, forKey: .temperature)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.timestamp, forKey: .timestamp)
        try container.encode(self.metadata, forKey: .metadata)
        try container.encode(self.location, forKey: .location)
        try container.encodeIfPresent(self.temperature, forKey: .temperature)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case timestamp
        case metadata
        case location
        case temperature
        case id = "_id"
    }
}