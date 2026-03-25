import Foundation

public struct OrderDraftValidationIssue: Codable, Hashable, Sendable {
    public let issueKey: String
    public let category: OrderDraftIssueCategoryEnum
    public let message: String
    public let entityType: String?
    public let entityId: String?
    public let taskGroupId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        issueKey: String,
        category: OrderDraftIssueCategoryEnum,
        message: String,
        entityType: String? = nil,
        entityId: String? = nil,
        taskGroupId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.issueKey = issueKey
        self.category = category
        self.message = message
        self.entityType = entityType
        self.entityId = entityId
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.issueKey = try container.decode(String.self, forKey: .issueKey)
        self.category = try container.decode(OrderDraftIssueCategoryEnum.self, forKey: .category)
        self.message = try container.decode(String.self, forKey: .message)
        self.entityType = try container.decodeIfPresent(String.self, forKey: .entityType)
        self.entityId = try container.decodeIfPresent(String.self, forKey: .entityId)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.issueKey, forKey: .issueKey)
        try container.encode(self.category, forKey: .category)
        try container.encode(self.message, forKey: .message)
        try container.encodeIfPresent(self.entityType, forKey: .entityType)
        try container.encodeIfPresent(self.entityId, forKey: .entityId)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case issueKey = "issue_key"
        case category
        case message
        case entityType = "entity_type"
        case entityId = "entity_id"
        case taskGroupId = "task_group_id"
    }
}