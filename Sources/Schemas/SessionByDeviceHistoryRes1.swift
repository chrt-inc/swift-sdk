import Foundation

public struct SessionByDeviceHistoryRes1: Codable, Hashable, Sendable {
    public let dataPoints: [SessionByDeviceDataPoint1]
    public let stationaryClusters: [StationaryCluster]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dataPoints: [SessionByDeviceDataPoint1],
        stationaryClusters: [StationaryCluster],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dataPoints = dataPoints
        self.stationaryClusters = stationaryClusters
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dataPoints = try container.decode([SessionByDeviceDataPoint1].self, forKey: .dataPoints)
        self.stationaryClusters = try container.decode([StationaryCluster].self, forKey: .stationaryClusters)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.dataPoints, forKey: .dataPoints)
        try container.encode(self.stationaryClusters, forKey: .stationaryClusters)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dataPoints = "data_points"
        case stationaryClusters = "stationary_clusters"
    }
}