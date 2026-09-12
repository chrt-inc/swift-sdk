import Foundation

extension Requests {
    public struct OperationsTaskClientUpdate1: Codable, Hashable, Sendable {
        public let assignedUserIds: [String]?
        public let deadlineTimestamp: Date?
        public let departmentId: String?
        public let departmentIdSetToNone: Bool?
        public let description: String?
        public let entryTag: String?
        public let entryTagSetToNone: Bool?
        public let taskType: OperationsTaskTypeEnum?
        public let title: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            assignedUserIds: [String]? = nil,
            deadlineTimestamp: Date? = nil,
            departmentId: String? = nil,
            departmentIdSetToNone: Bool? = nil,
            description: String? = nil,
            entryTag: String? = nil,
            entryTagSetToNone: Bool? = nil,
            taskType: OperationsTaskTypeEnum? = nil,
            title: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.assignedUserIds = assignedUserIds
            self.deadlineTimestamp = deadlineTimestamp
            self.departmentId = departmentId
            self.departmentIdSetToNone = departmentIdSetToNone
            self.description = description
            self.entryTag = entryTag
            self.entryTagSetToNone = entryTagSetToNone
            self.taskType = taskType
            self.title = title
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.assignedUserIds = try container.decodeIfPresent([String].self, forKey: .assignedUserIds)
            self.deadlineTimestamp = try container.decodeIfPresent(Date.self, forKey: .deadlineTimestamp)
            self.departmentId = try container.decodeIfPresent(String.self, forKey: .departmentId)
            self.departmentIdSetToNone = try container.decodeIfPresent(Bool.self, forKey: .departmentIdSetToNone)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.entryTag = try container.decodeIfPresent(String.self, forKey: .entryTag)
            self.entryTagSetToNone = try container.decodeIfPresent(Bool.self, forKey: .entryTagSetToNone)
            self.taskType = try container.decodeIfPresent(OperationsTaskTypeEnum.self, forKey: .taskType)
            self.title = try container.decodeIfPresent(String.self, forKey: .title)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.assignedUserIds, forKey: .assignedUserIds)
            try container.encodeIfPresent(self.deadlineTimestamp, forKey: .deadlineTimestamp)
            try container.encodeIfPresent(self.departmentId, forKey: .departmentId)
            try container.encodeIfPresent(self.departmentIdSetToNone, forKey: .departmentIdSetToNone)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.entryTag, forKey: .entryTag)
            try container.encodeIfPresent(self.entryTagSetToNone, forKey: .entryTagSetToNone)
            try container.encodeIfPresent(self.taskType, forKey: .taskType)
            try container.encodeIfPresent(self.title, forKey: .title)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case assignedUserIds = "assigned_user_ids"
            case deadlineTimestamp = "deadline_timestamp"
            case departmentId = "department_id"
            case departmentIdSetToNone = "department_id__set_to_None"
            case description
            case entryTag = "entry_tag"
            case entryTagSetToNone = "entry_tag__set_to_None"
            case taskType = "task_type"
            case title
        }
    }
}