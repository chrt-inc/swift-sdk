import Foundation

public struct OperationsTaskListTypeaheadValue: Codable, Hashable, Sendable {
    public let operationsTaskListIds: [String]
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        operationsTaskListIds: [String],
        value: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.operationsTaskListIds = operationsTaskListIds
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.operationsTaskListIds = try container.decode([String].self, forKey: .operationsTaskListIds)
        self.value = try container.decode(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.operationsTaskListIds, forKey: .operationsTaskListIds)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case operationsTaskListIds = "operations_task_list_ids"
        case value
    }
}