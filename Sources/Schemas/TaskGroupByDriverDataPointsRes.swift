import Foundation

public struct TaskGroupByDriverDataPointsRes: Codable, Hashable, Sendable {
    public let dataPoints: [TaskGroupByDriverDataPoint1]
    public let drivers: [Driver1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dataPoints: [TaskGroupByDriverDataPoint1],
        drivers: [Driver1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dataPoints = dataPoints
        self.drivers = drivers
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dataPoints = try container.decode([TaskGroupByDriverDataPoint1].self, forKey: .dataPoints)
        self.drivers = try container.decodeIfPresent([Driver1].self, forKey: .drivers)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.dataPoints, forKey: .dataPoints)
        try container.encodeIfPresent(self.drivers, forKey: .drivers)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dataPoints = "data_points"
        case drivers
    }
}