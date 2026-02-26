import Foundation

public struct Order1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    public let shortId: String
    public let taskGroupIds: [String]?
    public let createdByOrgType: OrgTypeEnum
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    /// Must be a string starting with `org_`
    public let forwarderOrgId: String?
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let offChrtShipperOrgId: String?
    public let status: OrderStatusEnum1?
    public let draftStartedAtTimestamp: Date
    public let stagedAtTimestamp: Date?
    public let inProgressAtTimestamp: Date?
    public let completedAtTimestamp: Date?
    public let exceptionAtTimestamp: Date?
    public let orderCancelled: Bool?
    public let orderCancelledAtTimestamp: Date?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        shortId: String,
        taskGroupIds: [String]? = nil,
        createdByOrgType: OrgTypeEnum,
        createdByOrgId: String,
        createdByUserId: String,
        forwarderOrgId: String? = nil,
        shipperOrgId: String? = nil,
        offChrtShipperOrgId: String? = nil,
        status: OrderStatusEnum1? = nil,
        draftStartedAtTimestamp: Date,
        stagedAtTimestamp: Date? = nil,
        inProgressAtTimestamp: Date? = nil,
        completedAtTimestamp: Date? = nil,
        exceptionAtTimestamp: Date? = nil,
        orderCancelled: Bool? = nil,
        orderCancelledAtTimestamp: Date? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.shortId = shortId
        self.taskGroupIds = taskGroupIds
        self.createdByOrgType = createdByOrgType
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.forwarderOrgId = forwarderOrgId
        self.shipperOrgId = shipperOrgId
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.status = status
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.stagedAtTimestamp = stagedAtTimestamp
        self.inProgressAtTimestamp = inProgressAtTimestamp
        self.completedAtTimestamp = completedAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.orderCancelled = orderCancelled
        self.orderCancelledAtTimestamp = orderCancelledAtTimestamp
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.shortId = try container.decode(String.self, forKey: .shortId)
        self.taskGroupIds = try container.decodeIfPresent([String].self, forKey: .taskGroupIds)
        self.createdByOrgType = try container.decode(OrgTypeEnum.self, forKey: .createdByOrgType)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.forwarderOrgId = try container.decodeIfPresent(String.self, forKey: .forwarderOrgId)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.status = try container.decodeIfPresent(OrderStatusEnum1.self, forKey: .status)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.inProgressAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inProgressAtTimestamp)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.orderCancelled = try container.decodeIfPresent(Bool.self, forKey: .orderCancelled)
        self.orderCancelledAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .orderCancelledAtTimestamp)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.shortId, forKey: .shortId)
        try container.encodeIfPresent(self.taskGroupIds, forKey: .taskGroupIds)
        try container.encode(self.createdByOrgType, forKey: .createdByOrgType)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encodeIfPresent(self.forwarderOrgId, forKey: .forwarderOrgId)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.inProgressAtTimestamp, forKey: .inProgressAtTimestamp)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encodeIfPresent(self.orderCancelled, forKey: .orderCancelled)
        try container.encodeIfPresent(self.orderCancelledAtTimestamp, forKey: .orderCancelledAtTimestamp)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case shortId = "short_id"
        case taskGroupIds = "task_group_ids"
        case createdByOrgType = "created_by_org_type"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case forwarderOrgId = "forwarder_org_id"
        case shipperOrgId = "shipper_org_id"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case status
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case stagedAtTimestamp = "staged_at_timestamp"
        case inProgressAtTimestamp = "in_progress_at_timestamp"
        case completedAtTimestamp = "completed_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case orderCancelled = "order_cancelled"
        case orderCancelledAtTimestamp = "order_cancelled_at_timestamp"
    }
}