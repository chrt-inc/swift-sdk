import Foundation

public struct TaskGroupMessageDriverListItem: Codable, Hashable, Sendable {
    public let driver: Driver1
    public let lastMessage: TaskGroupMessageWithSenderName?
    public let lastMessageOrderShortId: String?
    public let lastMessageTaskGroupId: String?
    public let threadCount: Int?
    public let unreadCount: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        driver: Driver1,
        lastMessage: TaskGroupMessageWithSenderName? = nil,
        lastMessageOrderShortId: String? = nil,
        lastMessageTaskGroupId: String? = nil,
        threadCount: Int? = nil,
        unreadCount: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.driver = driver
        self.lastMessage = lastMessage
        self.lastMessageOrderShortId = lastMessageOrderShortId
        self.lastMessageTaskGroupId = lastMessageTaskGroupId
        self.threadCount = threadCount
        self.unreadCount = unreadCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.driver = try container.decode(Driver1.self, forKey: .driver)
        self.lastMessage = try container.decodeIfPresent(TaskGroupMessageWithSenderName.self, forKey: .lastMessage)
        self.lastMessageOrderShortId = try container.decodeIfPresent(String.self, forKey: .lastMessageOrderShortId)
        self.lastMessageTaskGroupId = try container.decodeIfPresent(String.self, forKey: .lastMessageTaskGroupId)
        self.threadCount = try container.decodeIfPresent(Int.self, forKey: .threadCount)
        self.unreadCount = try container.decodeIfPresent(Int.self, forKey: .unreadCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.driver, forKey: .driver)
        try container.encodeIfPresent(self.lastMessage, forKey: .lastMessage)
        try container.encodeIfPresent(self.lastMessageOrderShortId, forKey: .lastMessageOrderShortId)
        try container.encodeIfPresent(self.lastMessageTaskGroupId, forKey: .lastMessageTaskGroupId)
        try container.encodeIfPresent(self.threadCount, forKey: .threadCount)
        try container.encodeIfPresent(self.unreadCount, forKey: .unreadCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case driver
        case lastMessage = "last_message"
        case lastMessageOrderShortId = "last_message_order_short_id"
        case lastMessageTaskGroupId = "last_message_task_group_id"
        case threadCount = "thread_count"
        case unreadCount = "unread_count"
    }
}