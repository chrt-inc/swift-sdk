import Foundation

public struct TaskGroupMessageThreadListItem: Codable, Hashable, Sendable {
    public let completedAtTimestamp: Date?
    /// Must be a string starting with `org_`
    public let coordinatorOrgId: String?
    public let driver: Driver?
    public let driverId: String?
    /// Must be a string starting with `org_`
    public let executorOrgId: String?
    public let inProgressAtTimestamp: Date?
    public let lastMessage: TaskGroupMessageWithSenderName?
    public let messageCount: Int
    public let orderId: String
    /// Must be a URL-safe string of 1-64 characters. Allowed characters: A-Z, a-z, 0-9, '.', '_', '~', '-' (RFC 3986 unreserved).
    public let orderOffChrtReferenceId: String?
    public let orderShortId: String
    public let stagedAtTimestamp: Date?
    public let status: TaskGroupStatusEnum1
    public let taskGroupId: String
    public let taskGroupType: TaskGroupTypeEnum1
    public let unreadCount: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        completedAtTimestamp: Date? = nil,
        coordinatorOrgId: String? = nil,
        driver: Driver? = nil,
        driverId: String? = nil,
        executorOrgId: String? = nil,
        inProgressAtTimestamp: Date? = nil,
        lastMessage: TaskGroupMessageWithSenderName? = nil,
        messageCount: Int,
        orderId: String,
        orderOffChrtReferenceId: String? = nil,
        orderShortId: String,
        stagedAtTimestamp: Date? = nil,
        status: TaskGroupStatusEnum1,
        taskGroupId: String,
        taskGroupType: TaskGroupTypeEnum1,
        unreadCount: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.completedAtTimestamp = completedAtTimestamp
        self.coordinatorOrgId = coordinatorOrgId
        self.driver = driver
        self.driverId = driverId
        self.executorOrgId = executorOrgId
        self.inProgressAtTimestamp = inProgressAtTimestamp
        self.lastMessage = lastMessage
        self.messageCount = messageCount
        self.orderId = orderId
        self.orderOffChrtReferenceId = orderOffChrtReferenceId
        self.orderShortId = orderShortId
        self.stagedAtTimestamp = stagedAtTimestamp
        self.status = status
        self.taskGroupId = taskGroupId
        self.taskGroupType = taskGroupType
        self.unreadCount = unreadCount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.coordinatorOrgId = try container.decodeIfPresent(String.self, forKey: .coordinatorOrgId)
        self.driver = try container.decodeIfPresent(Driver.self, forKey: .driver)
        self.driverId = try container.decodeIfPresent(String.self, forKey: .driverId)
        self.executorOrgId = try container.decodeIfPresent(String.self, forKey: .executorOrgId)
        self.inProgressAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inProgressAtTimestamp)
        self.lastMessage = try container.decodeIfPresent(TaskGroupMessageWithSenderName.self, forKey: .lastMessage)
        self.messageCount = try container.decode(Int.self, forKey: .messageCount)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.orderOffChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .orderOffChrtReferenceId)
        self.orderShortId = try container.decode(String.self, forKey: .orderShortId)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.status = try container.decode(TaskGroupStatusEnum1.self, forKey: .status)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.taskGroupType = try container.decode(TaskGroupTypeEnum1.self, forKey: .taskGroupType)
        self.unreadCount = try container.decode(Int.self, forKey: .unreadCount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.coordinatorOrgId, forKey: .coordinatorOrgId)
        try container.encodeIfPresent(self.driver, forKey: .driver)
        try container.encodeIfPresent(self.driverId, forKey: .driverId)
        try container.encodeIfPresent(self.executorOrgId, forKey: .executorOrgId)
        try container.encodeIfPresent(self.inProgressAtTimestamp, forKey: .inProgressAtTimestamp)
        try container.encodeIfPresent(self.lastMessage, forKey: .lastMessage)
        try container.encode(self.messageCount, forKey: .messageCount)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.orderOffChrtReferenceId, forKey: .orderOffChrtReferenceId)
        try container.encode(self.orderShortId, forKey: .orderShortId)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.taskGroupType, forKey: .taskGroupType)
        try container.encode(self.unreadCount, forKey: .unreadCount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case completedAtTimestamp = "completed_at_timestamp"
        case coordinatorOrgId = "coordinator_org_id"
        case driver
        case driverId = "driver_id"
        case executorOrgId = "executor_org_id"
        case inProgressAtTimestamp = "in_progress_at_timestamp"
        case lastMessage = "last_message"
        case messageCount = "message_count"
        case orderId = "order_id"
        case orderOffChrtReferenceId = "order_off_chrt_reference_id"
        case orderShortId = "order_short_id"
        case stagedAtTimestamp = "staged_at_timestamp"
        case status
        case taskGroupId = "task_group_id"
        case taskGroupType = "task_group_type"
        case unreadCount = "unread_count"
    }
}