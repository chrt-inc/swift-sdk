import Foundation

public struct ReelablesDataPoint1: Codable, Hashable, Sendable {
    public let id: String
    public let accuracyMeters: Int?
    public let location: LocationFeature
    public let metadata: ReelablesDataPointMetadata1
    public let schemaVersion: Int
    public let temperatureAccuracyDegreesCelsius: Double?
    public let temperatureDegreesCelsius: Double?
    public let timestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        accuracyMeters: Int? = nil,
        location: LocationFeature,
        metadata: ReelablesDataPointMetadata1,
        schemaVersion: Int,
        temperatureAccuracyDegreesCelsius: Double? = nil,
        temperatureDegreesCelsius: Double? = nil,
        timestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.accuracyMeters = accuracyMeters
        self.location = location
        self.metadata = metadata
        self.schemaVersion = schemaVersion
        self.temperatureAccuracyDegreesCelsius = temperatureAccuracyDegreesCelsius
        self.temperatureDegreesCelsius = temperatureDegreesCelsius
        self.timestamp = timestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.accuracyMeters = try container.decodeIfPresent(Int.self, forKey: .accuracyMeters)
        self.location = try container.decode(LocationFeature.self, forKey: .location)
        self.metadata = try container.decode(ReelablesDataPointMetadata1.self, forKey: .metadata)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.temperatureAccuracyDegreesCelsius = try container.decodeIfPresent(Double.self, forKey: .temperatureAccuracyDegreesCelsius)
        self.temperatureDegreesCelsius = try container.decodeIfPresent(Double.self, forKey: .temperatureDegreesCelsius)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.accuracyMeters, forKey: .accuracyMeters)
        try container.encode(self.location, forKey: .location)
        try container.encode(self.metadata, forKey: .metadata)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.temperatureAccuracyDegreesCelsius, forKey: .temperatureAccuracyDegreesCelsius)
        try container.encodeIfPresent(self.temperatureDegreesCelsius, forKey: .temperatureDegreesCelsius)
        try container.encode(self.timestamp, forKey: .timestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case accuracyMeters = "accuracy_meters"
        case location
        case metadata
        case schemaVersion = "schema_version"
        case temperatureAccuracyDegreesCelsius = "temperature_accuracy_degrees_celsius"
        case temperatureDegreesCelsius = "temperature_degrees_celsius"
        case timestamp
    }
}