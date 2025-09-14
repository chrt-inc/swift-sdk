import Foundation

public struct TrackingCargoByDriverDataPoint1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let timestamp: Date
    public let metadata: TrackingCargoByDriverDataPointMetadata1
    public let location: LocationFeature
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        timestamp: Date,
        metadata: TrackingCargoByDriverDataPointMetadata1,
        location: LocationFeature,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.timestamp = timestamp
        self.metadata = metadata
        self.location = location
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.metadata = try container.decode(TrackingCargoByDriverDataPointMetadata1.self, forKey: .metadata)
        self.location = try container.decode(LocationFeature.self, forKey: .location)
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
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case timestamp
        case metadata
        case location
        case id = "_id"
    }
}