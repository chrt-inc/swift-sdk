import Foundation

public struct OperationsTaskListDefault1: Codable, Hashable, Sendable {
    public let id: String
    public let counterpartyOffChrtOrgDataId: String?
    /// Must be a string starting with `org_`
    public let counterpartyOrgId: String?
    public let createdAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let lastEditedAtTimestamp: Date
    /// Must be a string starting with `user_`
    public let lastEditedByUserId: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let schemaVersion: Int
    public let serviceLine: ServiceLineEnum
    public let taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]?
    public let taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        counterpartyOffChrtOrgDataId: String? = nil,
        counterpartyOrgId: String? = nil,
        createdAtTimestamp: Date,
        createdByUserId: String,
        lastEditedAtTimestamp: Date,
        lastEditedByUserId: String,
        ownedByOrgId: String,
        schemaVersion: Int,
        serviceLine: ServiceLineEnum,
        taskListsToApplyAtOrderCreation: [TaskListToApplyToOrder1]? = nil,
        taskListsToApplyAtOrderStaging: [TaskListToApplyToOrder1]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.counterpartyOffChrtOrgDataId = counterpartyOffChrtOrgDataId
        self.counterpartyOrgId = counterpartyOrgId
        self.createdAtTimestamp = createdAtTimestamp
        self.createdByUserId = createdByUserId
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.lastEditedByUserId = lastEditedByUserId
        self.ownedByOrgId = ownedByOrgId
        self.schemaVersion = schemaVersion
        self.serviceLine = serviceLine
        self.taskListsToApplyAtOrderCreation = taskListsToApplyAtOrderCreation
        self.taskListsToApplyAtOrderStaging = taskListsToApplyAtOrderStaging
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.counterpartyOffChrtOrgDataId = try container.decodeIfPresent(String.self, forKey: .counterpartyOffChrtOrgDataId)
        self.counterpartyOrgId = try container.decodeIfPresent(String.self, forKey: .counterpartyOrgId)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.lastEditedByUserId = try container.decode(String.self, forKey: .lastEditedByUserId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.serviceLine = try container.decode(ServiceLineEnum.self, forKey: .serviceLine)
        self.taskListsToApplyAtOrderCreation = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderCreation)
        self.taskListsToApplyAtOrderStaging = try container.decodeIfPresent([TaskListToApplyToOrder1].self, forKey: .taskListsToApplyAtOrderStaging)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.counterpartyOffChrtOrgDataId, forKey: .counterpartyOffChrtOrgDataId)
        try container.encodeIfPresent(self.counterpartyOrgId, forKey: .counterpartyOrgId)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.lastEditedByUserId, forKey: .lastEditedByUserId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.serviceLine, forKey: .serviceLine)
        try container.encodeIfPresent(self.taskListsToApplyAtOrderCreation, forKey: .taskListsToApplyAtOrderCreation)
        try container.encodeIfPresent(self.taskListsToApplyAtOrderStaging, forKey: .taskListsToApplyAtOrderStaging)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case counterpartyOffChrtOrgDataId = "counterparty_off_chrt_org_data_id"
        case counterpartyOrgId = "counterparty_org_id"
        case createdAtTimestamp = "created_at_timestamp"
        case createdByUserId = "created_by_user_id"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case lastEditedByUserId = "last_edited_by_user_id"
        case ownedByOrgId = "owned_by_org_id"
        case schemaVersion = "schema_version"
        case serviceLine = "service_line"
        case taskListsToApplyAtOrderCreation = "task_lists_to_apply_at_order_creation"
        case taskListsToApplyAtOrderStaging = "task_lists_to_apply_at_order_staging"
    }
}