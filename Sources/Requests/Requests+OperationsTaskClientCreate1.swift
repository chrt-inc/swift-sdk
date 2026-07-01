import Foundation

extension Requests {
    public struct OperationsTaskClientCreate1: Codable, Hashable, Sendable {
        public let assignedUserIds: [String]?
        public let deadlineTimestamp: Date?
        public let description: String
        public let orderId: String
        public let schemaVersion: Int
        public let tags: [String]?
        public let taskType: OperationsTaskTypeEnum
        public let title: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            assignedUserIds: [String]? = nil,
            deadlineTimestamp: Date? = nil,
            description: String,
            orderId: String,
            schemaVersion: Int,
            tags: [String]? = nil,
            taskType: OperationsTaskTypeEnum,
            title: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.assignedUserIds = assignedUserIds
            self.deadlineTimestamp = deadlineTimestamp
            self.description = description
            self.orderId = orderId
            self.schemaVersion = schemaVersion
            self.tags = tags
            self.taskType = taskType
            self.title = title
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.assignedUserIds = try container.decodeIfPresent([String].self, forKey: .assignedUserIds)
            self.deadlineTimestamp = try container.decodeIfPresent(Date.self, forKey: .deadlineTimestamp)
            self.description = try container.decode(String.self, forKey: .description)
            self.orderId = try container.decode(String.self, forKey: .orderId)
            self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
            self.tags = try container.decodeIfPresent([String].self, forKey: .tags)
            self.taskType = try container.decode(OperationsTaskTypeEnum.self, forKey: .taskType)
            self.title = try container.decode(String.self, forKey: .title)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.assignedUserIds, forKey: .assignedUserIds)
            try container.encodeIfPresent(self.deadlineTimestamp, forKey: .deadlineTimestamp)
            try container.encode(self.description, forKey: .description)
            try container.encode(self.orderId, forKey: .orderId)
            try container.encode(self.schemaVersion, forKey: .schemaVersion)
            try container.encodeIfPresent(self.tags, forKey: .tags)
            try container.encode(self.taskType, forKey: .taskType)
            try container.encode(self.title, forKey: .title)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case assignedUserIds = "assigned_user_ids"
            case deadlineTimestamp = "deadline_timestamp"
            case description
            case orderId = "order_id"
            case schemaVersion = "schema_version"
            case tags
            case taskType = "task_type"
            case title
        }
    }
}