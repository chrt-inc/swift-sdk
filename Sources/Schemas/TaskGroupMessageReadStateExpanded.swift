import Foundation

public struct TaskGroupMessageReadStateExpanded: Codable, Hashable, Sendable {
    public let id: String
    public let createdAtTimestamp: Date
    public let lastReadMessageTimestamp: Date
    /// Must be a string starting with `org_`
    public let orgId: String
    public let schemaVersion: Int
    public let taskGroupId: String
    /// Must be a string starting with `user_`
    public let userId: String
    public let userName: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAtTimestamp: Date,
        lastReadMessageTimestamp: Date,
        orgId: String,
        schemaVersion: Int,
        taskGroupId: String,
        userId: String,
        userName: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAtTimestamp = createdAtTimestamp
        self.lastReadMessageTimestamp = lastReadMessageTimestamp
        self.orgId = orgId
        self.schemaVersion = schemaVersion
        self.taskGroupId = taskGroupId
        self.userId = userId
        self.userName = userName
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.lastReadMessageTimestamp = try container.decode(Date.self, forKey: .lastReadMessageTimestamp)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.userName = try container.decodeIfPresent(String.self, forKey: .userName)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.lastReadMessageTimestamp, forKey: .lastReadMessageTimestamp)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.userId, forKey: .userId)
        try container.encodeIfPresent(self.userName, forKey: .userName)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAtTimestamp = "created_at_timestamp"
        case lastReadMessageTimestamp = "last_read_message_timestamp"
        case orgId = "org_id"
        case schemaVersion = "schema_version"
        case taskGroupId = "task_group_id"
        case userId = "user_id"
        case userName = "user_name"
    }
}