import Foundation

public struct ReelablesTimeseriesRes: Codable, Hashable, Sendable {
    public let dataPoints: [ReelablesDataPoint1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dataPoints: [ReelablesDataPoint1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dataPoints = dataPoints
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dataPoints = try container.decode([ReelablesDataPoint1].self, forKey: .dataPoints)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.dataPoints, forKey: .dataPoints)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dataPoints = "data_points"
    }
}