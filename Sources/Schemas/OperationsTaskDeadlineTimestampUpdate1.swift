import Foundation

public struct OperationsTaskDeadlineTimestampUpdate1: Codable, Hashable, Sendable {
    public let deadlineTimestamp: Date
    public let operationsTaskId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        deadlineTimestamp: Date,
        operationsTaskId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.deadlineTimestamp = deadlineTimestamp
        self.operationsTaskId = operationsTaskId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.deadlineTimestamp = try container.decode(Date.self, forKey: .deadlineTimestamp)
        self.operationsTaskId = try container.decode(String.self, forKey: .operationsTaskId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.deadlineTimestamp, forKey: .deadlineTimestamp)
        try container.encode(self.operationsTaskId, forKey: .operationsTaskId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case deadlineTimestamp = "deadline_timestamp"
        case operationsTaskId = "operations_task_id"
    }
}