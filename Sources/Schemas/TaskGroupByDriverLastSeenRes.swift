import Foundation

public struct TaskGroupByDriverLastSeenRes: Codable, Hashable, Sendable {
    public let dataPoint: TaskGroupByDriverDataPoint1
    public let driver: Driver1?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        dataPoint: TaskGroupByDriverDataPoint1,
        driver: Driver1? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.dataPoint = dataPoint
        self.driver = driver
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.dataPoint = try container.decode(TaskGroupByDriverDataPoint1.self, forKey: .dataPoint)
        self.driver = try container.decodeIfPresent(Driver1.self, forKey: .driver)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.dataPoint, forKey: .dataPoint)
        try container.encodeIfPresent(self.driver, forKey: .driver)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case dataPoint = "data_point"
        case driver
    }
}