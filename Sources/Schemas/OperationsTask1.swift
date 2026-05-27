import Foundation

public struct OperationsTask1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let caseId: String
    public let title: String
    public let description: String
    public let deadlineTimestamp: Date?
    public let id: String
    /// Must be a string starting with `org_`
    public let orgId: String
    public let completed: Bool?
    public let completedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let completedByUserId: String?
    public let comments: [OperationsTaskComment1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        caseId: String,
        title: String,
        description: String,
        deadlineTimestamp: Date? = nil,
        id: String,
        orgId: String,
        completed: Bool? = nil,
        completedAtTimestamp: Date? = nil,
        completedByUserId: String? = nil,
        comments: [OperationsTaskComment1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.caseId = caseId
        self.title = title
        self.description = description
        self.deadlineTimestamp = deadlineTimestamp
        self.id = id
        self.orgId = orgId
        self.completed = completed
        self.completedAtTimestamp = completedAtTimestamp
        self.completedByUserId = completedByUserId
        self.comments = comments
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.caseId = try container.decode(String.self, forKey: .caseId)
        self.title = try container.decode(String.self, forKey: .title)
        self.description = try container.decode(String.self, forKey: .description)
        self.deadlineTimestamp = try container.decodeIfPresent(Date.self, forKey: .deadlineTimestamp)
        self.id = try container.decode(String.self, forKey: .id)
        self.orgId = try container.decode(String.self, forKey: .orgId)
        self.completed = try container.decodeIfPresent(Bool.self, forKey: .completed)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.completedByUserId = try container.decodeIfPresent(String.self, forKey: .completedByUserId)
        self.comments = try container.decodeIfPresent([OperationsTaskComment1].self, forKey: .comments)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.caseId, forKey: .caseId)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.description, forKey: .description)
        try container.encodeIfPresent(self.deadlineTimestamp, forKey: .deadlineTimestamp)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.completed, forKey: .completed)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.completedByUserId, forKey: .completedByUserId)
        try container.encodeIfPresent(self.comments, forKey: .comments)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case caseId = "case_id"
        case title
        case description
        case deadlineTimestamp = "deadline_timestamp"
        case id = "_id"
        case orgId = "org_id"
        case completed
        case completedAtTimestamp = "completed_at_timestamp"
        case completedByUserId = "completed_by_user_id"
        case comments
    }
}