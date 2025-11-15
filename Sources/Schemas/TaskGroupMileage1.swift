import Foundation

public struct TaskGroupMileage1: Codable, Hashable, Sendable {
    public let tasksMileage: Double
    public let deadheadMileage: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        tasksMileage: Double,
        deadheadMileage: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.tasksMileage = tasksMileage
        self.deadheadMileage = deadheadMileage
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.tasksMileage = try container.decode(Double.self, forKey: .tasksMileage)
        self.deadheadMileage = try container.decode(Double.self, forKey: .deadheadMileage)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.tasksMileage, forKey: .tasksMileage)
        try container.encode(self.deadheadMileage, forKey: .deadheadMileage)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case tasksMileage = "tasks_mileage"
        case deadheadMileage = "deadhead_mileage"
    }
}