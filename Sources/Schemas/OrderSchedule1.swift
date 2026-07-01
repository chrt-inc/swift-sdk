import Foundation

public struct OrderSchedule1: Codable, Hashable, Sendable {
    public let id: String
    public let createdAtTimestamp: Date
    public let description: String?
    public let intendedStatus: OrderScheduleStatusEnum1?
    public let lastEditedAtTimestamp: Date
    public let name: String
    public let orchestratorScheduleId: String?
    public let orchestratorSchedulePaused: Bool?
    public let orderManifest: OrderManifest1?
    /// Must be a string starting with `org_`
    public let ownedByOrgId: String
    public let ownedByOrgType: OrgTypeEnum
    /// Must be a string starting with `user_`
    public let ownedByUserId: String
    public let scheduleSpec: OrderScheduleSpec1?
    public let schemaVersion: Int
    public let shortId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        createdAtTimestamp: Date,
        description: String? = nil,
        intendedStatus: OrderScheduleStatusEnum1? = nil,
        lastEditedAtTimestamp: Date,
        name: String,
        orchestratorScheduleId: String? = nil,
        orchestratorSchedulePaused: Bool? = nil,
        orderManifest: OrderManifest1? = nil,
        ownedByOrgId: String,
        ownedByOrgType: OrgTypeEnum,
        ownedByUserId: String,
        scheduleSpec: OrderScheduleSpec1? = nil,
        schemaVersion: Int,
        shortId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.createdAtTimestamp = createdAtTimestamp
        self.description = description
        self.intendedStatus = intendedStatus
        self.lastEditedAtTimestamp = lastEditedAtTimestamp
        self.name = name
        self.orchestratorScheduleId = orchestratorScheduleId
        self.orchestratorSchedulePaused = orchestratorSchedulePaused
        self.orderManifest = orderManifest
        self.ownedByOrgId = ownedByOrgId
        self.ownedByOrgType = ownedByOrgType
        self.ownedByUserId = ownedByUserId
        self.scheduleSpec = scheduleSpec
        self.schemaVersion = schemaVersion
        self.shortId = shortId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.createdAtTimestamp = try container.decode(Date.self, forKey: .createdAtTimestamp)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.intendedStatus = try container.decodeIfPresent(OrderScheduleStatusEnum1.self, forKey: .intendedStatus)
        self.lastEditedAtTimestamp = try container.decode(Date.self, forKey: .lastEditedAtTimestamp)
        self.name = try container.decode(String.self, forKey: .name)
        self.orchestratorScheduleId = try container.decodeIfPresent(String.self, forKey: .orchestratorScheduleId)
        self.orchestratorSchedulePaused = try container.decodeIfPresent(Bool.self, forKey: .orchestratorSchedulePaused)
        self.orderManifest = try container.decodeIfPresent(OrderManifest1.self, forKey: .orderManifest)
        self.ownedByOrgId = try container.decode(String.self, forKey: .ownedByOrgId)
        self.ownedByOrgType = try container.decode(OrgTypeEnum.self, forKey: .ownedByOrgType)
        self.ownedByUserId = try container.decode(String.self, forKey: .ownedByUserId)
        self.scheduleSpec = try container.decodeIfPresent(OrderScheduleSpec1.self, forKey: .scheduleSpec)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shortId = try container.decode(String.self, forKey: .shortId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.createdAtTimestamp, forKey: .createdAtTimestamp)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encodeIfPresent(self.intendedStatus, forKey: .intendedStatus)
        try container.encode(self.lastEditedAtTimestamp, forKey: .lastEditedAtTimestamp)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.orchestratorScheduleId, forKey: .orchestratorScheduleId)
        try container.encodeIfPresent(self.orchestratorSchedulePaused, forKey: .orchestratorSchedulePaused)
        try container.encodeIfPresent(self.orderManifest, forKey: .orderManifest)
        try container.encode(self.ownedByOrgId, forKey: .ownedByOrgId)
        try container.encode(self.ownedByOrgType, forKey: .ownedByOrgType)
        try container.encode(self.ownedByUserId, forKey: .ownedByUserId)
        try container.encodeIfPresent(self.scheduleSpec, forKey: .scheduleSpec)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.shortId, forKey: .shortId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case createdAtTimestamp = "created_at_timestamp"
        case description
        case intendedStatus = "intended_status"
        case lastEditedAtTimestamp = "last_edited_at_timestamp"
        case name
        case orchestratorScheduleId = "orchestrator_schedule_id"
        case orchestratorSchedulePaused = "orchestrator_schedule_paused"
        case orderManifest = "order_manifest"
        case ownedByOrgId = "owned_by_org_id"
        case ownedByOrgType = "owned_by_org_type"
        case ownedByUserId = "owned_by_user_id"
        case scheduleSpec = "schedule_spec"
        case schemaVersion = "schema_version"
        case shortId = "short_id"
    }
}