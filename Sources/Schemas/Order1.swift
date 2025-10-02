import Foundation

public struct Order1: Codable, Hashable, Sendable {
    public let schemaVersion: Int
    public let id: String
    public let shortId: String
    public let orderCreatedByType: OrderCreatedByTypeEnum
    public let orderDispatchType: OrderDispatchTypeEnum
    public let transportType: TransportTypeEnum
    /// Must be a string starting with `org_`
    public let createdByOrgId: String
    /// Must be a string starting with `user_`
    public let createdByUserId: String
    public let draftStartedAt: Date
    public let taskGroupIds: Nullable<[String]>?
    /// Must be a string starting with `org_`
    public let shipperOrgId: Nullable<String>?
    /// Must be a string starting with `user_`
    public let shipperUserId: Nullable<String>?
    public let offChrtShipperOrgInfoId: Nullable<String>?
    public let orderLevelExpensesIds: Nullable<[String]>?
    public let orderLevelReceivablesLineItems: Nullable<[LineItem1]>?
    public let status: OrderStatusEnum1?
    public let orderCancelled: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int,
        id: String,
        shortId: String,
        orderCreatedByType: OrderCreatedByTypeEnum,
        orderDispatchType: OrderDispatchTypeEnum,
        transportType: TransportTypeEnum,
        createdByOrgId: String,
        createdByUserId: String,
        draftStartedAt: Date,
        taskGroupIds: Nullable<[String]>? = nil,
        shipperOrgId: Nullable<String>? = nil,
        shipperUserId: Nullable<String>? = nil,
        offChrtShipperOrgInfoId: Nullable<String>? = nil,
        orderLevelExpensesIds: Nullable<[String]>? = nil,
        orderLevelReceivablesLineItems: Nullable<[LineItem1]>? = nil,
        status: OrderStatusEnum1? = nil,
        orderCancelled: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.shortId = shortId
        self.orderCreatedByType = orderCreatedByType
        self.orderDispatchType = orderDispatchType
        self.transportType = transportType
        self.createdByOrgId = createdByOrgId
        self.createdByUserId = createdByUserId
        self.draftStartedAt = draftStartedAt
        self.taskGroupIds = taskGroupIds
        self.shipperOrgId = shipperOrgId
        self.shipperUserId = shipperUserId
        self.offChrtShipperOrgInfoId = offChrtShipperOrgInfoId
        self.orderLevelExpensesIds = orderLevelExpensesIds
        self.orderLevelReceivablesLineItems = orderLevelReceivablesLineItems
        self.status = status
        self.orderCancelled = orderCancelled
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decode(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.shortId = try container.decode(String.self, forKey: .shortId)
        self.orderCreatedByType = try container.decode(OrderCreatedByTypeEnum.self, forKey: .orderCreatedByType)
        self.orderDispatchType = try container.decode(OrderDispatchTypeEnum.self, forKey: .orderDispatchType)
        self.transportType = try container.decode(TransportTypeEnum.self, forKey: .transportType)
        self.createdByOrgId = try container.decode(String.self, forKey: .createdByOrgId)
        self.createdByUserId = try container.decode(String.self, forKey: .createdByUserId)
        self.draftStartedAt = try container.decode(Date.self, forKey: .draftStartedAt)
        self.taskGroupIds = try container.decodeNullableIfPresent([String].self, forKey: .taskGroupIds)
        self.shipperOrgId = try container.decodeNullableIfPresent(String.self, forKey: .shipperOrgId)
        self.shipperUserId = try container.decodeNullableIfPresent(String.self, forKey: .shipperUserId)
        self.offChrtShipperOrgInfoId = try container.decodeNullableIfPresent(String.self, forKey: .offChrtShipperOrgInfoId)
        self.orderLevelExpensesIds = try container.decodeNullableIfPresent([String].self, forKey: .orderLevelExpensesIds)
        self.orderLevelReceivablesLineItems = try container.decodeNullableIfPresent([LineItem1].self, forKey: .orderLevelReceivablesLineItems)
        self.status = try container.decodeIfPresent(OrderStatusEnum1.self, forKey: .status)
        self.orderCancelled = try container.decodeIfPresent(Bool.self, forKey: .orderCancelled)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.shortId, forKey: .shortId)
        try container.encode(self.orderCreatedByType, forKey: .orderCreatedByType)
        try container.encode(self.orderDispatchType, forKey: .orderDispatchType)
        try container.encode(self.transportType, forKey: .transportType)
        try container.encode(self.createdByOrgId, forKey: .createdByOrgId)
        try container.encode(self.createdByUserId, forKey: .createdByUserId)
        try container.encode(self.draftStartedAt, forKey: .draftStartedAt)
        try container.encodeNullableIfPresent(self.taskGroupIds, forKey: .taskGroupIds)
        try container.encodeNullableIfPresent(self.shipperOrgId, forKey: .shipperOrgId)
        try container.encodeNullableIfPresent(self.shipperUserId, forKey: .shipperUserId)
        try container.encodeNullableIfPresent(self.offChrtShipperOrgInfoId, forKey: .offChrtShipperOrgInfoId)
        try container.encodeNullableIfPresent(self.orderLevelExpensesIds, forKey: .orderLevelExpensesIds)
        try container.encodeNullableIfPresent(self.orderLevelReceivablesLineItems, forKey: .orderLevelReceivablesLineItems)
        try container.encodeIfPresent(self.status, forKey: .status)
        try container.encodeIfPresent(self.orderCancelled, forKey: .orderCancelled)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion = "schema_version"
        case id = "_id"
        case shortId = "short_id"
        case orderCreatedByType = "order_created_by_type"
        case orderDispatchType = "order_dispatch_type"
        case transportType = "transport_type"
        case createdByOrgId = "created_by_org_id"
        case createdByUserId = "created_by_user_id"
        case draftStartedAt = "draft_started_at"
        case taskGroupIds = "task_group_ids"
        case shipperOrgId = "shipper_org_id"
        case shipperUserId = "shipper_user_id"
        case offChrtShipperOrgInfoId = "off_chrt_shipper_org_info_id"
        case orderLevelExpensesIds = "order_level_expenses_ids"
        case orderLevelReceivablesLineItems = "order_level_receivables_line_items"
        case status
        case orderCancelled = "order_cancelled"
    }
}