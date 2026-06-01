import Foundation

extension Requests {
    public struct OperationsTaskClientCreate1: Codable, Hashable, Sendable {
        public let schemaVersion: Int
        public let orderId: String
        public let taskType: OperationsTaskTypeEnum
        public let title: String
        public let description: String
        public let deadlineTimestamp: Date?
        public let tags: [String]?
        public let assignedUserIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            schemaVersion: Int,
            orderId: String,
            taskType: OperationsTaskTypeEnum,
            title: String,
            description: String,
            deadlineTimestamp: Date? = nil,
            tags: [String]? = nil,
            assignedUserIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.schemaVersion = schemaVersion
            self.orderId = orderId
            self.taskType = taskType
            self.title = title
            self.description = description
            self.deadlineTimestamp = deadlineTimestamp
            self.tags = tags
            self.assignedUserIds = assignedUserIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.orderId = try container.decode(String.self, forKey: .orderId)
            self.taskType = try container.decode(OperationsTaskTypeEnum.self, forKey: .taskType)
            self.title = try container.decode(String.self, forKey: .title)
            self.description = try container.decode(String.self, forKey: .description)
            self.deadlineTimestamp = try container.decodeIfPresent(Date.self, forKey: .deadlineTimestamp)
            self.tags = try container.decodeIfPresent([String].self, forKey: .tags)
            self.assignedUserIds = try container.decodeIfPresent([String].self, forKey: .assignedUserIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encode(self.orderId, forKey: .orderId)
            try container.encode(self.taskType, forKey: .taskType)
            try container.encode(self.title, forKey: .title)
            try container.encode(self.description, forKey: .description)
            try container.encodeIfPresent(self.deadlineTimestamp, forKey: .deadlineTimestamp)
            try container.encodeIfPresent(self.tags, forKey: .tags)
            try container.encodeIfPresent(self.assignedUserIds, forKey: .assignedUserIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case schemaVersion = "schema_version"
            case orderId = "order_id"
            case taskType = "task_type"
            case title
            case description
            case deadlineTimestamp = "deadline_timestamp"
            case tags
            case assignedUserIds = "assigned_user_ids"
        }
    }
}