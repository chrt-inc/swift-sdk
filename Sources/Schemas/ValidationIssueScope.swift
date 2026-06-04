import Foundation

public struct ValidationIssueScope: Codable, Hashable, Sendable {
    public let taskGroupId: String?
    public let taskId: String?
    public let cargoId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroupId: String? = nil,
        taskId: String? = nil,
        cargoId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroupId = taskGroupId
        self.taskId = taskId
        self.cargoId = cargoId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.taskId = try container.decodeIfPresent(String.self, forKey: .taskId)
        self.cargoId = try container.decodeIfPresent(String.self, forKey: .cargoId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
        try container.encodeIfPresent(self.taskId, forKey: .taskId)
        try container.encodeIfPresent(self.cargoId, forKey: .cargoId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroupId = "task_group_id"
        case taskId = "task_id"
        case cargoId = "cargo_id"
    }
}