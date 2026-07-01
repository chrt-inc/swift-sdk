import Foundation

public struct TiveDataPoint1: Codable, Hashable, Sendable {
    public let id: String
    public let accelerationG: Double?
    public let accelerationX: Double?
    public let accelerationY: Double?
    public let accelerationZ: Double?
    public let battery: Int?
    public let humidity: Double?
    public let light: Double?
    public let location: LocationFeature
    public let locationMethod: String?
    public let metadata: TiveDataPointMetadata1
    public let motion: Int?
    public let processTime: Date?
    public let schemaVersion: Int
    public let temperatureF: Double?
    public let timestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        accelerationG: Double? = nil,
        accelerationX: Double? = nil,
        accelerationY: Double? = nil,
        accelerationZ: Double? = nil,
        battery: Int? = nil,
        humidity: Double? = nil,
        light: Double? = nil,
        location: LocationFeature,
        locationMethod: String? = nil,
        metadata: TiveDataPointMetadata1,
        motion: Int? = nil,
        processTime: Date? = nil,
        schemaVersion: Int,
        temperatureF: Double? = nil,
        timestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.accelerationG = accelerationG
        self.accelerationX = accelerationX
        self.accelerationY = accelerationY
        self.accelerationZ = accelerationZ
        self.battery = battery
        self.humidity = humidity
        self.light = light
        self.location = location
        self.locationMethod = locationMethod
        self.metadata = metadata
        self.motion = motion
        self.processTime = processTime
        self.schemaVersion = schemaVersion
        self.temperatureF = temperatureF
        self.timestamp = timestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.accelerationG = try container.decodeIfPresent(Double.self, forKey: .accelerationG)
        self.accelerationX = try container.decodeIfPresent(Double.self, forKey: .accelerationX)
        self.accelerationY = try container.decodeIfPresent(Double.self, forKey: .accelerationY)
        self.accelerationZ = try container.decodeIfPresent(Double.self, forKey: .accelerationZ)
        self.battery = try container.decodeIfPresent(Int.self, forKey: .battery)
        self.humidity = try container.decodeIfPresent(Double.self, forKey: .humidity)
        self.light = try container.decodeIfPresent(Double.self, forKey: .light)
        self.location = try container.decode(LocationFeature.self, forKey: .location)
        self.locationMethod = try container.decodeIfPresent(String.self, forKey: .locationMethod)
        self.metadata = try container.decode(TiveDataPointMetadata1.self, forKey: .metadata)
        self.motion = try container.decodeIfPresent(Int.self, forKey: .motion)
        self.processTime = try container.decodeIfPresent(Date.self, forKey: .processTime)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.temperatureF = try container.decodeIfPresent(Double.self, forKey: .temperatureF)
        self.timestamp = try container.decode(Date.self, forKey: .timestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.accelerationG, forKey: .accelerationG)
        try container.encodeIfPresent(self.accelerationX, forKey: .accelerationX)
        try container.encodeIfPresent(self.accelerationY, forKey: .accelerationY)
        try container.encodeIfPresent(self.accelerationZ, forKey: .accelerationZ)
        try container.encodeIfPresent(self.battery, forKey: .battery)
        try container.encodeIfPresent(self.humidity, forKey: .humidity)
        try container.encodeIfPresent(self.light, forKey: .light)
        try container.encode(self.location, forKey: .location)
        try container.encodeIfPresent(self.locationMethod, forKey: .locationMethod)
        try container.encode(self.metadata, forKey: .metadata)
        try container.encodeIfPresent(self.motion, forKey: .motion)
        try container.encodeIfPresent(self.processTime, forKey: .processTime)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.temperatureF, forKey: .temperatureF)
        try container.encode(self.timestamp, forKey: .timestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case accelerationG = "acceleration_g"
        case accelerationX = "acceleration_x"
        case accelerationY = "acceleration_y"
        case accelerationZ = "acceleration_z"
        case battery
        case humidity
        case light
        case location
        case locationMethod = "location_method"
        case metadata
        case motion
        case processTime = "process_time"
        case schemaVersion = "schema_version"
        case temperatureF = "temperature_f"
        case timestamp
    }
}