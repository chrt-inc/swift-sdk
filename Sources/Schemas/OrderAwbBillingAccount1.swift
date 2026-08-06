import Foundation

public struct OrderAwbBillingAccount1: Codable, Hashable, Sendable {
    public let accountId: String
    public let name: String?
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountId: String,
        name: String? = nil,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountId = accountId
        self.name = name
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountId = try container.decode(String.self, forKey: .accountId)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accountId, forKey: .accountId)
        try container.encodeIfPresent(self.name, forKey: .name)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountId = "account_id"
        case name
        case taskGroupId = "task_group_id"
    }
}