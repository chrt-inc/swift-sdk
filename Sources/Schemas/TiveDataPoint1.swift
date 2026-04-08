import Foundation

public struct TiveDataPoint1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let timestamp: Date
    public let metadata: TiveDataPointMetadata1
    public let location: LocationFeature
    public let temperatureF: Double?
    public let humidity: Double?
    public let accelerationG: Double?
    public let accelerationX: Double?
    public let accelerationY: Double?
    public let accelerationZ: Double?
    public let light: Double?
    public let motion: Int?
    public let battery: Int?
    public let locationMethod: String?
    public let processTime: Date?
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        timestamp: Date,
        metadata: TiveDataPointMetadata1,
        location: LocationFeature,
        temperatureF: Double? = nil,
        humidity: Double? = nil,
        accelerationG: Double? = nil,
        accelerationX: Double? = nil,
        accelerationY: Double? = nil,
        accelerationZ: Double? = nil,
        light: Double? = nil,
        motion: Int? = nil,
        battery: Int? = nil,
        locationMethod: String? = nil,
        processTime: Date? = nil,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.timestamp = timestamp
        self.metadata = metadata
        self.location = location
        self.temperatureF = temperatureF
        self.humidity = humidity
        self.accelerationG = accelerationG
        self.accelerationX = accelerationX
        self.accelerationY = accelerationY
        self.accelerationZ = accelerationZ
        self.light = light
        self.motion = motion
        self.battery = battery
        self.locationMethod = locationMethod
        self.processTime = processTime
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.metadata = try container.decode(TiveDataPointMetadata1.self, forKey: .metadata)
        self.location = try container.decode(LocationFeature.self, forKey: .location)
        self.temperatureF = try container.decodeIfPresent(Double.self, forKey: .temperatureF)
        self.humidity = try container.decodeIfPresent(Double.self, forKey: .humidity)
        self.accelerationG = try container.decodeIfPresent(Double.self, forKey: .accelerationG)
        self.accelerationX = try container.decodeIfPresent(Double.self, forKey: .accelerationX)
        self.accelerationY = try container.decodeIfPresent(Double.self, forKey: .accelerationY)
        self.accelerationZ = try container.decodeIfPresent(Double.self, forKey: .accelerationZ)
        self.light = try container.decodeIfPresent(Double.self, forKey: .light)
        self.motion = try container.decodeIfPresent(Int.self, forKey: .motion)
        self.battery = try container.decodeIfPresent(Int.self, forKey: .battery)
        self.locationMethod = try container.decodeIfPresent(String.self, forKey: .locationMethod)
        self.processTime = try container.decodeIfPresent(Date.self, forKey: .processTime)
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
        try container.encodeIfPresent(self.temperatureF, forKey: .temperatureF)
        try container.encodeIfPresent(self.humidity, forKey: .humidity)
        try container.encodeIfPresent(self.accelerationG, forKey: .accelerationG)
        try container.encodeIfPresent(self.accelerationX, forKey: .accelerationX)
        try container.encodeIfPresent(self.accelerationY, forKey: .accelerationY)
        try container.encodeIfPresent(self.accelerationZ, forKey: .accelerationZ)
        try container.encodeIfPresent(self.light, forKey: .light)
        try container.encodeIfPresent(self.motion, forKey: .motion)
        try container.encodeIfPresent(self.battery, forKey: .battery)
        try container.encodeIfPresent(self.locationMethod, forKey: .locationMethod)
        try container.encodeIfPresent(self.processTime, forKey: .processTime)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case timestamp
        case metadata
        case location
        case temperatureF = "temperature_f"
        case humidity
        case accelerationG = "acceleration_g"
        case accelerationX = "acceleration_x"
        case accelerationY = "acceleration_y"
        case accelerationZ = "acceleration_z"
        case light
        case motion
        case battery
        case locationMethod = "location_method"
        case processTime = "process_time"
        case id = "_id"
    }
}