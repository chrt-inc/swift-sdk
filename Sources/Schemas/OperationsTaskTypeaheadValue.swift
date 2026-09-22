import Foundation

public struct OperationsTaskTypeaheadValue: Codable, Hashable, Sendable {
    public let operationsTaskIds: [String]
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        operationsTaskIds: [String],
        value: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.operationsTaskIds = operationsTaskIds
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operationsTaskIds = try container.decode([String].self, forKey: .operationsTaskIds)
        self.value = try container.decode(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.operationsTaskIds, forKey: .operationsTaskIds)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case operationsTaskIds = "operations_task_ids"
        case value
    }
}