import Foundation

public struct StationaryCluster: Codable, Hashable, Sendable {
    public let startTimestamp: Date
    public let endTimestamp: Date
    public let centroidLocation: LocationFeature
    public let radiusMiles: Double
    public let pointCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        startTimestamp: Date,
        endTimestamp: Date,
        centroidLocation: LocationFeature,
        radiusMiles: Double,
        pointCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.startTimestamp = startTimestamp
        self.endTimestamp = endTimestamp
        self.centroidLocation = centroidLocation
        self.radiusMiles = radiusMiles
        self.pointCount = pointCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.startTimestamp = try container.decode(Date.self, forKey: .startTimestamp)
        self.endTimestamp = try container.decode(Date.self, forKey: .endTimestamp)
        self.centroidLocation = try container.decode(LocationFeature.self, forKey: .centroidLocation)
        self.radiusMiles = try container.decode(Double.self, forKey: .radiusMiles)
        self.pointCount = try container.decode(Int.self, forKey: .pointCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.startTimestamp, forKey: .startTimestamp)
        try container.encode(self.endTimestamp, forKey: .endTimestamp)
        try container.encode(self.centroidLocation, forKey: .centroidLocation)
        try container.encode(self.radiusMiles, forKey: .radiusMiles)
        try container.encode(self.pointCount, forKey: .pointCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case startTimestamp = "start_timestamp"
        case endTimestamp = "end_timestamp"
        case centroidLocation = "centroid_location"
        case radiusMiles = "radius_miles"
        case pointCount = "point_count"
    }
}