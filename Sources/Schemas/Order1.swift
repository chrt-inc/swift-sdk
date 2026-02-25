import Foundation

public struct Order1: Codable, Hashable, Sendable {
    public let id: String
    public let completedAtTimestamp: Date?
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    public let createdByOrgType: OrgTypeEnum
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let draftStartedAtTimestamp: Date
    public let exceptionAtTimestamp: Date?
    /// Must be a string starting with `org_`
    public let forwarderOrgId: String?
    public let inProgressAtTimestamp: Date?
    public let offChrtShipperOrgId: String?
    public let orderCancelled: Bool?
    public let orderCancelledAtTimestamp: Date?
    public let schemaVersion: Int
    /// Must be a string starting with `org_`
    public let shipperOrgId: String?
    public let shortId: String
    public let stagedAtTimestamp: Date?
    public let status: OrderStatusEnum1?
    public let taskGroupIds: [String]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        completedAtTimestamp: Date? = nil,
        createdByOrgId: String,
        createdByOrgType: OrgTypeEnum,
        createdByUserId: String,
        draftStartedAtTimestamp: Date,
        exceptionAtTimestamp: Date? = nil,
        forwarderOrgId: String? = nil,
        inProgressAtTimestamp: Date? = nil,
        offChrtShipperOrgId: String? = nil,
        orderCancelled: Bool? = nil,
        orderCancelledAtTimestamp: Date? = nil,
        schemaVersion: Int,
        shipperOrgId: String? = nil,
        shortId: String,
        stagedAtTimestamp: Date? = nil,
        status: OrderStatusEnum1? = nil,
        taskGroupIds: [String]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.completedAtTimestamp = completedAtTimestamp
        self.createdByOrgId = createdByOrgId
        self.createdByOrgType = createdByOrgType
        self.createdByUserId = createdByUserId
        self.draftStartedAtTimestamp = draftStartedAtTimestamp
        self.exceptionAtTimestamp = exceptionAtTimestamp
        self.forwarderOrgId = forwarderOrgId
        self.inProgressAtTimestamp = inProgressAtTimestamp
        self.offChrtShipperOrgId = offChrtShipperOrgId
        self.orderCancelled = orderCancelled
        self.orderCancelledAtTimestamp = orderCancelledAtTimestamp
        self.schemaVersion = schemaVersion
        self.shipperOrgId = shipperOrgId
        self.shortId = shortId
        self.stagedAtTimestamp = stagedAtTimestamp
        self.status = status
        self.taskGroupIds = taskGroupIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.completedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .completedAtTimestamp)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByOrgType = try container.decode(OrgTypeEnum.self, forKey: .createdByOrgType)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.draftStartedAtTimestamp = try container.decode(Date.self, forKey: .draftStartedAtTimestamp)
        self.exceptionAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .exceptionAtTimestamp)
        self.forwarderOrgId = try container.decodeIfPresent(String.self, forKey: .forwarderOrgId)
        self.inProgressAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .inProgressAtTimestamp)
        self.offChrtShipperOrgId = try container.decodeIfPresent(String.self, forKey: .offChrtShipperOrgId)
        self.orderCancelled = try container.decodeIfPresent(Bool.self, forKey: .orderCancelled)
        self.orderCancelledAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .orderCancelledAtTimestamp)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.shipperOrgId = try container.decodeIfPresent(String.self, forKey: .shipperOrgId)
        self.shortId = try container.decode(String.self, forKey: .shortId)
        self.stagedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .stagedAtTimestamp)
        self.status = try container.decodeIfPresent(OrderStatusEnum1.self, forKey: .status)
        self.taskGroupIds = try container.decodeIfPresent([String].self, forKey: .taskGroupIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encodeIfPresent(self.completedAtTimestamp, forKey: .completedAtTimestamp)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByOrgType, forKey: .createdByOrgType)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.draftStartedAtTimestamp, forKey: .draftStartedAtTimestamp)
        try container.encodeIfPresent(self.exceptionAtTimestamp, forKey: .exceptionAtTimestamp)
        try container.encodeIfPresent(self.forwarderOrgId, forKey: .forwarderOrgId)
        try container.encodeIfPresent(self.inProgressAtTimestamp, forKey: .inProgressAtTimestamp)
        try container.encodeIfPresent(self.offChrtShipperOrgId, forKey: .offChrtShipperOrgId)
        try container.encodeIfPresent(self.orderCancelled, forKey: .orderCancelled)
        try container.encodeIfPresent(self.orderCancelledAtTimestamp, forKey: .orderCancelledAtTimestamp)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encodeIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encode(self.shortId, forKey: .shortId)
        try container.encodeIfPresent(self.stagedAtTimestamp, forKey: .stagedAtTimestamp)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.taskGroupIds, forKey: .taskGroupIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case completedAtTimestamp = "completed_at_timestamp"
        case createdByOrgId = "created_by_org_id"
        case createdByOrgType = "created_by_org_type"
        case createdByUserId = "created_by_user_id"
        case draftStartedAtTimestamp = "draft_started_at_timestamp"
        case exceptionAtTimestamp = "exception_at_timestamp"
        case forwarderOrgId = "forwarder_org_id"
        case inProgressAtTimestamp = "in_progress_at_timestamp"
        case offChrtShipperOrgId = "off_chrt_shipper_org_id"
        case orderCancelled = "order_cancelled"
        case orderCancelledAtTimestamp = "order_cancelled_at_timestamp"
        case schemaVersion = "schema_version"
        case shipperOrgId = "shipper_org_id"
        case shortId = "short_id"
        case stagedAtTimestamp = "staged_at_timestamp"
        case status
        case taskGroupIds = "task_group_ids"
    }
}