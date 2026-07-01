import Foundation

extension Requests {
    public struct OperationsTaskClientUpdate1: Codable, Hashable, Sendable {
        public let assignedUserIds: [String]?
        public let deadlineTimestamp: Date?
        public let description: String?
        public let tags: [String]?
        public let taskType: OperationsTaskTypeEnum?
        public let title: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            assignedUserIds: [String]? = nil,
            deadlineTimestamp: Date? = nil,
            description: String? = nil,
            tags: [String]? = nil,
            taskType: OperationsTaskTypeEnum? = nil,
            title: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.assignedUserIds = assignedUserIds
            self.deadlineTimestamp = deadlineTimestamp
            self.description = description
            self.tags = tags
            self.taskType = taskType
            self.title = title
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.assignedUserIds = try container.decodeIfPresent([String].self, forKey: .assignedUserIds)
            self.deadlineTimestamp = try container.decodeIfPresent(Date.self, forKey: .deadlineTimestamp)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.tags = try container.decodeIfPresent([String].self, forKey: .tags)
            self.taskType = try container.decodeIfPresent(OperationsTaskTypeEnum.self, forKey: .taskType)
            self.title = try container.decodeIfPresent(String.self, forKey: .title)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.assignedUserIds, forKey: .assignedUserIds)
            try container.encodeIfPresent(self.deadlineTimestamp, forKey: .deadlineTimestamp)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.tags, forKey: .tags)
            try container.encodeIfPresent(self.taskType, forKey: .taskType)
            try container.encodeIfPresent(self.title, forKey: .title)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case assignedUserIds = "assigned_user_ids"
            case deadlineTimestamp = "deadline_timestamp"
            case description
            case tags
            case taskType = "task_type"
            case title
        }
    }
}