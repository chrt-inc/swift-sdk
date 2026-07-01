import Foundation

public struct StationaryCluster: Codable, Hashable, Sendable {
    public let centroidLocation: LocationFeature
    public let endTimestamp: Date
    public let pointCount: Int
    public let radiusMiles: Double
    public let startTimestamp: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        centroidLocation: LocationFeature,
        endTimestamp: Date,
        pointCount: Int,
        radiusMiles: Double,
        startTimestamp: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.centroidLocation = centroidLocation
        self.endTimestamp = endTimestamp
        self.pointCount = pointCount
        self.radiusMiles = radiusMiles
        self.startTimestamp = startTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.centroidLocation = try container.decode(LocationFeature.self, forKey: .centroidLocation)
        self.endTimestamp = try container.decode(Date.self, forKey: .endTimestamp)
        self.pointCount = try container.decode(Int.self, forKey: .pointCount)
        self.radiusMiles = try container.decode(Double.self, forKey: .radiusMiles)
        self.startTimestamp = try container.decode(Date.self, forKey: .startTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.centroidLocation, forKey: .centroidLocation)
        try container.encode(self.endTimestamp, forKey: .endTimestamp)
        try container.encode(self.pointCount, forKey: .pointCount)
        try container.encode(self.radiusMiles, forKey: .radiusMiles)
        try container.encode(self.startTimestamp, forKey: .startTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case centroidLocation = "centroid_location"
        case endTimestamp = "end_timestamp"
        case pointCount = "point_count"
        case radiusMiles = "radius_miles"
        case startTimestamp = "start_timestamp"
    }
}