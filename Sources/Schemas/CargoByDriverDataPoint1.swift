import Foundation

public struct CargoByDriverDataPoint1: Codable, Hashable, Sendable {
    public let id: String
    public let location: LocationFeature
    public let metadata: CargoByDriverDataPointMetadata1
    public let schemaVersion: Int
    public let timestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        location: LocationFeature,
        metadata: CargoByDriverDataPointMetadata1,
        schemaVersion: Int,
        timestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.location = location
        self.metadata = metadata
        self.schemaVersion = schemaVersion
        self.timestamp = timestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.location = try container.decode(LocationFeature.self, forKey: .location)
        self.metadata = try container.decode(CargoByDriverDataPointMetadata1.self, forKey: .metadata)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.location, forKey: .location)
        try container.encode(self.metadata, forKey: .metadata)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.timestamp, forKey: .timestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case location
        case metadata
        case schemaVersion = "schema_version"
        case timestamp
    }
}