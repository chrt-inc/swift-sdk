import Foundation

public struct OrderSchedule1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let name: String
    public let description: String?
    public let orderManifest: OrderManifest1?
    public let scheduleSpec: OrderScheduleSpec1?
    public let id: String
    /// Must be a string starting with `user_`
    public let ownedByUserId: String
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let ownedByOrgType: OrgTypeEnum
    public let createdAtTimestamp: Date
    public let lastEditedAtTimestamp: Date
    public let intendedStatus: OrderScheduleStatusEnum1?
    public let orchestratorScheduleId: String?
    public let orchestratorSchedulePaused: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        name: String,
        description: String? = nil,
        orderManifest: OrderManifest1? = nil,
        scheduleSpec: OrderScheduleSpec1? = nil,
        id: String,
        ownedByUserId: String,
        ownedByOrgId: String,
        ownedByOrgType: OrgTypeEnum,
        createdAtTimestamp: Date,
        lastEditedAtTimestamp: Date,
        intendedStatus: OrderScheduleStatusEnum1? = nil,
        orchestratorScheduleId: String? = nil,
        orchestratorSchedulePaused: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.name = name
        self.description = description
        self.orderManifest = orderManifest
        self.scheduleSpec = scheduleSpec
        self.id = id
        self.ownedByUserId = ownedByUserId
        self.ownedByOrgId = ownedByOrgId
        self.ownedByOrgType = ownedByOrgType
        self.createdAtTimestamp = createdAtTimestamp
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.intendedStatus = intendedStatus
        self.orchestratorScheduleId = orchestratorScheduleId
        self.orchestratorSchedulePaused = orchestratorSchedulePaused
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.name = try container.decode(String.self, forKey: .name)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.orderManifest = try container.decodeIfPresent(OrderManifest1.self, forKey: .orderManifest)
        self.scheduleSpec = try container.decodeIfPresent(OrderScheduleSpec1.self, forKey: .scheduleSpec)
        self.id = try container.decode(String.self, forKey: .id)
        self.ownedByUserId = try container.decode(String.self, forKey: .ownedByUserId)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.ownedByOrgType = try container.decode(OrgTypeEnum.self, forKey: .ownedByOrgType)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.intendedStatus = try container.decodeIfPresent(OrderScheduleStatusEnum1.self, forKey: .intendedStatus)
        self.orchestratorScheduleId = try container.decodeIfPresent(String.self, forKey: .orchestratorScheduleId)
        self.orchestratorSchedulePaused = try container.decodeIfPresent(Bool.self, forKey: .orchestratorSchedulePaused)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.orderManifest, forKey: .orderManifest)
        try container.encodeIfPresent(self.scheduleSpec, forKey: .scheduleSpec)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.ownedByUserId, forKey: .ownedByUserId)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.ownedByOrgType, forKey: .ownedByOrgType)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encodeIfPresent(self.intendedStatus, forKey: .intendedStatus)
        try container.encodeIfPresent(self.orchestratorScheduleId, forKey: .orchestratorScheduleId)
        try container.encodeIfPresent(self.orchestratorSchedulePaused, forKey: .orchestratorSchedulePaused)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case name
        case description
        case orderManifest = "order_manifest"
        case scheduleSpec = "schedule_spec"
        case id = "_id"
        case ownedByUserId = "owned_by_user_id"
        case ownedByOrgId = "owned_by_org_id"
        case ownedByOrgType = "owned_by_org_type"
        case createdAtTimestamp = "created_at_timestamp"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case intendedStatus = "intended_status"
        case orchestratorScheduleId = "orchestrator_schedule_id"
        case orchestratorSchedulePaused = "orchestrator_schedule_paused"
    }
}